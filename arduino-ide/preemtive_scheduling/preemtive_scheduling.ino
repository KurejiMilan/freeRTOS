#include <Arduino.h>        // For Arduino functions like pinMode, digitalWrite, etc.
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"  // For FreeRTOS APIs

#if CONFIG_FREERTOS_UNICORE
  static const BaseType_t app_cpu = 0;
#else
  static const BaseType_t app_cpu = 1;
#endif

const char msg[] = "Embedded controllers are everywhere.";

// Task handles
static TaskHandle_t task_1 = NULL;
static TaskHandle_t task_2 = NULL;

// Tasks
void startTask1(void *parameters){
  int msg_len = strlen(msg);
  while(1){
    for(int i =0; i < msg_len; i++){
      Serial.print(msg[i]);
    }
    Serial.println();
    vTaskDelay(1000/portTICK_PERIOD_MS);
  }
}

// Task:print to Serial Terminal with higher priority
void startTask2(void *parameters){
  while(1){
    Serial.print('*');
    vTaskDelay(100/portTICK_PERIOD_MS);
  }
}

void setup() {
  // Configure Serial for slow communication to watch preemtion process
  Serial.begin(300);
  vTaskDelay(1000/portTICK_PERIOD_MS);
  Serial.println();
  Serial.println("---FreeRTOS Task Demo---");

  // Print self priority for setup
  // i.e. setup and loop funciton are thread/task in itself
  Serial.print("Setup and loop task running on core");
  Serial.print(xPortGetCoreID());
  Serial.print(" with priority ");
  Serial.println(uxTaskPriorityGet(NULL));

  xTaskCreatePinnedToCore(
    startTask1,
    "Task 1",
    1024,
    NULL,
    1,
    &task_1,                             // attach it to task handle 1
    app_cpu                     
  );

  xTaskCreatePinnedToCore(
    startTask2,
    "Task 2",
    1024,
    NULL,
    2,
    &task_2,                             // attach it to task handle 1
    app_cpu                     
  );
}

void loop() {
  // Suspend the higher priority task for some intervals
  for(int i=0; i<3 ; i++){
    vTaskSuspend(task_2);
    vTaskDelay(2000/portTICK_PERIOD_MS);
    vTaskResume(task_2);
    vTaskDelay(2000/portTICK_PERIOD_MS);
  }

  // Delete the lower priority task
  if(task_1 != NULL){
    vTaskDelete(task_1);
    task_1 =NULL; 
  }
}
