
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int (* write_reg ) (struct igc_hw*,int ,int ) ;int (* read_reg ) (struct igc_hw*,int ,int *) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct igc_hw {TYPE_2__ phy; } ;


 int MII_CR_POWER_DOWN ;
 int PHY_CONTROL ;
 int stub1 (struct igc_hw*,int ,int *) ;
 int stub2 (struct igc_hw*,int ,int ) ;

void igc_power_up_phy_copper(struct igc_hw *hw)
{
 u16 mii_reg = 0;


 hw->phy.ops.read_reg(hw, PHY_CONTROL, &mii_reg);
 mii_reg &= ~MII_CR_POWER_DOWN;
 hw->phy.ops.write_reg(hw, PHY_CONTROL, mii_reg);
}
