
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rmt_mode_t ;
typedef scalar_t__ rmt_channel_t ;
typedef size_t gpio_num_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 scalar_t__ GPIO_IS_VALID_GPIO (size_t) ;
 scalar_t__ GPIO_IS_VALID_OUTPUT_GPIO (size_t) ;
 int GPIO_MODE_INPUT ;
 int GPIO_MODE_OUTPUT ;
 int * GPIO_PIN_MUX_REG ;
 int PIN_FUNC_GPIO ;
 int PIN_FUNC_SELECT (int ,int ) ;
 int RMT_CHANNEL_ERROR_STR ;
 scalar_t__ RMT_CHANNEL_MAX ;
 int RMT_CHECK (int,int ,int ) ;
 int RMT_GPIO_ERROR_STR ;
 int RMT_MODE_ERROR_STR ;
 scalar_t__ RMT_MODE_MAX ;
 scalar_t__ RMT_MODE_RX ;
 scalar_t__ RMT_MODE_TX ;
 scalar_t__ RMT_SIG_IN0_IDX ;
 scalar_t__ RMT_SIG_OUT0_IDX ;
 int gpio_matrix_in (size_t,scalar_t__,int ) ;
 int gpio_matrix_out (size_t,scalar_t__,int ,int ) ;
 int gpio_set_direction (size_t,int ) ;

esp_err_t rmt_set_pin(rmt_channel_t channel, rmt_mode_t mode, gpio_num_t gpio_num)
{
    RMT_CHECK(channel < RMT_CHANNEL_MAX, RMT_CHANNEL_ERROR_STR, ESP_ERR_INVALID_ARG);
    RMT_CHECK(mode < RMT_MODE_MAX, RMT_MODE_ERROR_STR, ESP_ERR_INVALID_ARG);
    RMT_CHECK(((GPIO_IS_VALID_GPIO(gpio_num) && (mode == RMT_MODE_RX)) || (GPIO_IS_VALID_OUTPUT_GPIO(gpio_num) && (mode == RMT_MODE_TX))),
        RMT_GPIO_ERROR_STR, ESP_ERR_INVALID_ARG);

    PIN_FUNC_SELECT(GPIO_PIN_MUX_REG[gpio_num], PIN_FUNC_GPIO);
    if(mode == RMT_MODE_TX) {
        gpio_set_direction(gpio_num, GPIO_MODE_OUTPUT);
        gpio_matrix_out(gpio_num, RMT_SIG_OUT0_IDX + channel, 0, 0);
    } else {
        gpio_set_direction(gpio_num, GPIO_MODE_INPUT);
        gpio_matrix_in(gpio_num, RMT_SIG_IN0_IDX + channel, 0);
    }
    return ESP_OK;
}
