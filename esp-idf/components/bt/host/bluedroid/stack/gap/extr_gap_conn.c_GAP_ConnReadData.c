
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ rx_queue_size; int rx_queue; } ;
typedef TYPE_1__ tGAP_CCB ;
typedef int UINT8 ;
typedef scalar_t__ UINT16 ;
struct TYPE_6__ {int offset; scalar_t__ len; } ;
typedef TYPE_2__ BT_HDR ;


 scalar_t__ BT_PASS ;
 scalar_t__ GAP_ERR_BAD_HANDLE ;
 scalar_t__ GAP_NO_DATA_AVAIL ;
 int GAP_TRACE_EVENT (char*,scalar_t__,scalar_t__) ;
 int fixed_queue_dequeue (int ,int ) ;
 scalar_t__ fixed_queue_is_empty (int ) ;
 TYPE_2__* fixed_queue_try_peek_first (int ) ;
 TYPE_1__* gap_find_ccb_by_handle (scalar_t__) ;
 int memcpy (int *,int *,scalar_t__) ;
 int osi_free (int ) ;
 int osi_mutex_global_lock () ;
 int osi_mutex_global_unlock () ;

UINT16 GAP_ConnReadData (UINT16 gap_handle, UINT8 *p_data, UINT16 max_len, UINT16 *p_len)
{
    tGAP_CCB *p_ccb = gap_find_ccb_by_handle (gap_handle);
    UINT16 copy_len;

    if (!p_ccb) {
        return (GAP_ERR_BAD_HANDLE);
    }

    *p_len = 0;

    if (fixed_queue_is_empty(p_ccb->rx_queue)) {
        return (GAP_NO_DATA_AVAIL);
 }

    osi_mutex_global_lock();

    while (max_len) {
        BT_HDR *p_buf = fixed_queue_try_peek_first(p_ccb->rx_queue);
        if (p_buf == ((void*)0)) {
            break;
  }

        copy_len = (p_buf->len > max_len)?max_len:p_buf->len;
        max_len -= copy_len;
        *p_len += copy_len;
        if (p_data) {
            memcpy (p_data, (UINT8 *)(p_buf + 1) + p_buf->offset, copy_len);
            p_data += copy_len;
        }

        if (p_buf->len > copy_len) {
            p_buf->offset += copy_len;
            p_buf->len -= copy_len;
            break;
        }
        osi_free(fixed_queue_dequeue(p_ccb->rx_queue, 0));
    }

    p_ccb->rx_queue_size -= *p_len;

    osi_mutex_global_unlock();

    GAP_TRACE_EVENT ("GAP_ConnReadData - rx_queue_size left=%d, *p_len=%d",
                     p_ccb->rx_queue_size, *p_len);

    return (BT_PASS);
}
