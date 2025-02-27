
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ tBTM_STATUS ;
struct TYPE_4__ {scalar_t__ tot_scan_results_strg; } ;
typedef TYPE_1__ tBTM_BLE_VSC_CB ;
typedef int tBTM_BLE_REF_VALUE ;
struct TYPE_5__ {int (* supports_ble ) () ;} ;


 int BTM_BLE_BATCH_SCAN_DISABLE_EVT ;
 int BTM_BLE_BATCH_SCAN_SET_PARAMS ;
 int BTM_BLE_SCAN_DISABLE_CALLED ;
 int BTM_BleGetVendorCapabilities (TYPE_1__*) ;
 scalar_t__ BTM_CMD_STARTED ;
 scalar_t__ BTM_ERR_PROCESSING ;
 scalar_t__ BTM_ILLEGAL_VALUE ;
 scalar_t__ BTM_NO_RESOURCES ;
 int BTM_TRACE_ERROR (char*) ;
 int BTM_TRACE_EVENT (char*) ;
 int FALSE ;
 int btm_ble_batchscan_enq_op_q (int ,int ,int ,int ) ;
 scalar_t__ btm_ble_enable_disable_batchscan (int ) ;
 TYPE_2__* controller_get_interface () ;
 int stub1 () ;

tBTM_STATUS BTM_BleDisableBatchScan(tBTM_BLE_REF_VALUE ref_value)
{
    tBTM_STATUS status = BTM_NO_RESOURCES;
    tBTM_BLE_VSC_CB cmn_ble_vsc_cb;
    BTM_TRACE_EVENT (" BTM_BleDisableBatchScan");

    if (!controller_get_interface()->supports_ble()) {
        return BTM_ILLEGAL_VALUE;
    }

    BTM_BleGetVendorCapabilities(&cmn_ble_vsc_cb);

    if (0 == cmn_ble_vsc_cb.tot_scan_results_strg) {
        BTM_TRACE_ERROR("Controller does not support batch scan");
        return BTM_ERR_PROCESSING;
    }

    status = btm_ble_enable_disable_batchscan(FALSE);
    if (BTM_CMD_STARTED == status) {

        btm_ble_batchscan_enq_op_q(BTM_BLE_BATCH_SCAN_SET_PARAMS,
                                   BTM_BLE_SCAN_DISABLE_CALLED, BTM_BLE_BATCH_SCAN_DISABLE_EVT,
                                   ref_value);
    }

    return status;
}
