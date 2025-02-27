
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct recv_reorder_ctrl {int wsize_b; int indicate_seq; } ;


 scalar_t__ SN_EQUAL (int,int) ;
 scalar_t__ SN_LESS (int,int) ;

__attribute__((used)) static int check_indicate_seq(struct recv_reorder_ctrl *preorder_ctrl, u16 seq_num)
{
 u8 wsize = preorder_ctrl->wsize_b;
 u16 wend = (preorder_ctrl->indicate_seq + wsize - 1) & 0xFFF;


 if (preorder_ctrl->indicate_seq == 0xFFFF)
  preorder_ctrl->indicate_seq = seq_num;


 if (SN_LESS(seq_num, preorder_ctrl->indicate_seq))
  return 0;






 if (SN_EQUAL(seq_num, preorder_ctrl->indicate_seq)) {
  preorder_ctrl->indicate_seq = (preorder_ctrl->indicate_seq + 1) & 0xFFF;
 } else if (SN_LESS(wend, seq_num)) {
  if (seq_num >= (wsize - 1))
   preorder_ctrl->indicate_seq = seq_num + 1 - wsize;
  else
   preorder_ctrl->indicate_seq = 0xFFF - (wsize - (seq_num + 1)) + 1;
 }

 return 1;
}
