
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t q_pending; size_t q_next; size_t* resolve_q_action; int * resolve_q_random_pseudo; } ;
typedef TYPE_2__ tBTM_BLE_RESOLVE_Q ;
typedef size_t UINT8 ;
struct TYPE_5__ {TYPE_2__ resolving_list_pend_q; } ;
struct TYPE_8__ {TYPE_1__ ble_ctr_cb; } ;
struct TYPE_7__ {size_t (* get_ble_resolving_list_max_size ) () ;} ;
typedef int BOOLEAN ;
typedef int BD_ADDR ;


 int BD_ADDR_LEN ;
 int FALSE ;
 int TRUE ;
 TYPE_4__ btm_cb ;
 TYPE_3__* controller_get_interface () ;
 scalar_t__ memcmp (int ,int ,int ) ;
 size_t stub1 () ;

BOOLEAN btm_ble_brcm_find_resolving_pending_entry(BD_ADDR pseudo_addr, UINT8 action)
{
    tBTM_BLE_RESOLVE_Q *p_q = &btm_cb.ble_ctr_cb.resolving_list_pend_q;

    for (UINT8 i = p_q->q_pending; i != p_q->q_next;) {
        if (memcmp(p_q->resolve_q_random_pseudo[i], pseudo_addr, BD_ADDR_LEN) == 0 &&
                action == p_q->resolve_q_action[i]) {
            return TRUE;
        }

        i ++;
        i %= controller_get_interface()->get_ble_resolving_list_max_size();
    }
    return FALSE;
}
