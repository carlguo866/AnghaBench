
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int touch_pad_conn_type_t ;
typedef int esp_err_t ;
struct TYPE_3__ {int touch_inactive_connection; } ;
struct TYPE_4__ {TYPE_1__ touch_scan_ctrl; } ;


 int ESP_OK ;
 TYPE_2__ RTCCNTL ;
 int RTC_TOUCH_ENTER_CRITICAL () ;
 int RTC_TOUCH_EXIT_CRITICAL () ;

esp_err_t touch_pad_set_inactive_connect(touch_pad_conn_type_t type)
{
    RTC_TOUCH_ENTER_CRITICAL();
    RTCCNTL.touch_scan_ctrl.touch_inactive_connection = type;
    RTC_TOUCH_EXIT_CRITICAL();
    return ESP_OK;
}
