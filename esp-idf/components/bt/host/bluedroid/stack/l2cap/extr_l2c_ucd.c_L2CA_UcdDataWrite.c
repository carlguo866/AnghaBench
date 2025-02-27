
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ state; } ;
struct TYPE_15__ {TYPE_1__ ucd; } ;
typedef TYPE_2__ tL2C_RCB ;
struct TYPE_16__ {scalar_t__ ucd_mtu; int ucd_out_sec_pending_q; int handle; } ;
typedef TYPE_3__ tL2C_LCB ;
struct TYPE_17__ {scalar_t__ cong_sent; int buff_quota; int xmit_hold_q; } ;
typedef TYPE_4__ tL2C_CCB ;
typedef int UINT8 ;
typedef int UINT16 ;
struct TYPE_18__ {scalar_t__ offset; scalar_t__ len; int layer_specific; } ;
typedef TYPE_5__ BT_HDR ;
typedef int* BD_ADDR ;


 int BT_TRANSPORT_BR_EDR ;
 scalar_t__ FALSE ;
 int L2CAP_CONNECTIONLESS_CID ;
 int L2CAP_DW_CONGESTED ;
 int L2CAP_DW_FAILED ;
 int L2CAP_DW_SUCCESS ;
 int L2CAP_TRACE_API (char*,int ,int,int) ;
 int L2CAP_TRACE_ERROR (char*,int ,scalar_t__,int ) ;
 int L2CAP_TRACE_WARNING (char*,int ) ;
 scalar_t__ L2CAP_UCD_OVERHEAD ;
 int L2CEVT_L2CA_DATA_WRITE ;
 scalar_t__ L2C_UCD_STATE_UNUSED ;
 int UINT16_TO_STREAM (int *,int ) ;
 scalar_t__ fixed_queue_length (int ) ;
 int l2c_csm_execute (TYPE_4__*,int ,TYPE_5__*) ;
 scalar_t__ l2c_ucd_connect (int*) ;
 TYPE_4__* l2cu_find_ccb_by_cid (TYPE_3__*,int ) ;
 TYPE_3__* l2cu_find_lcb_by_bd_addr (int*,int ) ;
 TYPE_2__* l2cu_find_rcb_by_psm (int ) ;
 int osi_free (TYPE_5__*) ;

UINT16 L2CA_UcdDataWrite (UINT16 psm, BD_ADDR rem_bda, BT_HDR *p_buf, UINT16 flags)
{
    tL2C_LCB *p_lcb;
    tL2C_CCB *p_ccb;
    tL2C_RCB *p_rcb;
    UINT8 *p;

    L2CAP_TRACE_API ("L2CA_UcdDataWrite()  PSM: 0x%04x  BDA: %08x%04x", psm,
                     (rem_bda[0] << 24) + (rem_bda[1] << 16) + (rem_bda[2] << 8) + rem_bda[3],
                     (rem_bda[4] << 8) + rem_bda[5]);


    if (((p_rcb = l2cu_find_rcb_by_psm (psm)) == ((void*)0))
            || ( p_rcb->ucd.state == L2C_UCD_STATE_UNUSED )) {
        L2CAP_TRACE_WARNING ("L2CAP - no RCB for L2CA_UcdDataWrite, PSM: 0x%04x", psm);
        osi_free (p_buf);
        return (L2CAP_DW_FAILED);
    }



    if (((p_lcb = l2cu_find_lcb_by_bd_addr (rem_bda, BT_TRANSPORT_BR_EDR)) == ((void*)0))
            || ((p_ccb = l2cu_find_ccb_by_cid (p_lcb, L2CAP_CONNECTIONLESS_CID)) == ((void*)0))) {
        if ( l2c_ucd_connect (rem_bda) == FALSE ) {
            osi_free (p_buf);
            return (L2CAP_DW_FAILED);
        }


        if (((p_lcb = l2cu_find_lcb_by_bd_addr (rem_bda, BT_TRANSPORT_BR_EDR)) == ((void*)0))
                || ((p_ccb = l2cu_find_ccb_by_cid (p_lcb, L2CAP_CONNECTIONLESS_CID)) == ((void*)0))) {
            osi_free (p_buf);
            return (L2CAP_DW_FAILED);
        }
    }


    p_buf->offset -= L2CAP_UCD_OVERHEAD;
    p_buf->len += L2CAP_UCD_OVERHEAD;
    p = (UINT8 *)(p_buf + 1) + p_buf->offset;

    UINT16_TO_STREAM (p, psm);


    if ((p_lcb->ucd_mtu) && (p_buf->len > p_lcb->ucd_mtu)) {
        L2CAP_TRACE_WARNING ("L2CAP - Handle: 0x%04x  UCD bigger than peer's UCD mtu size cannot be sent", p_lcb->handle);
        osi_free (p_buf);
        return (L2CAP_DW_FAILED);
    }


    if (p_ccb->cong_sent) {
        L2CAP_TRACE_ERROR ("L2CAP - Handle: 0x%04x UCD cannot be sent, already congested count: %u  buff_quota: %u",
                           p_lcb->handle,
                           (fixed_queue_length(p_ccb->xmit_hold_q) +
                            fixed_queue_length(p_lcb->ucd_out_sec_pending_q)),
                           p_ccb->buff_quota);

        osi_free (p_buf);
        return (L2CAP_DW_FAILED);
    }


    p_buf->layer_specific = flags;

    l2c_csm_execute (p_ccb, L2CEVT_L2CA_DATA_WRITE, p_buf);

    if (p_ccb->cong_sent) {
        return (L2CAP_DW_CONGESTED);
    } else {
        return (L2CAP_DW_SUCCESS);
    }
}
