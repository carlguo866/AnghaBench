
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_FWSM ;
 int E1000_ICH_FWSM_FW_VALID ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 scalar_t__ E1000_SUCCESS ;
 int TRUE ;
 int e1000_gate_hw_phy_config_ich8lan (struct e1000_hw*,int ) ;
 scalar_t__ e1000_pch2lan ;
 scalar_t__ e1000_phy_hw_reset_generic (struct e1000_hw*) ;
 scalar_t__ e1000_post_phy_reset_ich8lan (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_phy_hw_reset_ich8lan(struct e1000_hw *hw)
{
 s32 ret_val = E1000_SUCCESS;

 DEBUGFUNC("e1000_phy_hw_reset_ich8lan");


 if ((hw->mac.type == e1000_pch2lan) &&
     !(E1000_READ_REG(hw, E1000_FWSM) & E1000_ICH_FWSM_FW_VALID))
  e1000_gate_hw_phy_config_ich8lan(hw, TRUE);

 ret_val = e1000_phy_hw_reset_generic(hw);
 if (ret_val)
  return ret_val;

 return e1000_post_phy_reset_ich8lan(hw);
}
