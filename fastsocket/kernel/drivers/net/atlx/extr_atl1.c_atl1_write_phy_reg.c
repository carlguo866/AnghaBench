
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct atl1_hw {scalar_t__ hw_addr; } ;
typedef int s32 ;


 int ATLX_ERR_PHY ;
 int MDIO_BUSY ;
 int MDIO_CLK_25_4 ;
 int MDIO_CLK_SEL_SHIFT ;
 int MDIO_DATA_MASK ;
 int MDIO_DATA_SHIFT ;
 int MDIO_REG_ADDR_MASK ;
 int MDIO_REG_ADDR_SHIFT ;
 int MDIO_START ;
 int MDIO_SUP_PREAMBLE ;
 int MDIO_WAIT_TIMES ;
 scalar_t__ REG_MDIO_CTRL ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static s32 atl1_write_phy_reg(struct atl1_hw *hw, u32 reg_addr, u16 phy_data)
{
 int i;
 u32 val;

 val = ((u32) (phy_data & MDIO_DATA_MASK)) << MDIO_DATA_SHIFT |
     (reg_addr & MDIO_REG_ADDR_MASK) << MDIO_REG_ADDR_SHIFT |
     MDIO_SUP_PREAMBLE |
     MDIO_START | MDIO_CLK_25_4 << MDIO_CLK_SEL_SHIFT;
 iowrite32(val, hw->hw_addr + REG_MDIO_CTRL);
 ioread32(hw->hw_addr + REG_MDIO_CTRL);

 for (i = 0; i < MDIO_WAIT_TIMES; i++) {
  udelay(2);
  val = ioread32(hw->hw_addr + REG_MDIO_CTRL);
  if (!(val & (MDIO_START | MDIO_BUSY)))
   break;
 }

 if (!(val & (MDIO_START | MDIO_BUSY)))
  return 0;

 return ATLX_ERR_PHY;
}
