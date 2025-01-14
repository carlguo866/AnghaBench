
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct mii_bus {int dummy; } ;


 int LTQ_ETOP_MDIO ;
 int MDIO_ADDR_MASK ;
 int MDIO_ADDR_OFFSET ;
 int MDIO_REG_MASK ;
 int MDIO_REG_OFFSET ;
 int MDIO_REQUEST ;
 int ltq_etop_r32 (int ) ;
 int ltq_etop_w32 (int,int ) ;

__attribute__((used)) static int
ltq_etop_mdio_wr(struct mii_bus *bus, int phy_addr, int phy_reg, u16 phy_data)
{
 u32 val = MDIO_REQUEST |
  ((phy_addr & MDIO_ADDR_MASK) << MDIO_ADDR_OFFSET) |
  ((phy_reg & MDIO_REG_MASK) << MDIO_REG_OFFSET) |
  phy_data;

 while (ltq_etop_r32(LTQ_ETOP_MDIO) & MDIO_REQUEST)
  ;
 ltq_etop_w32(val, LTQ_ETOP_MDIO);
 return 0;
}
