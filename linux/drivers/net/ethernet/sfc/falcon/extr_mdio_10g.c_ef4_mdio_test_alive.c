
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int mmds; int prtad; } ;
struct ef4_nic {int mac_lock; TYPE_1__ mdio; int net_dev; } ;


 int EINVAL ;
 int MDIO_DEVID1 ;
 int MDIO_DEVID2 ;
 int __ffs (int ) ;
 int ef4_mdio_check_mmds (struct ef4_nic*,int ) ;
 int ef4_mdio_read (struct ef4_nic*,int,int ) ;
 int hw ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netif_err (struct ef4_nic*,int ,int ,char*,int ) ;

int ef4_mdio_test_alive(struct ef4_nic *efx)
{
 int rc;
 int devad = __ffs(efx->mdio.mmds);
 u16 physid1, physid2;

 mutex_lock(&efx->mac_lock);

 physid1 = ef4_mdio_read(efx, devad, MDIO_DEVID1);
 physid2 = ef4_mdio_read(efx, devad, MDIO_DEVID2);

 if ((physid1 == 0x0000) || (physid1 == 0xffff) ||
     (physid2 == 0x0000) || (physid2 == 0xffff)) {
  netif_err(efx, hw, efx->net_dev,
     "no MDIO PHY present with ID %d\n", efx->mdio.prtad);
  rc = -EINVAL;
 } else {
  rc = ef4_mdio_check_mmds(efx, efx->mdio.mmds);
 }

 mutex_unlock(&efx->mac_lock);
 return rc;
}
