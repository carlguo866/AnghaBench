
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int esp_err_t ;
typedef int esp_ble_adv_params_t ;
struct TYPE_7__ {int act; int pid; int sig; } ;
typedef TYPE_2__ btc_msg_t ;
struct TYPE_6__ {int adv_params; } ;
struct TYPE_8__ {TYPE_1__ start_adv; } ;
typedef TYPE_3__ btc_ble_gap_args_t ;


 int BTC_GAP_BLE_ACT_START_ADV ;
 int BTC_PID_GAP_BLE ;
 int BTC_SIG_API_CALL ;
 scalar_t__ BT_STATUS_SUCCESS ;
 int ESP_BLUEDROID_STATUS_CHECK (int ) ;
 int ESP_BLUEDROID_STATUS_ENABLED ;
 int ESP_FAIL ;
 int ESP_OK ;
 scalar_t__ btc_transfer_context (TYPE_2__*,TYPE_3__*,int,int *) ;
 int memcpy (int *,int *,int) ;

esp_err_t esp_ble_gap_start_advertising(esp_ble_adv_params_t *adv_params)
{
    btc_msg_t msg;
    btc_ble_gap_args_t arg;

    ESP_BLUEDROID_STATUS_CHECK(ESP_BLUEDROID_STATUS_ENABLED);

    msg.sig = BTC_SIG_API_CALL;
    msg.pid = BTC_PID_GAP_BLE;
    msg.act = BTC_GAP_BLE_ACT_START_ADV;
    memcpy(&arg.start_adv.adv_params, adv_params, sizeof(esp_ble_adv_params_t));

    return (btc_transfer_context(&msg, &arg, sizeof(btc_ble_gap_args_t), ((void*)0)) == BT_STATUS_SUCCESS ? ESP_OK : ESP_FAIL);
}
