
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_com_llq_pkt_ctrl {int descs_left_in_line; scalar_t__ idx; int curr_bounce_buf; } ;
struct ena_com_llq_info {int desc_list_entry_size; scalar_t__ desc_stride_ctrl; } ;
struct ena_com_io_sq {int desc_entry_size; struct ena_com_llq_pkt_ctrl llq_buf_ctrl; int bounce_buf_ctrl; struct ena_com_llq_info llq_info; } ;


 scalar_t__ ENA_ADMIN_SINGLE_DESC_PER_ENTRY ;
 int ena_com_get_next_bounce_buffer (int *) ;
 int ena_com_write_bounce_buffer_to_dev (struct ena_com_io_sq*,int ) ;
 int memset (int ,int,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ena_com_sq_update_llq_tail(struct ena_com_io_sq *io_sq)
{
 struct ena_com_llq_pkt_ctrl *pkt_ctrl = &io_sq->llq_buf_ctrl;
 struct ena_com_llq_info *llq_info = &io_sq->llq_info;
 int rc;

 if (!pkt_ctrl->descs_left_in_line) {
  rc = ena_com_write_bounce_buffer_to_dev(io_sq,
       pkt_ctrl->curr_bounce_buf);
  if (unlikely(rc))
   return rc;

  pkt_ctrl->curr_bounce_buf =
   ena_com_get_next_bounce_buffer(&io_sq->bounce_buf_ctrl);
  memset(io_sq->llq_buf_ctrl.curr_bounce_buf,
         0x0, llq_info->desc_list_entry_size);

  pkt_ctrl->idx = 0;
  if (unlikely(llq_info->desc_stride_ctrl == ENA_ADMIN_SINGLE_DESC_PER_ENTRY))
   pkt_ctrl->descs_left_in_line = 1;
  else
   pkt_ctrl->descs_left_in_line =
   llq_info->desc_list_entry_size / io_sq->desc_entry_size;
 }

 return 0;
}
