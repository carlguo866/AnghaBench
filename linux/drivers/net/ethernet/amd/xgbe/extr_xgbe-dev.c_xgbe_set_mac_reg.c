
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xgbe_prv_data {int netdev; } ;
struct netdev_hw_addr {int * addr; } ;


 int AE ;
 int MAC_MACA1HR ;
 scalar_t__ MAC_MACA_INC ;
 int XGMAC_IOWRITE (struct xgbe_prv_data*,unsigned int,unsigned int) ;
 int XGMAC_SET_BITS (unsigned int,int ,int ,int) ;
 int drv ;
 int netif_dbg (struct xgbe_prv_data*,int ,int ,char*,int *,unsigned int) ;

__attribute__((used)) static void xgbe_set_mac_reg(struct xgbe_prv_data *pdata,
        struct netdev_hw_addr *ha, unsigned int *mac_reg)
{
 unsigned int mac_addr_hi, mac_addr_lo;
 u8 *mac_addr;

 mac_addr_lo = 0;
 mac_addr_hi = 0;

 if (ha) {
  mac_addr = (u8 *)&mac_addr_lo;
  mac_addr[0] = ha->addr[0];
  mac_addr[1] = ha->addr[1];
  mac_addr[2] = ha->addr[2];
  mac_addr[3] = ha->addr[3];
  mac_addr = (u8 *)&mac_addr_hi;
  mac_addr[0] = ha->addr[4];
  mac_addr[1] = ha->addr[5];

  netif_dbg(pdata, drv, pdata->netdev,
     "adding mac address %pM at %#x\n",
     ha->addr, *mac_reg);

  XGMAC_SET_BITS(mac_addr_hi, MAC_MACA1HR, AE, 1);
 }

 XGMAC_IOWRITE(pdata, *mac_reg, mac_addr_hi);
 *mac_reg += MAC_MACA_INC;
 XGMAC_IOWRITE(pdata, *mac_reg, mac_addr_lo);
 *mac_reg += MAC_MACA_INC;
}
