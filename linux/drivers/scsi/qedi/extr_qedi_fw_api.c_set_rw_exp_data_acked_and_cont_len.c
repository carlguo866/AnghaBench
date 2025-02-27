
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct iscsi_conn_params {scalar_t__ first_burst_length; scalar_t__ max_send_pdu_length; int immediate_data; int initial_r2t; } ;
struct TYPE_4__ {scalar_t__ exp_cont_len; void* exp_data_acked; } ;
struct TYPE_3__ {int flags2; } ;
struct e4_iscsi_task_context {TYPE_2__ ustorm_ag_context; TYPE_1__ ustorm_st_context; } ;
typedef enum iscsi_task_type { ____Placeholder_iscsi_task_type } iscsi_task_type ;


 scalar_t__ ISCSI_AHS_CNTL_SIZE ;




 int SET_FIELD (int ,int ,int) ;
 int USTORM_ISCSI_TASK_ST_CTX_AHS_EXIST ;
 void* cpu_to_le32 (scalar_t__) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;

__attribute__((used)) static
void set_rw_exp_data_acked_and_cont_len(struct e4_iscsi_task_context *context,
     struct iscsi_conn_params *conn_params,
     enum iscsi_task_type task_type,
     u32 task_size,
     u32 exp_data_transfer_len,
     u8 total_ahs_length)
{
 u32 max_unsolicited_data = 0, val;

 if (total_ahs_length &&
     (task_type == 130 ||
      task_type == 131))
  SET_FIELD(context->ustorm_st_context.flags2,
     USTORM_ISCSI_TASK_ST_CTX_AHS_EXIST, 1);

 switch (task_type) {
 case 130:
  if (!conn_params->initial_r2t)
   max_unsolicited_data = conn_params->first_burst_length;
  else if (conn_params->immediate_data)
   max_unsolicited_data =
       min(conn_params->first_burst_length,
           conn_params->max_send_pdu_length);

  context->ustorm_ag_context.exp_data_acked =
       cpu_to_le32(total_ahs_length == 0 ?
      min(exp_data_transfer_len,
          max_unsolicited_data) :
      ((u32)(total_ahs_length +
             ISCSI_AHS_CNTL_SIZE)));
  break;
 case 129:
  val = cpu_to_le32(exp_data_transfer_len);
  context->ustorm_ag_context.exp_data_acked = val;
  break;
 case 131:
  context->ustorm_ag_context.exp_data_acked =
     cpu_to_le32((total_ahs_length == 0 ? 0 :
           total_ahs_length +
           ISCSI_AHS_CNTL_SIZE));
  break;
 case 128:
  val = cpu_to_le32(task_size);
  context->ustorm_ag_context.exp_cont_len = val;
  break;
 default:
  break;
 }
}
