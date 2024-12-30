#include<Arduino.h>
#include"freertos/FreeRTOS.h"
#include"freertos/task.h"

#if CONFIG_FREERTOS_UNICORE
  static const BaseType_t app_cpu = 0;
#else
  static const BaseType_t app_cpu = 1;
#endif

// settings
static const uint8_t msg_queue_len =  5;

// Globals
static QueueHandle_t msg_queue; 

// Task: wait for item on queue and print it
void printMessages(void *parameters){
  int item;
  // loop
  while(1){
    if (xQueueReceive(msg_queue, (void *)&item, 0) == pdTRUE){
      Serial.println(item);
    }
    vTaskDelay(1000/portTICK_PERIOD_MS);
  }
}

void setup() {
  Serial.begin(115200);
  vTaskDelay(1000/portTICK_PERIOD_MS);
  Serial.println();
  Serial.println("--FreeRTOS Queue Demo---");
  msg_queue = xQueueCreate(msg_queue_len, sizeof(int));

  // Start print task
  xTaskCreatePinnedToCore(printMessages,
                          "Print Messages",
                          1024,
                          NULL,
                          1,
                          NULL,
                          app_cpu
  );
}

void loop() {
  // put your main code here, to run repeatedly:
  static int num = 0;
  if(xQueueSend(msg_queue, &num, 10) != pdTRUE){
    Serial.println("Queue full");
  }
  num++;
  vTaskDelay(1000/portTICK_PERIOD_MS);
}
