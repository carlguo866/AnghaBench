
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct i40e_hw {int dummy; } ;
struct i40e_asq_cmd_details {int dummy; } ;
struct i40e_aqc_get_wake_reason_completion {int wake_reason; } ;
struct TYPE_2__ {int raw; } ;
struct i40e_aq_desc {TYPE_1__ params; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int I40E_SUCCESS ;
 int LE16_TO_CPU (int ) ;
 int i40e_aqc_opc_get_wake_reason ;
 int i40e_asq_send_command (struct i40e_hw*,struct i40e_aq_desc*,int *,int ,struct i40e_asq_cmd_details*) ;
 int i40e_fill_default_direct_cmd_desc (struct i40e_aq_desc*,int ) ;

enum i40e_status_code i40e_aq_get_wake_event_reason(struct i40e_hw *hw,
    u16 *wake_reason,
    struct i40e_asq_cmd_details *cmd_details)
{
 struct i40e_aq_desc desc;
 struct i40e_aqc_get_wake_reason_completion *resp =
  (struct i40e_aqc_get_wake_reason_completion *)&desc.params.raw;
 enum i40e_status_code status;

 i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_get_wake_reason);

 status = i40e_asq_send_command(hw, &desc, ((void*)0), 0, cmd_details);

 if (status == I40E_SUCCESS)
  *wake_reason = LE16_TO_CPU(resp->wake_reason);

 return status;
}
