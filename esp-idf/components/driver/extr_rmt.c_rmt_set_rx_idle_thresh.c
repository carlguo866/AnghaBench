
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
typedef size_t rmt_channel_t ;
typedef int esp_err_t ;
struct TYPE_6__ {TYPE_2__* conf_ch; } ;
struct TYPE_4__ {int idle_thres; } ;
struct TYPE_5__ {TYPE_1__ conf0; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 TYPE_3__ RMT ;
 int RMT_CHANNEL_ERROR_STR ;
 size_t RMT_CHANNEL_MAX ;
 int RMT_CHECK (int,int ,int ) ;

esp_err_t rmt_set_rx_idle_thresh(rmt_channel_t channel, uint16_t thresh)
{
    RMT_CHECK(channel < RMT_CHANNEL_MAX, RMT_CHANNEL_ERROR_STR, ESP_ERR_INVALID_ARG);
    RMT.conf_ch[channel].conf0.idle_thres = thresh;
    return ESP_OK;
}
