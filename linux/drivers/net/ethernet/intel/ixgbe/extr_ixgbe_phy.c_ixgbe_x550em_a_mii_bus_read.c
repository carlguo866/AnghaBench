
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mii_bus {struct ixgbe_adapter* priv; } ;
struct TYPE_2__ {int phy_semaphore_mask; } ;
struct ixgbe_hw {TYPE_1__ phy; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;
typedef int s32 ;


 int IXGBE_GSSR_PHY0_SM ;
 int IXGBE_GSSR_TOKEN_SM ;
 int ixgbe_mii_bus_read_generic (struct ixgbe_hw*,int,int,int) ;

__attribute__((used)) static s32 ixgbe_x550em_a_mii_bus_read(struct mii_bus *bus, int addr,
           int regnum)
{
 struct ixgbe_adapter *adapter = bus->priv;
 struct ixgbe_hw *hw = &adapter->hw;
 u32 gssr = hw->phy.phy_semaphore_mask;

 gssr |= IXGBE_GSSR_TOKEN_SM | IXGBE_GSSR_PHY0_SM;
 return ixgbe_mii_bus_read_generic(hw, addr, regnum, gssr);
}
