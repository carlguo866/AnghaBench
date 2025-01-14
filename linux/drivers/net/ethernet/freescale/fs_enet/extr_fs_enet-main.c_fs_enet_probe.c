
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef struct clk const clk ;
typedef struct clk u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_6__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct of_device_id {TYPE_1__* data; } ;
struct net_device {int watchdog_timeo; int dev_addr; int name; int features; int * ethtool_ops; int * netdev_ops; } ;
struct fs_platform_info {int rx_ring; int tx_ring; int rx_copybreak; int napi_weight; int use_rmii; scalar_t__ phy_node; struct clk const* clk_per; int cp_command; } ;
struct fs_enet_private {char* mapped_as_page; int tx_ring; int rx_ring; TYPE_1__* ops; int napi; int timeout_work; scalar_t__ rx_bd_base; scalar_t__ tx_bd_base; scalar_t__ ring_base; int tx_lock; int lock; struct sk_buff** rx_skbuff; struct sk_buff** tx_skbuff; struct fs_platform_info* fpi; struct net_device* ndev; TYPE_2__* dev; } ;
struct TYPE_5__ {int (* setup_data ) (struct net_device*) ;int (* allocate_bd ) (struct net_device*) ;int (* cleanup_data ) (struct net_device*) ;int (* free_bd ) (struct net_device*) ;} ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HZ ;
 int INIT_WORK (int *,int ) ;
 int IS_ERR (struct clk const*) ;
 int IS_FEC (struct of_device_id const*) ;
 int NETIF_F_SG ;
 int RX_RING_SIZE ;
 int SET_NETDEV_DEV (struct net_device*,TYPE_2__*) ;
 int TX_RING_SIZE ;
 struct net_device* alloc_etherdev (int) ;
 int clk_disable_unprepare (struct clk const*) ;
 int clk_prepare_enable (struct clk const*) ;
 struct clk* devm_clk_get (TYPE_2__*,char*) ;
 int ether_addr_copy (int ,struct clk const*) ;
 int free_netdev (struct net_device*) ;
 int fs_enet_match ;
 int fs_enet_napi ;
 int fs_enet_netdev_ops ;
 int fs_ethtool_ops ;
 int fs_timeout_work ;
 int kfree (struct fs_platform_info*) ;
 struct fs_platform_info* kzalloc (int,int ) ;
 struct fs_enet_private* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_napi_add (struct net_device*,int *,int ,int) ;
 scalar_t__ of_device_is_compatible (int ,char*) ;
 struct clk* of_get_mac_address (int ) ;
 void* of_get_property (int ,char*,int*) ;
 struct of_device_id* of_match_device (int ,TYPE_2__*) ;
 scalar_t__ of_node_get (int ) ;
 int of_node_put (scalar_t__) ;
 scalar_t__ of_parse_phandle (int ,char*,int ) ;
 int of_phy_deregister_fixed_link (int ) ;
 scalar_t__ of_phy_is_fixed_link (int ) ;
 int of_phy_register_fixed_link (int ) ;
 int platform_set_drvdata (struct platform_device*,struct net_device*) ;
 int pr_info (char*,int ,int ) ;
 int register_netdev (struct net_device*) ;
 int spin_lock_init (int *) ;
 int strcmp (char*,char const*) ;
 int stub1 (struct net_device*) ;
 int stub2 (struct net_device*) ;
 int stub3 (struct net_device*) ;
 int stub4 (struct net_device*) ;

