
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ mode; } ;
struct TYPE_9__ {TYPE_1__ fcr; } ;
struct TYPE_10__ {scalar_t__ con_state; scalar_t__ rem_mtu_size; scalar_t__ is_congested; int connection_id; int tx_queue; TYPE_2__ cfg; } ;
typedef TYPE_3__ tGAP_CCB ;
typedef scalar_t__ UINT8 ;
typedef scalar_t__ UINT16 ;
struct TYPE_11__ {int offset; scalar_t__ len; int event; } ;
typedef TYPE_4__ BT_HDR ;


 int BT_EVT_TO_BTU_SP_DATA ;
 scalar_t__ BT_PASS ;
 int FIXED_QUEUE_MAX_TIMEOUT ;
 scalar_t__ GAP_CCB_STATE_CONNECTED ;
 int GAP_DATA_BUF_SIZE ;
 scalar_t__ GAP_ERR_BAD_HANDLE ;
 scalar_t__ GAP_ERR_BAD_STATE ;
 scalar_t__ GAP_ERR_CONGESTED ;
 int GAP_TRACE_EVENT (char*,scalar_t__) ;
 scalar_t__ L2CAP_DW_CONGESTED ;
 scalar_t__ L2CAP_DW_SUCCESS ;
 int L2CAP_FCR_ERTM_BUF_SIZE ;
 scalar_t__ L2CAP_FCR_ERTM_MODE ;
 int L2CAP_MIN_OFFSET ;
 scalar_t__ L2CA_DATA_WRITE (int ,TYPE_4__*) ;
 scalar_t__ TRUE ;
 scalar_t__ fixed_queue_dequeue (int ,int ) ;
 int fixed_queue_enqueue (int ,TYPE_4__*,int ) ;
 TYPE_3__* gap_find_ccb_by_handle (scalar_t__) ;
 int gap_send_event (scalar_t__) ;
 int memcpy (scalar_t__*,scalar_t__*,scalar_t__) ;
 scalar_t__ osi_malloc (int ) ;

UINT16 GAP_ConnWriteData (UINT16 gap_handle, UINT8 *p_data, UINT16 max_len, UINT16 *p_len)
{
    tGAP_CCB *p_ccb = gap_find_ccb_by_handle (gap_handle);
    BT_HDR *p_buf;

    *p_len = 0;

    if (!p_ccb) {
        return (GAP_ERR_BAD_HANDLE);
    }

    if (p_ccb->con_state != GAP_CCB_STATE_CONNECTED) {
        return (GAP_ERR_BAD_STATE);
    }

    while (max_len) {
        if (p_ccb->cfg.fcr.mode == L2CAP_FCR_ERTM_MODE) {
            if ((p_buf = (BT_HDR *)osi_malloc(L2CAP_FCR_ERTM_BUF_SIZE)) == ((void*)0)) {
                return (GAP_ERR_CONGESTED);
            }
        } else {
            if ((p_buf = (BT_HDR *)osi_malloc(GAP_DATA_BUF_SIZE)) == ((void*)0)) {
                return (GAP_ERR_CONGESTED);
            }
        }

        p_buf->offset = L2CAP_MIN_OFFSET;
        p_buf->len = (p_ccb->rem_mtu_size < max_len) ? p_ccb->rem_mtu_size : max_len;
        p_buf->event = BT_EVT_TO_BTU_SP_DATA;

        memcpy ((UINT8 *)(p_buf + 1) + p_buf->offset, p_data, p_buf->len);

        *p_len += p_buf->len;
        max_len -= p_buf->len;
        p_data += p_buf->len;

        GAP_TRACE_EVENT ("GAP_WriteData %d bytes", p_buf->len);

        fixed_queue_enqueue(p_ccb->tx_queue, p_buf, FIXED_QUEUE_MAX_TIMEOUT);
    }

    if (p_ccb->is_congested) {
        return (BT_PASS);
    }



    gap_send_event (gap_handle);
    return (BT_PASS);
}
