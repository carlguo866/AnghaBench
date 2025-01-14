
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int bdaddr_cond; } ;
struct TYPE_10__ {scalar_t__ filter_cond_type; TYPE_2__ filter_cond; } ;
typedef TYPE_4__ tBTM_INQ_PARMS ;
struct TYPE_11__ {scalar_t__ adv_len; int adv_data_cache; } ;
typedef TYPE_5__ tBTM_BLE_INQ_CB ;
typedef scalar_t__ UINT8 ;
struct TYPE_9__ {int inq_active; TYPE_4__ inqparms; } ;
struct TYPE_7__ {int scan_activity; TYPE_5__ inq_var; } ;
struct TYPE_12__ {TYPE_3__ btm_inq_vars; TYPE_1__ ble_ctr_cb; } ;
typedef int BD_ADDR ;


 int BD_ADDR_LEN ;
 int BTM_BLE_AD_TYPE_FLAG ;
 scalar_t__ BTM_BLE_CONNECT_DIR_EVT ;
 scalar_t__ BTM_BLE_CONNECT_EVT ;
 scalar_t__ BTM_BLE_DISCO_RESULT ;
 int BTM_BLE_GENERAL_INQUIRY ;
 scalar_t__ BTM_BLE_GEN_DISC_FLAG ;
 scalar_t__ BTM_BLE_INQ_RESULT ;
 scalar_t__ BTM_BLE_IS_DISCO_ACTIVE (int ) ;
 scalar_t__ BTM_BLE_IS_OBS_ACTIVE (int ) ;
 scalar_t__ BTM_BLE_IS_SEL_CONN_ACTIVE (int ) ;
 int BTM_BLE_LIMITED_INQUIRY ;
 scalar_t__ BTM_BLE_LIMIT_DISC_FLAG ;
 scalar_t__ BTM_BLE_OBS_RESULT ;
 scalar_t__ BTM_BLE_SEL_CONN_RESULT ;
 scalar_t__* BTM_CheckAdvData (int ,int ,scalar_t__*) ;
 scalar_t__ BTM_FILTER_COND_BD_ADDR ;
 int BTM_TRACE_DEBUG (char*) ;
 int UNUSED (scalar_t__*) ;
 TYPE_6__ btm_cb ;
 scalar_t__ memcmp (int ,int ,int ) ;

UINT8 btm_ble_is_discoverable(BD_ADDR bda, UINT8 evt_type, UINT8 *p)
{
    UINT8 *p_flag, flag = 0, rt = 0;
    UINT8 data_len;
    tBTM_INQ_PARMS *p_cond = &btm_cb.btm_inq_vars.inqparms;
    tBTM_BLE_INQ_CB *p_le_inq_cb = &btm_cb.ble_ctr_cb.inq_var;

    UNUSED(p);


    if (BTM_BLE_IS_OBS_ACTIVE(btm_cb.ble_ctr_cb.scan_activity)) {
        rt |= BTM_BLE_OBS_RESULT;
    }

    if (BTM_BLE_IS_DISCO_ACTIVE(btm_cb.ble_ctr_cb.scan_activity)) {
        rt |= BTM_BLE_DISCO_RESULT;
    }

    if (BTM_BLE_IS_SEL_CONN_ACTIVE(btm_cb.ble_ctr_cb.scan_activity) &&
            (evt_type == BTM_BLE_CONNECT_EVT || evt_type == BTM_BLE_CONNECT_DIR_EVT)) {
        rt |= BTM_BLE_SEL_CONN_RESULT;
    }


    if (p_cond->filter_cond_type == BTM_FILTER_COND_BD_ADDR &&
            memcmp(bda, p_cond->filter_cond.bdaddr_cond, BD_ADDR_LEN) != 0) {
        BTM_TRACE_DEBUG("BD ADDR does not meet filter condition");
        return rt;
    }

    if (p_le_inq_cb->adv_len != 0) {
        if ((p_flag = BTM_CheckAdvData(p_le_inq_cb->adv_data_cache,
                                       BTM_BLE_AD_TYPE_FLAG, &data_len)) != ((void*)0)) {
            flag = * p_flag;

            if ((btm_cb.btm_inq_vars.inq_active & BTM_BLE_GENERAL_INQUIRY) &&
                    (flag & (BTM_BLE_LIMIT_DISC_FLAG | BTM_BLE_GEN_DISC_FLAG)) != 0) {
                BTM_TRACE_DEBUG("Find Generable Discoverable device");
                rt |= BTM_BLE_INQ_RESULT;
            }

            else if (btm_cb.btm_inq_vars.inq_active & BTM_BLE_LIMITED_INQUIRY &&
                     (flag & BTM_BLE_LIMIT_DISC_FLAG) != 0) {
                BTM_TRACE_DEBUG("Find limited discoverable device");
                rt |= BTM_BLE_INQ_RESULT;
            }
        }
    }
    return rt;
}
