#include <Arduino.h>        // For Arduino functions like pinMode, digitalWrite, etc.
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"  // For FreeRTOS APIs

#if CONFIG_FREERTOS_UNICORE
  static const BaseType_t app_cpu = 0;
#else
  static const BaseType_t app_cpu = 1;
#endif

static const int led_pin=21;

// task/thread: blink an LED
void toggleLED(void *parameter){
  while(1){
    digitalWrite(led_pin, HIGH);
    vTaskDelay(500/portTICK_PERIOD_MS);
    digitalWrite(led_pin, LOW);
    vTaskDelay(500/portTICK_PERIOD_MS);
  }
}

void setup() {
  // ocnfig pins
  pinMode(led_pin, OUTPUT);
  // task to run forever
  xTaskCreatePinnedToCore(
      toggleLED,
      "Toggle_LED",
      1024,                   //Stack size
      NULL,                   //parameter to pass ot function
      1,                      // Task prioirity(0 nto configMAX_PRIORITIES-1)
      NULL,
      app_cpu                 // RUN on one core for demo purpose only
  );
}

void loop() {
  // put your main code here, to run repeatedly:

}
