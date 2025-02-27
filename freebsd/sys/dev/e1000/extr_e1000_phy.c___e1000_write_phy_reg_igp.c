
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int (* release ) (struct e1000_hw*) ;scalar_t__ (* acquire ) (struct e1000_hw*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ phy; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 scalar_t__ E1000_SUCCESS ;
 int IGP01E1000_PHY_PAGE_SELECT ;
 int MAX_PHY_MULTI_PAGE_REG ;
 int MAX_PHY_REG_ADDRESS ;
 scalar_t__ e1000_write_phy_reg_mdic (struct e1000_hw*,int,int ) ;
 scalar_t__ stub1 (struct e1000_hw*) ;
 int stub2 (struct e1000_hw*) ;

__attribute__((used)) static s32 __e1000_write_phy_reg_igp(struct e1000_hw *hw, u32 offset, u16 data,
         bool locked)
{
 s32 ret_val = E1000_SUCCESS;

 DEBUGFUNC("e1000_write_phy_reg_igp");

 if (!locked) {
  if (!hw->phy.ops.acquire)
   return E1000_SUCCESS;

  ret_val = hw->phy.ops.acquire(hw);
  if (ret_val)
   return ret_val;
 }

 if (offset > MAX_PHY_MULTI_PAGE_REG)
  ret_val = e1000_write_phy_reg_mdic(hw,
         IGP01E1000_PHY_PAGE_SELECT,
         (u16)offset);
 if (!ret_val)
  ret_val = e1000_write_phy_reg_mdic(hw, MAX_PHY_REG_ADDRESS &
             offset,
         data);
 if (!locked)
  hw->phy.ops.release(hw);

 return ret_val;
}
