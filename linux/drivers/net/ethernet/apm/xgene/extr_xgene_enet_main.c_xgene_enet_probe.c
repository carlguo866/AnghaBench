
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgene_enet_pdata {int enet_id; scalar_t__ phy_mode; scalar_t__ mdio_driver; int stats_lock; int link_work; TYPE_1__* mac_ops; int mss_lock; int mac_lock; struct net_device* ndev; struct platform_device* pdev; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct net_device {int features; int hw_features; int * netdev_ops; } ;
struct acpi_device_id {scalar_t__ driver_data; } ;
typedef enum xgene_enet_id { ____Placeholder_xgene_enet_id } xgene_enet_id ;
struct TYPE_2__ {void (* link_state ) (struct work_struct*) ;} ;


 int DMA_BIT_MASK (int) ;
 int ENODEV ;
 int ENOMEM ;
 int INIT_DELAYED_WORK (int *,void (*) (struct work_struct*)) ;
 int NETIF_F_GRO ;
 int NETIF_F_GSO ;
 int NETIF_F_IP_CSUM ;
 int NETIF_F_RXCSUM ;
 int NETIF_F_SG ;
 int NETIF_F_TSO ;
 scalar_t__ PHY_INTERFACE_MODE_XGMII ;
 int SET_NETDEV_DEV (struct net_device*,struct device*) ;
 int XGENE_NUM_RX_RING ;
 int XGENE_NUM_TX_RING ;
 struct acpi_device_id* acpi_match_device (int ,struct device*) ;
 struct net_device* alloc_etherdev_mqs (int,int ,int ) ;
 int dma_coerce_mask_and_coherent (struct device*,int ) ;
 int free_netdev (struct net_device*) ;
 int netdev_err (struct net_device*,char*) ;
 struct xgene_enet_pdata* netdev_priv (struct net_device*) ;
 struct of_device_id* of_match_device (int ,struct device*) ;
 scalar_t__ phy_interface_mode_is_rgmii (scalar_t__) ;
 int platform_set_drvdata (struct platform_device*,struct xgene_enet_pdata*) ;
 int register_netdev (struct net_device*) ;
 int spin_lock_init (int *) ;
 int xgene_enet_acpi_match ;
 int xgene_enet_check_phy_handle (struct xgene_enet_pdata*) ;
 int xgene_enet_delete_desc_rings (struct xgene_enet_pdata*) ;
 int xgene_enet_get_resources (struct xgene_enet_pdata*) ;
 int xgene_enet_init_hw (struct xgene_enet_pdata*) ;
 int xgene_enet_mdio_config (struct xgene_enet_pdata*) ;
 int xgene_enet_mdio_remove (struct xgene_enet_pdata*) ;
 int xgene_enet_napi_add (struct xgene_enet_pdata*) ;
 int xgene_enet_of_match ;
 int xgene_enet_phy_disconnect (struct xgene_enet_pdata*) ;
 int xgene_enet_set_ethtool_ops (struct net_device*) ;
 int xgene_enet_setup_ops (struct xgene_enet_pdata*) ;
 int xgene_extd_stats_init (struct xgene_enet_pdata*) ;
 int xgene_ndev_ops ;

__attribute__((used)) static int xgene_enet_probe(struct platform_device *pdev)
{
 struct net_device *ndev;
 struct xgene_enet_pdata *pdata;
 struct device *dev = &pdev->dev;
 void (*link_state)(struct work_struct *);
 const struct of_device_id *of_id;
 int ret;

 ndev = alloc_etherdev_mqs(sizeof(struct xgene_enet_pdata),
      XGENE_NUM_RX_RING, XGENE_NUM_TX_RING);
 if (!ndev)
  return -ENOMEM;

 pdata = netdev_priv(ndev);

 pdata->pdev = pdev;
 pdata->ndev = ndev;
 SET_NETDEV_DEV(ndev, dev);
 platform_set_drvdata(pdev, pdata);
 ndev->netdev_ops = &xgene_ndev_ops;
 xgene_enet_set_ethtool_ops(ndev);
 ndev->features |= NETIF_F_IP_CSUM |
     NETIF_F_GSO |
     NETIF_F_GRO |
     NETIF_F_SG;

 of_id = of_match_device(xgene_enet_of_match, &pdev->dev);
 if (of_id) {
  pdata->enet_id = (enum xgene_enet_id)of_id->data;
 }
 if (!pdata->enet_id) {
  ret = -ENODEV;
  goto err;
 }

 ret = xgene_enet_get_resources(pdata);
 if (ret)
  goto err;

 xgene_enet_setup_ops(pdata);
 spin_lock_init(&pdata->mac_lock);

 if (pdata->phy_mode == PHY_INTERFACE_MODE_XGMII) {
  ndev->features |= NETIF_F_TSO | NETIF_F_RXCSUM;
  spin_lock_init(&pdata->mss_lock);
 }
 ndev->hw_features = ndev->features;

 ret = dma_coerce_mask_and_coherent(dev, DMA_BIT_MASK(64));
 if (ret) {
  netdev_err(ndev, "No usable DMA configuration\n");
  goto err;
 }

 xgene_enet_check_phy_handle(pdata);

 ret = xgene_enet_init_hw(pdata);
 if (ret)
  goto err2;

 link_state = pdata->mac_ops->link_state;
 if (pdata->phy_mode == PHY_INTERFACE_MODE_XGMII) {
  INIT_DELAYED_WORK(&pdata->link_work, link_state);
 } else if (!pdata->mdio_driver) {
  if (phy_interface_mode_is_rgmii(pdata->phy_mode))
   ret = xgene_enet_mdio_config(pdata);
  else
   INIT_DELAYED_WORK(&pdata->link_work, link_state);

  if (ret)
   goto err1;
 }

 spin_lock_init(&pdata->stats_lock);
 ret = xgene_extd_stats_init(pdata);
 if (ret)
  goto err1;

 xgene_enet_napi_add(pdata);
 ret = register_netdev(ndev);
 if (ret) {
  netdev_err(ndev, "Failed to register netdev\n");
  goto err1;
 }

 return 0;

err1:





 xgene_enet_delete_desc_rings(pdata);

err2:
 if (pdata->mdio_driver)
  xgene_enet_phy_disconnect(pdata);
 else if (phy_interface_mode_is_rgmii(pdata->phy_mode))
  xgene_enet_mdio_remove(pdata);
err:
 free_netdev(ndev);
 return ret;
}
