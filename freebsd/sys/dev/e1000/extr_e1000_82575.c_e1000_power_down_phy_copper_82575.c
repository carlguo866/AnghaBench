
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ (* check_reset_block ) (struct e1000_hw*) ;} ;
struct e1000_phy_info {TYPE_1__ ops; } ;
struct e1000_hw {struct e1000_phy_info phy; } ;


 scalar_t__ e1000_enable_mng_pass_thru (struct e1000_hw*) ;
 int e1000_power_down_phy_copper (struct e1000_hw*) ;
 scalar_t__ stub1 (struct e1000_hw*) ;

__attribute__((used)) static void e1000_power_down_phy_copper_82575(struct e1000_hw *hw)
{
 struct e1000_phy_info *phy = &hw->phy;

 if (!(phy->ops.check_reset_block))
  return;


 if (!(e1000_enable_mng_pass_thru(hw) || phy->ops.check_reset_block(hw)))
  e1000_power_down_phy_copper(hw);

 return;
}
