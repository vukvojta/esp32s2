#include <stdio.h>
#include <cstring>
#include "driver/gpio.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

const gpio_num_t led_pin=static_cast<gpio_num_t>(13);

extern "C" void app_main(void)
{
    gpio_reset_pin(led_pin);
    gpio_set_direction(led_pin, GPIO_MODE_OUTPUT);
    bool on=0;
    while (true){
        on=!on;
        gpio_set_level(led_pin, on);
        printf("Hello World!\n");
        vTaskDelay(1000/ portTICK_PERIOD_MS);
    }
}
