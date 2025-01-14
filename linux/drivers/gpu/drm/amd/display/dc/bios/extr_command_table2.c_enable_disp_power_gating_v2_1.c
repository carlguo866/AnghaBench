
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int enable; int disp_pipe_id; } ;
struct TYPE_4__ {int member_0; } ;
struct enable_disp_power_gating_ps_allocation {TYPE_3__ param; TYPE_1__ member_0; } ;
struct bios_parser {TYPE_2__* cmd_helper; } ;
typedef enum controller_id { ____Placeholder_controller_id } controller_id ;
typedef enum bp_result { ____Placeholder_bp_result } bp_result ;
typedef enum bp_pipe_control_action { ____Placeholder_bp_pipe_control_action } bp_pipe_control_action ;
struct TYPE_5__ {int (* disp_power_gating_action_to_atom ) (int) ;scalar_t__ (* controller_id_to_atom ) (int,int *) ;} ;


 int BP_RESULT_BADINPUT ;
 int BP_RESULT_FAILURE ;
 int BP_RESULT_OK ;
 scalar_t__ EXEC_BIOS_CMD_TABLE (int ,TYPE_3__) ;
 int enabledisppowergating ;
 scalar_t__ stub1 (int,int *) ;
 int stub2 (int) ;

__attribute__((used)) static enum bp_result enable_disp_power_gating_v2_1(
 struct bios_parser *bp,
 enum controller_id crtc_id,
 enum bp_pipe_control_action action)
{
 enum bp_result result = BP_RESULT_FAILURE;


 struct enable_disp_power_gating_ps_allocation ps = { { 0 } };
 uint8_t atom_crtc_id;

 if (bp->cmd_helper->controller_id_to_atom(crtc_id, &atom_crtc_id))
  ps.param.disp_pipe_id = atom_crtc_id;
 else
  return BP_RESULT_BADINPUT;

 ps.param.enable =
  bp->cmd_helper->disp_power_gating_action_to_atom(action);

 if (EXEC_BIOS_CMD_TABLE(enabledisppowergating, ps.param))
  result = BP_RESULT_OK;

 return result;
}
