
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ice_hw {int dummy; } ;
struct ice_aqc_q_shutdown {int driver_unloading; } ;
struct TYPE_2__ {struct ice_aqc_q_shutdown q_shutdown; } ;
struct ice_aq_desc {TYPE_1__ params; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int ICE_AQC_DRIVER_UNLOADING ;
 int ice_aq_send_cmd (struct ice_hw*,struct ice_aq_desc*,int *,int ,int *) ;
 int ice_aqc_opc_q_shutdown ;
 int ice_fill_dflt_direct_cmd_desc (struct ice_aq_desc*,int ) ;

enum ice_status ice_aq_q_shutdown(struct ice_hw *hw, bool unloading)
{
 struct ice_aqc_q_shutdown *cmd;
 struct ice_aq_desc desc;

 cmd = &desc.params.q_shutdown;

 ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_q_shutdown);

 if (unloading)
  cmd->driver_unloading = ICE_AQC_DRIVER_UNLOADING;

 return ice_aq_send_cmd(hw, &desc, ((void*)0), 0, ((void*)0));
}
