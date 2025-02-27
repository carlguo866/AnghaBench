
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ssb_device_id {int dummy; } ;
struct ssb_device {int bus; int dev; int dma_dev; int irq; } ;
struct net_device {int dev_addr; int * ethtool_ops; int irq; int max_mtu; int min_mtu; int watchdog_timeo; int * netdev_ops; int features; } ;
struct TYPE_4__ {scalar_t__ phy_id; int phy_id_mask; int reg_num_mask; int mdio_write; int mdio_read; struct net_device* dev; } ;
struct TYPE_3__ {int syncp; } ;
struct b44 {scalar_t__ phy_addr; int flags; int napi; TYPE_2__ mii_if; int tx_pending; int rx_pending; TYPE_1__ hw_stats; int lock; int msg_enable; scalar_t__ force_copybreak; struct net_device* dev; struct ssb_device* sdev; } ;


 int B44_CHIP_RESET_FULL ;
 int B44_DEF_MSG_ENABLE ;
 int B44_DEF_RX_RING_PENDING ;
 int B44_DEF_TX_RING_PENDING ;
 int B44_FLAG_ADV_100FULL ;
 int B44_FLAG_ADV_100HALF ;
 int B44_FLAG_ADV_10FULL ;
 int B44_FLAG_ADV_10HALF ;
 int B44_FLAG_EXTERNAL_PHY ;
 int B44_FLAG_PAUSE_AUTO ;
 int B44_MAX_MTU ;
 int B44_MIN_MTU ;
 scalar_t__ B44_PHY_ADDR_NO_PHY ;
 int B44_TX_TIMEOUT ;
 int DMA_BIT_MASK (int) ;
 int DRV_DESCRIPTION ;
 int DRV_MODULE_VERSION ;
 int ENODEV ;
 int ENOMEM ;
 int SET_NETDEV_DEV (struct net_device*,int ) ;
 struct net_device* alloc_etherdev (int) ;
 int b44_chip_reset (struct b44*,int ) ;
 int b44_debug ;
 int b44_ethtool_ops ;
 int b44_get_invariants (struct b44*) ;
 int b44_mdio_read_mii ;
 int b44_mdio_write_mii ;
 int b44_netdev_ops ;
 int b44_phy_reset (struct b44*) ;
 int b44_poll ;
 int b44_register_phy_one (struct b44*) ;
 int dev_err (int ,char*) ;
 int device_set_wakeup_capable (int ,int) ;
 scalar_t__ dma_set_mask_and_coherent (int ,int ) ;
 int free_netdev (struct net_device*) ;
 int instance ;
 int netdev_info (struct net_device*,char*,int ,int ) ;
 struct b44* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_msg_init (int ,int ) ;
 int netif_napi_add (struct net_device*,int *,int ,int) ;
 int netif_napi_del (int *) ;
 int pr_info_once (char*,int ,int ) ;
 int register_netdev (struct net_device*) ;
 int spin_lock_init (int *) ;
 int ssb_bus_may_powerdown (int ) ;
 int ssb_bus_powerup (int ,int ) ;
 int ssb_set_drvdata (struct ssb_device*,struct net_device*) ;
 int u64_stats_init (int *) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int b44_init_one(struct ssb_device *sdev,
   const struct ssb_device_id *ent)
{
 struct net_device *dev;
 struct b44 *bp;
 int err;

 instance++;

 pr_info_once("%s version %s\n", DRV_DESCRIPTION, DRV_MODULE_VERSION);

 dev = alloc_etherdev(sizeof(*bp));
 if (!dev) {
  err = -ENOMEM;
  goto out;
 }

 SET_NETDEV_DEV(dev, sdev->dev);


 dev->features |= 0;

 bp = netdev_priv(dev);
 bp->sdev = sdev;
 bp->dev = dev;
 bp->force_copybreak = 0;

 bp->msg_enable = netif_msg_init(b44_debug, B44_DEF_MSG_ENABLE);

 spin_lock_init(&bp->lock);
 u64_stats_init(&bp->hw_stats.syncp);

 bp->rx_pending = B44_DEF_RX_RING_PENDING;
 bp->tx_pending = B44_DEF_TX_RING_PENDING;

 dev->netdev_ops = &b44_netdev_ops;
 netif_napi_add(dev, &bp->napi, b44_poll, 64);
 dev->watchdog_timeo = B44_TX_TIMEOUT;
 dev->min_mtu = B44_MIN_MTU;
 dev->max_mtu = B44_MAX_MTU;
 dev->irq = sdev->irq;
 dev->ethtool_ops = &b44_ethtool_ops;

 err = ssb_bus_powerup(sdev->bus, 0);
 if (err) {
  dev_err(sdev->dev,
   "Failed to powerup the bus\n");
  goto err_out_free_dev;
 }

 if (dma_set_mask_and_coherent(sdev->dma_dev, DMA_BIT_MASK(30))) {
  dev_err(sdev->dev,
   "Required 30BIT DMA mask unsupported by the system\n");
  goto err_out_powerdown;
 }

 err = b44_get_invariants(bp);
 if (err) {
  dev_err(sdev->dev,
   "Problem fetching invariants of chip, aborting\n");
  goto err_out_powerdown;
 }

 if (bp->phy_addr == B44_PHY_ADDR_NO_PHY) {
  dev_err(sdev->dev, "No PHY present on this MAC, aborting\n");
  err = -ENODEV;
  goto err_out_powerdown;
 }

 bp->mii_if.dev = dev;
 bp->mii_if.mdio_read = b44_mdio_read_mii;
 bp->mii_if.mdio_write = b44_mdio_write_mii;
 bp->mii_if.phy_id = bp->phy_addr;
 bp->mii_if.phy_id_mask = 0x1f;
 bp->mii_if.reg_num_mask = 0x1f;


 bp->flags |= (B44_FLAG_ADV_10HALF | B44_FLAG_ADV_10FULL |
        B44_FLAG_ADV_100HALF | B44_FLAG_ADV_100FULL);


 bp->flags |= B44_FLAG_PAUSE_AUTO;

 err = register_netdev(dev);
 if (err) {
  dev_err(sdev->dev, "Cannot register net device, aborting\n");
  goto err_out_powerdown;
 }

 netif_carrier_off(dev);

 ssb_set_drvdata(sdev, dev);




 b44_chip_reset(bp, B44_CHIP_RESET_FULL);


 err = b44_phy_reset(bp);
 if (err < 0) {
  dev_err(sdev->dev, "phy reset failed\n");
  goto err_out_unregister_netdev;
 }

 if (bp->flags & B44_FLAG_EXTERNAL_PHY) {
  err = b44_register_phy_one(bp);
  if (err) {
   dev_err(sdev->dev, "Cannot register PHY, aborting\n");
   goto err_out_unregister_netdev;
  }
 }

 device_set_wakeup_capable(sdev->dev, 1);
 netdev_info(dev, "%s %pM\n", DRV_DESCRIPTION, dev->dev_addr);

 return 0;

err_out_unregister_netdev:
 unregister_netdev(dev);
err_out_powerdown:
 ssb_bus_may_powerdown(sdev->bus);

err_out_free_dev:
 netif_napi_del(&bp->napi);
 free_netdev(dev);

out:
 return err;
}
