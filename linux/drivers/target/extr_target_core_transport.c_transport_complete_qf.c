
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_cmd {scalar_t__ t_state; int se_cmd_flags; int data_direction; int se_dev; TYPE_1__* se_tfo; scalar_t__ scsi_status; } ;
struct TYPE_2__ {int (* queue_data_in ) (struct se_cmd*) ;int (* queue_status ) (struct se_cmd*) ;} ;





 int SCF_BIDI ;
 int SCF_TRANSPORT_TASK_SENSE ;
 int SCF_TREAT_READ_AS_NORMAL ;
 int TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE ;
 scalar_t__ TRANSPORT_COMPLETE_QF_ERR ;
 int stub1 (struct se_cmd*) ;
 int stub2 (struct se_cmd*) ;
 int stub3 (struct se_cmd*) ;
 int trace_target_cmd_complete (struct se_cmd*) ;
 int translate_sense_reason (struct se_cmd*,int ) ;
 int transport_cmd_check_stop_to_fabric (struct se_cmd*) ;
 int transport_complete_task_attr (struct se_cmd*) ;
 int transport_handle_queue_full (struct se_cmd*,int ,int,int) ;

__attribute__((used)) static void transport_complete_qf(struct se_cmd *cmd)
{
 int ret = 0;

 transport_complete_task_attr(cmd);
 if (cmd->t_state == TRANSPORT_COMPLETE_QF_ERR) {
  if (cmd->scsi_status)
   goto queue_status;

  translate_sense_reason(cmd, TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE);
  goto queue_status;
 }
 if (!(cmd->se_cmd_flags & SCF_TREAT_READ_AS_NORMAL) &&
     cmd->se_cmd_flags & SCF_TRANSPORT_TASK_SENSE)
  goto queue_status;

 switch (cmd->data_direction) {
 case 130:

  if (cmd->scsi_status &&
      !(cmd->se_cmd_flags & SCF_TREAT_READ_AS_NORMAL))
   goto queue_status;

  trace_target_cmd_complete(cmd);
  ret = cmd->se_tfo->queue_data_in(cmd);
  break;
 case 128:
  if (cmd->se_cmd_flags & SCF_BIDI) {
   ret = cmd->se_tfo->queue_data_in(cmd);
   break;
  }

 case 129:
queue_status:
  trace_target_cmd_complete(cmd);
  ret = cmd->se_tfo->queue_status(cmd);
  break;
 default:
  break;
 }

 if (ret < 0) {
  transport_handle_queue_full(cmd, cmd->se_dev, ret, 0);
  return;
 }
 transport_cmd_check_stop_to_fabric(cmd);
}
