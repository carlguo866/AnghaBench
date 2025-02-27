
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_15__ {int filter_ticks_thresh; scalar_t__ idle_threshold; int filter_en; } ;
struct TYPE_10__ {scalar_t__ carrier_freq_hz; int carrier_en; scalar_t__ carrier_duty_percent; int carrier_level; int idle_level; int idle_output_en; int loop_en; } ;
struct TYPE_16__ {int rmt_mode; int channel; int gpio_num; int mem_block_num; int clk_div; TYPE_6__ rx_config; TYPE_1__ tx_config; } ;
typedef TYPE_7__ rmt_config_t ;
typedef int esp_err_t ;
struct TYPE_17__ {TYPE_5__* conf_ch; TYPE_2__* carrier_duty_ch; } ;
struct TYPE_13__ {int mem_rd_rst; int mem_wr_rst; int idle_out_lv; int rx_filter_thres; int rx_filter_en; int mem_owner; void* ref_always_on; int idle_out_en; int tx_conti_mode; } ;
struct TYPE_12__ {int div_cnt; int mem_size; int carrier_en; int carrier_out_lv; scalar_t__ idle_thres; } ;
struct TYPE_14__ {TYPE_4__ conf1; TYPE_3__ conf0; } ;
struct TYPE_11__ {scalar_t__ low; scalar_t__ high; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_LOGD (int ,char*,int,int,scalar_t__,int,scalar_t__,int) ;
 int ESP_OK ;
 int GPIO_IS_VALID_GPIO (int) ;
 int PERIPH_RMT_MODULE ;
 TYPE_9__ RMT ;
 void* RMT_BASECLK_APB ;
 char* RMT_CHANNEL_ERROR_STR ;
 int RMT_CHANNEL_MAX ;
 int RMT_CHECK (int,char*,int ) ;
 char* RMT_CLK_DIV_ERROR_STR ;
 int RMT_DATA_MODE_MEM ;
 char* RMT_GPIO_ERROR_STR ;
 char* RMT_MEM_CNT_ERROR_STR ;
 int RMT_MEM_OWNER_RX ;
 int RMT_MEM_OWNER_TX ;
 int RMT_MODE_RX ;
 int RMT_MODE_TX ;
 scalar_t__ RMT_SOURCE_CLK (void*) ;
 int RMT_TAG ;
 int periph_module_enable (int ) ;
 int periph_module_reset (int ) ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 int rmt_set_data_mode (int ) ;
 int rmt_set_pin (int,int,int) ;
 int rmt_spinlock ;

esp_err_t rmt_config(const rmt_config_t* rmt_param)
{
    uint8_t mode = rmt_param->rmt_mode;
    uint8_t channel = rmt_param->channel;
    uint8_t gpio_num = rmt_param->gpio_num;
    uint8_t mem_cnt = rmt_param->mem_block_num;
    int clk_div = rmt_param->clk_div;
    uint32_t carrier_freq_hz = rmt_param->tx_config.carrier_freq_hz;
    bool carrier_en = rmt_param->tx_config.carrier_en;
    RMT_CHECK(channel < RMT_CHANNEL_MAX, RMT_CHANNEL_ERROR_STR, ESP_ERR_INVALID_ARG);
    RMT_CHECK(GPIO_IS_VALID_GPIO(gpio_num), RMT_GPIO_ERROR_STR, ESP_ERR_INVALID_ARG);
    RMT_CHECK((mem_cnt + channel <= 8 && mem_cnt > 0), RMT_MEM_CNT_ERROR_STR, ESP_ERR_INVALID_ARG);
    RMT_CHECK((clk_div > 0), RMT_CLK_DIV_ERROR_STR, ESP_ERR_INVALID_ARG);
    if (mode == RMT_MODE_TX) {
        RMT_CHECK((!carrier_en || carrier_freq_hz > 0), "RMT carrier frequency can't be zero", ESP_ERR_INVALID_ARG);
    }

    static bool rmt_enable = 0;
    if (rmt_enable == 0) {
        periph_module_reset(PERIPH_RMT_MODULE);
        rmt_enable = 1;
    }
    periph_module_enable(PERIPH_RMT_MODULE);

    RMT.conf_ch[channel].conf0.div_cnt = clk_div;

    rmt_set_data_mode(RMT_DATA_MODE_MEM);

    portENTER_CRITICAL(&rmt_spinlock);
    RMT.conf_ch[channel].conf1.mem_rd_rst = 1;
    RMT.conf_ch[channel].conf1.mem_wr_rst = 1;
    portEXIT_CRITICAL(&rmt_spinlock);

    if(mode == RMT_MODE_TX) {
        uint32_t rmt_source_clk_hz = 0;
        uint16_t carrier_duty_percent = rmt_param->tx_config.carrier_duty_percent;
        uint8_t carrier_level = rmt_param->tx_config.carrier_level;
        uint8_t idle_level = rmt_param->tx_config.idle_level;

        portENTER_CRITICAL(&rmt_spinlock);
        RMT.conf_ch[channel].conf1.tx_conti_mode = rmt_param->tx_config.loop_en;

        RMT.conf_ch[channel].conf0.mem_size = mem_cnt;
        RMT.conf_ch[channel].conf1.mem_owner = RMT_MEM_OWNER_TX;

        RMT.conf_ch[channel].conf1.ref_always_on = RMT_BASECLK_APB;
        rmt_source_clk_hz = RMT_SOURCE_CLK(RMT_BASECLK_APB);

        RMT.conf_ch[channel].conf1.idle_out_en = rmt_param->tx_config.idle_output_en;
        RMT.conf_ch[channel].conf1.idle_out_lv = idle_level;

        RMT.conf_ch[channel].conf0.carrier_en = carrier_en;
        if (carrier_en) {
            uint32_t duty_div, duty_h, duty_l;
            duty_div = rmt_source_clk_hz / carrier_freq_hz;
            duty_h = duty_div * carrier_duty_percent / 100;
            duty_l = duty_div - duty_h;
            RMT.conf_ch[channel].conf0.carrier_out_lv = carrier_level;
            RMT.carrier_duty_ch[channel].high = duty_h;
            RMT.carrier_duty_ch[channel].low = duty_l;
        } else {
            RMT.conf_ch[channel].conf0.carrier_out_lv = 0;
            RMT.carrier_duty_ch[channel].high = 0;
            RMT.carrier_duty_ch[channel].low = 0;
        }
        portEXIT_CRITICAL(&rmt_spinlock);

        ESP_LOGD(RMT_TAG, "Rmt Tx Channel %u|Gpio %u|Sclk_Hz %u|Div %u|Carrier_Hz %u|Duty %u",
                 channel, gpio_num, rmt_source_clk_hz, clk_div, carrier_freq_hz, carrier_duty_percent);

    }
    else if(RMT_MODE_RX == mode) {
        uint8_t filter_cnt = rmt_param->rx_config.filter_ticks_thresh;
        uint16_t threshold = rmt_param->rx_config.idle_threshold;

        portENTER_CRITICAL(&rmt_spinlock);

        RMT.conf_ch[channel].conf1.ref_always_on = RMT_BASECLK_APB;
        uint32_t rmt_source_clk_hz = RMT_SOURCE_CLK(RMT_BASECLK_APB);

        RMT.conf_ch[channel].conf0.mem_size = mem_cnt;
        RMT.conf_ch[channel].conf1.mem_owner = RMT_MEM_OWNER_RX;

        RMT.conf_ch[channel].conf0.idle_thres = threshold;

        RMT.conf_ch[channel].conf1.rx_filter_thres = filter_cnt;
        RMT.conf_ch[channel].conf1.rx_filter_en = rmt_param->rx_config.filter_en;
        portEXIT_CRITICAL(&rmt_spinlock);

        ESP_LOGD(RMT_TAG, "Rmt Rx Channel %u|Gpio %u|Sclk_Hz %u|Div %u|Thresold %u|Filter %u",
            channel, gpio_num, rmt_source_clk_hz, clk_div, threshold, filter_cnt);
    }
    rmt_set_pin(channel, mode, gpio_num);
    return ESP_OK;
}
