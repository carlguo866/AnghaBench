
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int esp_hf_btrh_cmd_t ;
typedef int bt_status_t ;
struct TYPE_3__ {int handle; } ;
struct TYPE_4__ {TYPE_1__ btc_hf_client_cb; } ;


 int BTA_HF_CLIENT_AT_CMD_BTRH ;
 int BTA_HfClientSendAT (int ,int ,int,int ,int *) ;
 int BT_STATUS_FAIL ;
 int BT_STATUS_SUCCESS ;
 int CHECK_HF_CLIENT_SLC_CONNECTED () ;



 TYPE_2__ hf_client_local_param ;

__attribute__((used)) static bt_status_t btc_hf_client_send_btrh_cmd(esp_hf_btrh_cmd_t btrh)
{
    CHECK_HF_CLIENT_SLC_CONNECTED();

    switch (btrh) {
    case 129:
        BTA_HfClientSendAT(hf_client_local_param.btc_hf_client_cb.handle, BTA_HF_CLIENT_AT_CMD_BTRH, 0, 0, ((void*)0));
        break;
    case 130:
        BTA_HfClientSendAT(hf_client_local_param.btc_hf_client_cb.handle, BTA_HF_CLIENT_AT_CMD_BTRH, 1, 0, ((void*)0));
        break;
    case 128:
        BTA_HfClientSendAT(hf_client_local_param.btc_hf_client_cb.handle, BTA_HF_CLIENT_AT_CMD_BTRH, 2, 0, ((void*)0));
        break;
    default:
        return BT_STATUS_FAIL;
    }

    return BT_STATUS_SUCCESS;
}
