
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct iscsi_cmd {size_t pdu_count; TYPE_1__* pdu_list; } ;
struct TYPE_2__ {size_t seq_no; scalar_t__ pdu_send_order; } ;



__attribute__((used)) static void iscsit_ordered_pdu_lists(
 struct iscsi_cmd *cmd,
 u8 type)
{
 u32 i, pdu_send_order = 0, seq_no = 0;

 for (i = 0; i < cmd->pdu_count; i++) {
redo:
  if (cmd->pdu_list[i].seq_no == seq_no) {
   cmd->pdu_list[i].pdu_send_order = pdu_send_order++;
   continue;
  }
  seq_no++;
  pdu_send_order = 0;
  goto redo;
 }
}
