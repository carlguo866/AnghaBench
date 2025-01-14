
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct elink_vars {scalar_t__ flow_ctrl; int link_status; } ;
struct elink_phy {scalar_t__ req_flow_ctrl; scalar_t__ req_line_speed; } ;
struct elink_params {scalar_t__ req_fc_auto_adv; } ;


 scalar_t__ ELINK_FLOW_CTRL_AUTO ;
 scalar_t__ ELINK_FLOW_CTRL_NONE ;
 scalar_t__ ELINK_SPEED_AUTO_NEG ;
 int LINK_STATUS_AUTO_NEGOTIATE_COMPLETE ;
 int elink_ext_phy_update_adv_fc (struct elink_phy*,struct elink_params*,struct elink_vars*) ;

__attribute__((used)) static uint8_t elink_ext_phy_resolve_fc(struct elink_phy *phy,
       struct elink_params *params,
       struct elink_vars *vars)
{
 uint8_t ret = 0;
 vars->flow_ctrl = ELINK_FLOW_CTRL_NONE;
 if (phy->req_flow_ctrl != ELINK_FLOW_CTRL_AUTO) {

  if (phy->req_line_speed == ELINK_SPEED_AUTO_NEG)
   elink_ext_phy_update_adv_fc(phy, params, vars);

  vars->flow_ctrl = phy->req_flow_ctrl;
 } else if (phy->req_line_speed != ELINK_SPEED_AUTO_NEG)
  vars->flow_ctrl = params->req_fc_auto_adv;
 else if (vars->link_status & LINK_STATUS_AUTO_NEGOTIATE_COMPLETE) {
  ret = 1;
  elink_ext_phy_update_adv_fc(phy, params, vars);
 }
 return ret;
}
