
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ (* write_reg ) (struct e1000_hw*,int ,int ) ;scalar_t__ (* read_reg ) (struct e1000_hw*,int ,int *) ;} ;
struct e1000_phy_info {scalar_t__ smart_speed; scalar_t__ autoneg_advertised; TYPE_1__ ops; } ;
struct e1000_hw {struct e1000_phy_info phy; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 scalar_t__ E1000_ALL_10_SPEED ;
 scalar_t__ E1000_ALL_NOT_GIG ;
 scalar_t__ E1000_ALL_SPEED_DUPLEX ;
 scalar_t__ E1000_SUCCESS ;
 int IGP01E1000_PHY_PORT_CONFIG ;
 int IGP01E1000_PSCFR_SMART_SPEED ;
 int IGP02E1000_PHY_POWER_MGMT ;
 int IGP02E1000_PM_D3_LPLU ;
 scalar_t__ e1000_smart_speed_off ;
 scalar_t__ e1000_smart_speed_on ;
 scalar_t__ stub1 (struct e1000_hw*,int ,int *) ;
 scalar_t__ stub2 (struct e1000_hw*,int ,int ) ;
 scalar_t__ stub3 (struct e1000_hw*,int ,int *) ;
 scalar_t__ stub4 (struct e1000_hw*,int ,int ) ;
 scalar_t__ stub5 (struct e1000_hw*,int ,int *) ;
 scalar_t__ stub6 (struct e1000_hw*,int ,int ) ;
 scalar_t__ stub7 (struct e1000_hw*,int ,int ) ;
 scalar_t__ stub8 (struct e1000_hw*,int ,int *) ;
 scalar_t__ stub9 (struct e1000_hw*,int ,int ) ;

s32 e1000_set_d3_lplu_state_generic(struct e1000_hw *hw, bool active)
{
 struct e1000_phy_info *phy = &hw->phy;
 s32 ret_val;
 u16 data;

 DEBUGFUNC("e1000_set_d3_lplu_state_generic");

 if (!hw->phy.ops.read_reg)
  return E1000_SUCCESS;

 ret_val = phy->ops.read_reg(hw, IGP02E1000_PHY_POWER_MGMT, &data);
 if (ret_val)
  return ret_val;

 if (!active) {
  data &= ~IGP02E1000_PM_D3_LPLU;
  ret_val = phy->ops.write_reg(hw, IGP02E1000_PHY_POWER_MGMT,
          data);
  if (ret_val)
   return ret_val;





  if (phy->smart_speed == e1000_smart_speed_on) {
   ret_val = phy->ops.read_reg(hw,
          IGP01E1000_PHY_PORT_CONFIG,
          &data);
   if (ret_val)
    return ret_val;

   data |= IGP01E1000_PSCFR_SMART_SPEED;
   ret_val = phy->ops.write_reg(hw,
           IGP01E1000_PHY_PORT_CONFIG,
           data);
   if (ret_val)
    return ret_val;
  } else if (phy->smart_speed == e1000_smart_speed_off) {
   ret_val = phy->ops.read_reg(hw,
          IGP01E1000_PHY_PORT_CONFIG,
          &data);
   if (ret_val)
    return ret_val;

   data &= ~IGP01E1000_PSCFR_SMART_SPEED;
   ret_val = phy->ops.write_reg(hw,
           IGP01E1000_PHY_PORT_CONFIG,
           data);
   if (ret_val)
    return ret_val;
  }
 } else if ((phy->autoneg_advertised == E1000_ALL_SPEED_DUPLEX) ||
     (phy->autoneg_advertised == E1000_ALL_NOT_GIG) ||
     (phy->autoneg_advertised == E1000_ALL_10_SPEED)) {
  data |= IGP02E1000_PM_D3_LPLU;
  ret_val = phy->ops.write_reg(hw, IGP02E1000_PHY_POWER_MGMT,
          data);
  if (ret_val)
   return ret_val;


  ret_val = phy->ops.read_reg(hw, IGP01E1000_PHY_PORT_CONFIG,
         &data);
  if (ret_val)
   return ret_val;

  data &= ~IGP01E1000_PSCFR_SMART_SPEED;
  ret_val = phy->ops.write_reg(hw, IGP01E1000_PHY_PORT_CONFIG,
          data);
 }

 return ret_val;
}
