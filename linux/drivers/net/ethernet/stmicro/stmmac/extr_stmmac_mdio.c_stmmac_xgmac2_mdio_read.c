
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct stmmac_priv {int clk_csr; scalar_t__ ioaddr; TYPE_2__* hw; } ;
struct net_device {int dummy; } ;
struct mii_bus {struct net_device* priv; } ;
struct TYPE_3__ {unsigned int addr; unsigned int data; int clk_csr_shift; int clk_csr_mask; } ;
struct TYPE_4__ {TYPE_1__ mii; } ;


 int EBUSY ;
 int EOPNOTSUPP ;
 int GENMASK (int,int ) ;
 int MII_ADDR_C45 ;
 int MII_XGMAC_BUSY ;
 int MII_XGMAC_READ ;
 int MII_XGMAC_SADDR ;
 struct stmmac_priv* netdev_priv (struct net_device*) ;
 int readl (scalar_t__) ;
 scalar_t__ readl_poll_timeout (scalar_t__,int,int,int,int) ;
 int stmmac_xgmac2_c22_format (struct stmmac_priv*,int,int,int*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int stmmac_xgmac2_mdio_read(struct mii_bus *bus, int phyaddr, int phyreg)
{
 struct net_device *ndev = bus->priv;
 struct stmmac_priv *priv = netdev_priv(ndev);
 unsigned int mii_address = priv->hw->mii.addr;
 unsigned int mii_data = priv->hw->mii.data;
 u32 tmp, addr, value = MII_XGMAC_BUSY;
 int ret;

 if (phyreg & MII_ADDR_C45) {
  return -EOPNOTSUPP;
 } else {
  ret = stmmac_xgmac2_c22_format(priv, phyaddr, phyreg, &addr);
  if (ret)
   return ret;
 }

 value |= (priv->clk_csr << priv->hw->mii.clk_csr_shift)
  & priv->hw->mii.clk_csr_mask;
 value |= MII_XGMAC_SADDR | MII_XGMAC_READ;


 if (readl_poll_timeout(priv->ioaddr + mii_data, tmp,
          !(tmp & MII_XGMAC_BUSY), 100, 10000))
  return -EBUSY;


 writel(addr, priv->ioaddr + mii_address);
 writel(value, priv->ioaddr + mii_data);


 if (readl_poll_timeout(priv->ioaddr + mii_data, tmp,
          !(tmp & MII_XGMAC_BUSY), 100, 10000))
  return -EBUSY;


 return readl(priv->ioaddr + mii_data) & GENMASK(15, 0);
}
