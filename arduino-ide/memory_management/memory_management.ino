#include<Arduino.h>
#include"freertos/FreeRTOS.h"
#include"freertos/task.h"

#if CONFIG_FREERTOS_UNICORE
  static const BaseType_t app_cpu = 0;
#else
  static const BaseType_t app_cpu = 1;
#endif

// task to use more size than heap allocated to the task
// the required stack size is about 1200 byte if less than this amount is used there is issue of
// cannary 
void testTask(void *parameters){
  while(1){
    int a = 1;
    int b[100];
    for(int i=0; i<100; i++){
      b[i] = a+i;
    }

    Serial.println(b[0]);
    // Print out remaining stack memory (words)
    Serial.print("High water mark (words): ");
    Serial.println(uxTaskGetStackHighWaterMark(NULL)); 

    // Print oout number of free heap memory bytes before malloc
    Serial.print("Heap before malloc (bytes): ");
    Serial.println(xPortGetFreeHeapSize());
    // regullar malloc is not thread safe in vanilla RTOS
    int *ptr = (int*)pvPortMalloc(1024 * sizeof(int));

    // 
    if(ptr == NULL){
    Serial.print("Not enough heap!");  
    }else{
      for(int i=0; i< 1024; i++){
        ptr[i] = 3;
      }
    }

    Serial.print("Heap after malloc (bytes): ");
    Serial.println(xPortGetFreeHeapSize());
    // delete heap memory 
    vPortFree(ptr);  

    // wait for a while
    vTaskDelay(100/portTICK_PERIOD_MS);
  }

}

void setup() {
  Serial.begin(115200);
  vTaskDelay(1000/portTICK_PERIOD_MS);
  Serial.println();
  Serial.println("--FreeRTOS Memory Demo---");

  xTaskCreatePinnedToCore(testTask,
                          "Test Task",
                          1024,
                          NULL,
                          1,
                          NULL,
                          app_cpu
  );
  vTaskDelete(NULL);
}

void loop() {
  // put your main code here, to run repeatedly:

}
