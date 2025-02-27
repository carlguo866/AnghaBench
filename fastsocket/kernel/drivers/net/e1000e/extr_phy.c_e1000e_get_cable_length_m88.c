
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct e1000_phy_info {int min_cable_length; int max_cable_length; int cable_length; } ;
struct e1000_hw {struct e1000_phy_info phy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ E1000_ERR_PHY ;
 int M88E1000_CABLE_LENGTH_TABLE_SIZE ;
 int M88E1000_PHY_SPEC_STATUS ;
 int M88E1000_PSSR_CABLE_LENGTH ;
 int M88E1000_PSSR_CABLE_LENGTH_SHIFT ;
 void** e1000_m88_cable_length_table ;
 scalar_t__ e1e_rphy (struct e1000_hw*,int ,int*) ;

s32 e1000e_get_cable_length_m88(struct e1000_hw *hw)
{
 struct e1000_phy_info *phy = &hw->phy;
 s32 ret_val;
 u16 phy_data, index;

 ret_val = e1e_rphy(hw, M88E1000_PHY_SPEC_STATUS, &phy_data);
 if (ret_val)
  return ret_val;

 index = ((phy_data & M88E1000_PSSR_CABLE_LENGTH) >>
   M88E1000_PSSR_CABLE_LENGTH_SHIFT);

 if (index >= M88E1000_CABLE_LENGTH_TABLE_SIZE - 1)
  return -E1000_ERR_PHY;

 phy->min_cable_length = e1000_m88_cable_length_table[index];
 phy->max_cable_length = e1000_m88_cable_length_table[index + 1];

 phy->cable_length = (phy->min_cable_length + phy->max_cable_length) / 2;

 return 0;
}
