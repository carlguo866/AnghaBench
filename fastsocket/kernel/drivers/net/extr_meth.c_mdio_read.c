
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct meth_private {int phy_addr; } ;
struct TYPE_3__ {int phy_regs; int phy_trans_go; } ;
struct TYPE_4__ {TYPE_1__ eth; } ;


 unsigned long MDIO_DATA_MASK ;
 int WAIT_FOR_PHY (unsigned long) ;
 TYPE_2__* mace ;
 int udelay (int) ;

__attribute__((used)) static unsigned long mdio_read(struct meth_private *priv, unsigned long phyreg)
{
 unsigned long rval;
 WAIT_FOR_PHY(rval);
 mace->eth.phy_regs = (priv->phy_addr << 5) | (phyreg & 0x1f);
 udelay(25);
 mace->eth.phy_trans_go = 1;
 udelay(25);
 WAIT_FOR_PHY(rval);
 return rval & MDIO_DATA_MASK;
}
