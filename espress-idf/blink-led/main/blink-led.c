#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <inttypes.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/queue.h"
#include "driver/gpio.h"

#define GPIO_OUTPUT_IO_21    21
#define GPIO_OUTPUT_PIN_SEL  (1<<GPIO_OUTPUT_IO_21)

static const BaseType_t app_cpu = 1;

// Create a thread/task
void toggle_led(void *parameters)
{
  int cnt = 0;
  printf("Toggle LED task started!\n"); // Log task start
    while(1){
      printf("cnt: %d\n", cnt++);
      vTaskDelay(1000/portTICK_PERIOD_MS);
      gpio_set_level(GPIO_OUTPUT_IO_21, cnt%2);
    }
}

void app_main(void)
{
    //zero-initialize the config structure.
    gpio_config_t io_conf = {
      .intr_type = GPIO_INTR_DISABLE,
      .mode = GPIO_MODE_OUTPUT,
      .pin_bit_mask = GPIO_OUTPUT_PIN_SEL,
      .pull_down_en = GPIO_PULLDOWN_DISABLE,
      .pull_up_en = GPIO_PULLUP_DISABLE
    };
    gpio_config(&io_conf);
    xTaskCreatePinnedToCore(
      toggle_led,
      "toggle_led",
      2048,
      NULL,
      1,
      NULL,
      app_cpu
    );
}
