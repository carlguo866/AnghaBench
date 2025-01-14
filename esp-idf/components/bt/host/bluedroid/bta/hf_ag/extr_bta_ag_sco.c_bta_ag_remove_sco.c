
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ tBTM_STATUS ;
struct TYPE_6__ {scalar_t__ sco_idx; } ;
typedef TYPE_2__ tBTA_AG_SCB ;
struct TYPE_5__ {scalar_t__ cur_idx; TYPE_2__* p_curr_scb; } ;
struct TYPE_7__ {TYPE_1__ sco; } ;
typedef int BOOLEAN ;


 int APPL_TRACE_DEBUG (char*,scalar_t__,scalar_t__) ;
 scalar_t__ BTM_CMD_STARTED ;
 scalar_t__ BTM_INVALID_SCO_INDEX ;
 scalar_t__ BTM_RemoveSco (scalar_t__) ;
 scalar_t__ BTM_SUCCESS ;
 scalar_t__ BTM_UNKNOWN_ADDR ;
 int FALSE ;
 int TRUE ;
 TYPE_4__ bta_ag_cb ;

__attribute__((used)) static BOOLEAN bta_ag_remove_sco(tBTA_AG_SCB *p_scb, BOOLEAN only_active)
{
    BOOLEAN removed_started = FALSE;
    tBTM_STATUS status;

    if (p_scb->sco_idx != BTM_INVALID_SCO_INDEX)
    {
        if (!only_active || p_scb->sco_idx == bta_ag_cb.sco.cur_idx)
        {
            status = BTM_RemoveSco(p_scb->sco_idx);

            APPL_TRACE_DEBUG("ag remove sco: inx 0x%04x, status:0x%x", p_scb->sco_idx, status);

            if (status == BTM_CMD_STARTED)
            {

                bta_ag_cb.sco.p_curr_scb = p_scb;

                removed_started = TRUE;
            }

            else if ( (status == BTM_SUCCESS) || (status == BTM_UNKNOWN_ADDR) )
            {
                p_scb->sco_idx = BTM_INVALID_SCO_INDEX;
            }
        }
    }
    return removed_started;
}
