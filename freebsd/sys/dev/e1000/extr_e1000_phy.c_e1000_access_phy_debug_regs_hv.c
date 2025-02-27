
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct TYPE_2__ {scalar_t__ type; int addr; } ;
struct e1000_hw {TYPE_1__ phy; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 scalar_t__ I82577_ADDR_REG ;
 scalar_t__ I82578_ADDR_REG ;
 scalar_t__ e1000_phy_82578 ;
 scalar_t__ e1000_read_phy_reg_mdic (struct e1000_hw*,scalar_t__,int*) ;
 scalar_t__ e1000_write_phy_reg_mdic (struct e1000_hw*,scalar_t__,int) ;

__attribute__((used)) static s32 e1000_access_phy_debug_regs_hv(struct e1000_hw *hw, u32 offset,
       u16 *data, bool read)
{
 s32 ret_val;
 u32 addr_reg;
 u32 data_reg;

 DEBUGFUNC("e1000_access_phy_debug_regs_hv");


 addr_reg = ((hw->phy.type == e1000_phy_82578) ?
      I82578_ADDR_REG : I82577_ADDR_REG);
 data_reg = addr_reg + 1;


 hw->phy.addr = 2;


 ret_val = e1000_write_phy_reg_mdic(hw, addr_reg, (u16)offset & 0x3F);
 if (ret_val) {
  DEBUGOUT("Could not write the Address Offset port register\n");
  return ret_val;
 }


 if (read)
  ret_val = e1000_read_phy_reg_mdic(hw, data_reg, data);
 else
  ret_val = e1000_write_phy_reg_mdic(hw, data_reg, *data);

 if (ret_val)
  DEBUGOUT("Could not access the Data port register\n");

 return ret_val;
}
