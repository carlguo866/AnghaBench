
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_5__ {int (* config_collision_dist ) (struct e1000_hw*) ;} ;
struct TYPE_6__ {TYPE_1__ ops; } ;
struct TYPE_7__ {scalar_t__ (* read_reg ) (struct e1000_hw*,int ,int*) ;} ;
struct TYPE_8__ {TYPE_3__ ops; } ;
struct e1000_hw {TYPE_2__ mac; TYPE_4__ phy; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_CTRL ;
 int E1000_CTRL_FD ;
 int E1000_CTRL_FRCDPX ;
 int E1000_CTRL_FRCSPD ;
 int E1000_CTRL_ILOS ;
 int E1000_CTRL_SPD_100 ;
 int E1000_CTRL_SPD_1000 ;
 int E1000_CTRL_SPD_SEL ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 scalar_t__ E1000_SUCCESS ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 int M88E1000_PHY_SPEC_STATUS ;
 int M88E1000_PSSR_1000MBS ;
 int M88E1000_PSSR_100MBS ;
 int M88E1000_PSSR_DPLX ;
 int M88E1000_PSSR_SPEED ;
 scalar_t__ stub1 (struct e1000_hw*,int ,int*) ;
 int stub2 (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_config_mac_to_phy_82543(struct e1000_hw *hw)
{
 u32 ctrl;
 s32 ret_val = E1000_SUCCESS;
 u16 phy_data;

 DEBUGFUNC("e1000_config_mac_to_phy_82543");

 if (!(hw->phy.ops.read_reg))
  goto out;


 ctrl = E1000_READ_REG(hw, E1000_CTRL);
 ctrl |= (E1000_CTRL_FRCSPD | E1000_CTRL_FRCDPX);
 ctrl &= ~(E1000_CTRL_SPD_SEL | E1000_CTRL_ILOS);





 ret_val = hw->phy.ops.read_reg(hw, M88E1000_PHY_SPEC_STATUS, &phy_data);
 if (ret_val)
  goto out;

 ctrl &= ~E1000_CTRL_FD;
 if (phy_data & M88E1000_PSSR_DPLX)
  ctrl |= E1000_CTRL_FD;

 hw->mac.ops.config_collision_dist(hw);





 if ((phy_data & M88E1000_PSSR_SPEED) == M88E1000_PSSR_1000MBS)
  ctrl |= E1000_CTRL_SPD_1000;
 else if ((phy_data & M88E1000_PSSR_SPEED) == M88E1000_PSSR_100MBS)
  ctrl |= E1000_CTRL_SPD_100;

 E1000_WRITE_REG(hw, E1000_CTRL, ctrl);

out:
 return ret_val;
}