__attribute__((used)) static int fs_enet_probe(struct platform_device *ofdev)
{
 const struct of_device_id *match;
 struct net_device *ndev;
 struct fs_enet_private *fep;
 struct fs_platform_info *fpi;
 const u32 *data;
 struct clk *clk;
 int err;
 const u8 *mac_addr;
 const char *phy_connection_type;
 int privsize, len, ret = -ENODEV;

 match = of_match_device(fs_enet_match, &ofdev->dev);
 if (!match)
  return -EINVAL;

 fpi = kzalloc(sizeof(*fpi), GFP_KERNEL);
 if (!fpi)
  return -ENOMEM;

 if (!IS_FEC(match)) {
  data = of_get_property(ofdev->dev.of_node, "fsl,cpm-command", &len);
  if (!data || len != 4)
   goto out_free_fpi;

  fpi->cp_command = *data;
 }

 fpi->rx_ring = RX_RING_SIZE;
 fpi->tx_ring = TX_RING_SIZE;
 fpi->rx_copybreak = 240;
 fpi->napi_weight = 17;
 fpi->phy_node = of_parse_phandle(ofdev->dev.of_node, "phy-handle", 0);
 if (!fpi->phy_node && of_phy_is_fixed_link(ofdev->dev.of_node)) {
  err = of_phy_register_fixed_link(ofdev->dev.of_node);
  if (err)
   goto out_free_fpi;




  fpi->phy_node = of_node_get(ofdev->dev.of_node);
 }

 if (of_device_is_compatible(ofdev->dev.of_node, "fsl,mpc5125-fec")) {
  phy_connection_type = of_get_property(ofdev->dev.of_node,
      "phy-connection-type", ((void*)0));
  if (phy_connection_type && !strcmp("rmii", phy_connection_type))
   fpi->use_rmii = 1;
 }





 clk = devm_clk_get(&ofdev->dev, "per");
 if (!IS_ERR(clk)) {
  ret = clk_prepare_enable(clk);
  if (ret)
   goto out_deregister_fixed_link;

  fpi->clk_per = clk;
 }

 privsize = sizeof(*fep) +
            sizeof(struct sk_buff **) *
       (fpi->rx_ring + fpi->tx_ring) +
     sizeof(char) * fpi->tx_ring;

 ndev = alloc_etherdev(privsize);
 if (!ndev) {
  ret = -ENOMEM;
  goto out_put;
 }

 SET_NETDEV_DEV(ndev, &ofdev->dev);
 platform_set_drvdata(ofdev, ndev);

 fep = netdev_priv(ndev);
 fep->dev = &ofdev->dev;
 fep->ndev = ndev;
 fep->fpi = fpi;
 fep->ops = match->data;

 ret = fep->ops->setup_data(ndev);
 if (ret)
  goto out_free_dev;

 fep->rx_skbuff = (struct sk_buff **)&fep[1];
 fep->tx_skbuff = fep->rx_skbuff + fpi->rx_ring;
 fep->mapped_as_page = (char *)(fep->rx_skbuff + fpi->rx_ring +
           fpi->tx_ring);

 spin_lock_init(&fep->lock);
 spin_lock_init(&fep->tx_lock);

 mac_addr = of_get_mac_address(ofdev->dev.of_node);
 if (!IS_ERR(mac_addr))
  ether_addr_copy(ndev->dev_addr, mac_addr);

 ret = fep->ops->allocate_bd(ndev);
 if (ret)
  goto out_cleanup_data;

 fep->rx_bd_base = fep->ring_base;
 fep->tx_bd_base = fep->rx_bd_base + fpi->rx_ring;

 fep->tx_ring = fpi->tx_ring;
 fep->rx_ring = fpi->rx_ring;

 ndev->netdev_ops = &fs_enet_netdev_ops;
 ndev->watchdog_timeo = 2 * HZ;
 INIT_WORK(&fep->timeout_work, fs_timeout_work);
 netif_napi_add(ndev, &fep->napi, fs_enet_napi, fpi->napi_weight);

 ndev->ethtool_ops = &fs_ethtool_ops;

 netif_carrier_off(ndev);

 ndev->features |= NETIF_F_SG;

 ret = register_netdev(ndev);
 if (ret)
  goto out_free_bd;

 pr_info("%s: fs_enet: %pM\n", ndev->name, ndev->dev_addr);

 return 0;

out_free_bd:
 fep->ops->free_bd(ndev);
out_cleanup_data:
 fep->ops->cleanup_data(ndev);
out_free_dev:
 free_netdev(ndev);
out_put:
 if (fpi->clk_per)
  clk_disable_unprepare(fpi->clk_per);
out_deregister_fixed_link:
 of_node_put(fpi->phy_node);
 if (of_phy_is_fixed_link(ofdev->dev.of_node))
  of_phy_deregister_fixed_link(ofdev->dev.of_node);
out_free_fpi:
 kfree(fpi);
 return ret;
}
