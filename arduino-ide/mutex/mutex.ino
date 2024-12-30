#include<Arduino.h>
#include"freertos/FreeRTOS.h"
#include"freertos/task.h"

#if CONFIG_FREERTOS_UNICORE
  static const BaseType_t app_cpu = 0;
#else
  static const BaseType_t app_cpu = 1;
#endif

// Globals
static int shared_var = 0;
static SemaphoreHandle_t mutex;

void incTask(void *parameter){
  int local_var;
  while(1){
    // Take mutex prior to critical section
    if(xSemaphoreTake(mutex, 0) == pdTRUE){
      local_var = shared_var;
      local_var++;
      vTaskDelay(random(100,500)/portTICK_PERIOD_MS);
      shared_var = local_var;
      // Give mutex after critical section
      xSemaphoreGive(mutex);
      Serial.println(shared_var);
    }else{

    }
  }
}

void setup() {
  // put your setup code here, to run once:
  //
  randomSeed(analogRead(0));
  Serial.begin(115200);
  vTaskDelay(1000/portTICK_PERIOD_MS);
  Serial.println();
  Serial.println("--FreeRTOS Queue Demo---");

  // create mutex before starting tasks
  mutex = xSemaphoreCreateMutex();
  // Task 1
  xTaskCreatePinnedToCore(incTask,
                          "Increment Task 1",
                          1024,
                          NULL,
                          1,
                          NULL,
                          app_cpu
  );
  // Task 2
  xTaskCreatePinnedToCore(incTask,
                          "Increment Task 2",
                          1024,
                          NULL,
                          2,
                          NULL,
                          app_cpu
  );
  vTaskDelete(NULL);
}

void loop() {
  // put your main code here, to run repeatedly:

}
