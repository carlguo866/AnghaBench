
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ tBTM_STATUS ;
struct TYPE_5__ {scalar_t__ tot_scan_results_strg; } ;
typedef TYPE_1__ tBTM_BLE_VSC_CB ;
typedef int tBTM_BLE_REF_VALUE ;
typedef scalar_t__ tBTM_BLE_DISCARD_RULE ;
typedef scalar_t__ tBTM_BLE_BATCH_SCAN_MODE ;
typedef int tBLE_ADDR_TYPE ;
typedef void* UINT32 ;
struct TYPE_7__ {scalar_t__ cur_state; scalar_t__ discard_rule; int addr_type; void* scan_window; void* scan_interval; scalar_t__ scan_mode; } ;
struct TYPE_6__ {int (* supports_ble ) () ;} ;


 int BTM_BLE_BATCH_SCAN_ENABLE_EVT ;
 int BTM_BLE_BATCH_SCAN_ENB_DISAB_CUST_FEATURE ;
 scalar_t__ BTM_BLE_BATCH_SCAN_MODE_ACTI ;
 scalar_t__ BTM_BLE_BATCH_SCAN_MODE_PASS ;
 scalar_t__ BTM_BLE_BATCH_SCAN_MODE_PASS_ACTI ;
 int BTM_BLE_BATCH_SCAN_SET_PARAMS ;
 scalar_t__ BTM_BLE_DISCARD_LOWER_RSSI_ITEMS ;
 scalar_t__ BTM_BLE_DISCARD_OLD_ITEMS ;
 scalar_t__ BTM_BLE_ISVALID_PARAM (void*,int ,int ) ;
 scalar_t__ BTM_BLE_SCAN_DISABLED_STATE ;
 scalar_t__ BTM_BLE_SCAN_DISABLE_CALLED ;
 scalar_t__ BTM_BLE_SCAN_ENABLE_CALLED ;
 int BTM_BLE_SCAN_INT_MAX ;
 int BTM_BLE_SCAN_INT_MIN ;
 scalar_t__ BTM_BLE_SCAN_INVALID_STATE ;
 int BTM_BLE_SCAN_WIN_MAX ;
 int BTM_BLE_SCAN_WIN_MIN ;
 int BTM_BleGetVendorCapabilities (TYPE_1__*) ;
 scalar_t__ BTM_CMD_STARTED ;
 scalar_t__ BTM_ERR_PROCESSING ;
 scalar_t__ BTM_ILLEGAL_VALUE ;
 scalar_t__ BTM_NO_RESOURCES ;
 int BTM_TRACE_DEBUG (char*,scalar_t__,void*,void*,scalar_t__,scalar_t__) ;
 int BTM_TRACE_ERROR (char*) ;
 int BTM_TRACE_EVENT (char*,scalar_t__,void*,void*,int ,scalar_t__,int ) ;
 int TRUE ;
 TYPE_3__ ble_batchscan_cb ;
 int btm_ble_batchscan_enq_op_q (int ,scalar_t__,int ,int ) ;
 scalar_t__ btm_ble_enable_disable_batchscan (int ) ;
 scalar_t__ btm_ble_set_batchscan_param (scalar_t__,void*,void*,int ,scalar_t__) ;
 TYPE_2__* controller_get_interface () ;
 int stub1 () ;

tBTM_STATUS BTM_BleEnableBatchScan(tBTM_BLE_BATCH_SCAN_MODE scan_mode,
                                   UINT32 scan_interval, UINT32 scan_window, tBLE_ADDR_TYPE addr_type,
                                   tBTM_BLE_DISCARD_RULE discard_rule, tBTM_BLE_REF_VALUE ref_value)
{
    tBTM_STATUS status = BTM_NO_RESOURCES;
    tBTM_BLE_VSC_CB cmn_ble_vsc_cb;
    BTM_TRACE_EVENT (" BTM_BleEnableBatchScan: %d, %d, %d, %d, %d, %d",
                     scan_mode, scan_interval, scan_window, addr_type, discard_rule, ref_value);

    if (!controller_get_interface()->supports_ble()) {
        return BTM_ILLEGAL_VALUE;
    }

    BTM_BleGetVendorCapabilities(&cmn_ble_vsc_cb);

    if (0 == cmn_ble_vsc_cb.tot_scan_results_strg) {
        BTM_TRACE_ERROR("Controller does not support batch scan");
        return BTM_ERR_PROCESSING;
    }

    BTM_TRACE_DEBUG("BTM_BleEnableBatchScan: %d, %x, %x, %d, %d", scan_mode, scan_interval,
                    scan_window, discard_rule, ble_batchscan_cb.cur_state);



    if ((BTM_BLE_ISVALID_PARAM(scan_interval, BTM_BLE_SCAN_INT_MIN, BTM_BLE_SCAN_INT_MAX) ||
            BTM_BLE_ISVALID_PARAM(scan_window, BTM_BLE_SCAN_WIN_MIN, BTM_BLE_SCAN_WIN_MAX))
            && (BTM_BLE_BATCH_SCAN_MODE_PASS == scan_mode || BTM_BLE_BATCH_SCAN_MODE_ACTI == scan_mode
                || BTM_BLE_BATCH_SCAN_MODE_PASS_ACTI == scan_mode)
            && (BTM_BLE_DISCARD_OLD_ITEMS == discard_rule ||
                BTM_BLE_DISCARD_LOWER_RSSI_ITEMS == discard_rule)) {
        if (BTM_BLE_SCAN_INVALID_STATE == ble_batchscan_cb.cur_state ||
                BTM_BLE_SCAN_DISABLED_STATE == ble_batchscan_cb.cur_state ||
                BTM_BLE_SCAN_DISABLE_CALLED == ble_batchscan_cb.cur_state) {
            status = btm_ble_enable_disable_batchscan(TRUE);
            if (BTM_CMD_STARTED != status) {
                return status;
            }
            btm_ble_batchscan_enq_op_q(BTM_BLE_BATCH_SCAN_ENB_DISAB_CUST_FEATURE,
                                       BTM_BLE_SCAN_ENABLE_CALLED, 0, ref_value);
        }

        ble_batchscan_cb.scan_mode = scan_mode;
        ble_batchscan_cb.scan_interval = scan_interval;
        ble_batchscan_cb.scan_window = scan_window;
        ble_batchscan_cb.addr_type = addr_type;
        ble_batchscan_cb.discard_rule = discard_rule;

        status = btm_ble_set_batchscan_param(scan_mode, scan_interval, scan_window, addr_type,
                                             discard_rule);
        if (BTM_CMD_STARTED != status) {
            return status;
        }


        btm_ble_batchscan_enq_op_q(BTM_BLE_BATCH_SCAN_SET_PARAMS, ble_batchscan_cb.cur_state,
                                   BTM_BLE_BATCH_SCAN_ENABLE_EVT, ref_value);
    } else {
        BTM_TRACE_ERROR("Illegal enable scan params");
        return BTM_ILLEGAL_VALUE;
    }
    return status;
}
