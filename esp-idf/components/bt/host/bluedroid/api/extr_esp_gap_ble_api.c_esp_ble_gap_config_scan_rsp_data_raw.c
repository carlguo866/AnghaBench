
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int esp_err_t ;
struct TYPE_7__ {int act; int pid; int sig; } ;
typedef TYPE_2__ btc_msg_t ;
struct TYPE_6__ {scalar_t__ raw_scan_rsp_len; int * raw_scan_rsp; } ;
struct TYPE_8__ {TYPE_1__ cfg_scan_rsp_data_raw; } ;
typedef TYPE_3__ btc_ble_gap_args_t ;


 int BTC_GAP_BLE_ACT_CFG_SCAN_RSP_DATA_RAW ;
 int BTC_PID_GAP_BLE ;
 int BTC_SIG_API_CALL ;
 scalar_t__ BT_STATUS_SUCCESS ;
 scalar_t__ ESP_BLE_SCAN_RSP_DATA_LEN_MAX ;
 int ESP_BLUEDROID_STATUS_CHECK (int ) ;
 int ESP_BLUEDROID_STATUS_ENABLED ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_FAIL ;
 int ESP_OK ;
 int btc_gap_ble_arg_deep_copy ;
 scalar_t__ btc_transfer_context (TYPE_2__*,TYPE_3__*,int,int ) ;

esp_err_t esp_ble_gap_config_scan_rsp_data_raw(uint8_t *raw_data, uint32_t raw_data_len)
{
    btc_msg_t msg;
    btc_ble_gap_args_t arg;

    ESP_BLUEDROID_STATUS_CHECK(ESP_BLUEDROID_STATUS_ENABLED);

    if (raw_data == ((void*)0)
            || (raw_data_len <= 0 || raw_data_len > ESP_BLE_SCAN_RSP_DATA_LEN_MAX)) {
        return ESP_ERR_INVALID_ARG;
    }

    msg.sig = BTC_SIG_API_CALL;
    msg.pid = BTC_PID_GAP_BLE;
    msg.act = BTC_GAP_BLE_ACT_CFG_SCAN_RSP_DATA_RAW;
    arg.cfg_scan_rsp_data_raw.raw_scan_rsp = raw_data;
    arg.cfg_scan_rsp_data_raw.raw_scan_rsp_len = raw_data_len;

    return (btc_transfer_context(&msg, &arg, sizeof(btc_ble_gap_args_t), btc_gap_ble_arg_deep_copy) == BT_STATUS_SUCCESS ? ESP_OK : ESP_FAIL);

}
