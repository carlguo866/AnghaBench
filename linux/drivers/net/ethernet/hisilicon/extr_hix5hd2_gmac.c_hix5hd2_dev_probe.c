
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {struct device_node* of_node; } ;
struct platform_device {int name; struct device dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct net_device {scalar_t__ irq; int watchdog_timeo; int hw_features; int features; int vlan_features; int * ethtool_ops; int * netdev_ops; int priv_flags; int dev_addr; } ;
struct mii_bus {char* name; int id; struct device* parent; int write; int read; struct hix5hd2_priv* priv; } ;
struct hix5hd2_priv {unsigned long hw_cap; char const* base; char const* ctrl_base; char const* mac_core_clk; char const* mac_ifc_clk; char const* mac_core_rst; char const* mac_ifc_rst; char const* phy_rst; int phy_node; int napi; struct net_device* netdev; int tx_timeout_task; scalar_t__ phy_mode; struct mii_bus* bus; int phy_reset_delays; struct device* dev; } ;
struct device_node {int dummy; } ;


 int DELAYS_NUM ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 scalar_t__ HAS_CAP_TSO (unsigned long) ;
 int HZ ;
 int IFF_UNICAST_FLT ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (char const*) ;
 int MII_BUS_ID_SIZE ;
 int NAPI_POLL_WEIGHT ;
 int NETIF_F_HIGHDMA ;
 int NETIF_F_SG ;
 int PHY_RESET_DELAYS_PROPERTY ;
 int PTR_ERR (char const*) ;
 int SET_NETDEV_DEV (struct net_device*,struct device*) ;
 struct net_device* alloc_etherdev (int) ;
 int clk_disable_unprepare (char const*) ;
 int clk_prepare_enable (char const*) ;
 char* dev_name (struct device*) ;
 void* devm_clk_get (struct device*,char*) ;
 void* devm_platform_ioremap_resource (struct platform_device*,int) ;
 int devm_request_irq (struct device*,scalar_t__,int ,int ,int ,struct net_device*) ;
 void* devm_reset_control_get (struct device*,char*) ;
 int eth_hw_addr_random (struct net_device*) ;
 int ether_addr_copy (int ,char const*) ;
 int free_netdev (struct net_device*) ;
 int hix5hd2_destroy_hw_desc_queue (struct hix5hd2_priv*) ;
 int hix5hd2_destroy_sg_desc_queue (struct hix5hd2_priv*) ;
 int hix5hd2_ethtools_ops ;
 int hix5hd2_init_hw_desc_queue (struct hix5hd2_priv*) ;
 int hix5hd2_init_sg_desc_queue (struct hix5hd2_priv*) ;
 int hix5hd2_interrupt ;
 int hix5hd2_mac_core_reset (struct hix5hd2_priv*) ;
 int hix5hd2_mdio_read ;
 int hix5hd2_mdio_write ;
 int hix5hd2_netdev_ops ;
 int hix5hd2_of_match ;
 int hix5hd2_phy_reset (struct hix5hd2_priv*) ;
 int hix5hd2_poll ;
 int hix5hd2_tx_timeout_task ;
 int is_valid_ether_addr (int ) ;
 struct mii_bus* mdiobus_alloc () ;
 int mdiobus_free (struct mii_bus*) ;
 int mdiobus_unregister (struct mii_bus*) ;
 int netdev_err (struct net_device*,char*,...) ;
 struct hix5hd2_priv* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*,int ) ;
 int netif_napi_add (struct net_device*,int *,int ,int ) ;
 int netif_napi_del (int *) ;
 char* of_get_mac_address (struct device_node*) ;
 scalar_t__ of_get_phy_mode (struct device_node*) ;
 struct of_device_id* of_match_device (int ,struct device*) ;
 int of_mdiobus_register (struct mii_bus*,struct device_node*) ;
 int of_node_put (int ) ;
 int of_parse_phandle (struct device_node*,char*,int ) ;
 int of_property_read_u32_array (struct device_node*,int ,int ,int ) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct net_device*) ;
 int register_netdev (struct net_device*) ;
 int snprintf (int ,int ,char*,char*) ;

__attribute__((used)) static int hix5hd2_dev_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct device_node *node = dev->of_node;
 const struct of_device_id *of_id = ((void*)0);
 struct net_device *ndev;
 struct hix5hd2_priv *priv;
 struct mii_bus *bus;
 const char *mac_addr;
 int ret;

 ndev = alloc_etherdev(sizeof(struct hix5hd2_priv));
 if (!ndev)
  return -ENOMEM;

 platform_set_drvdata(pdev, ndev);

 priv = netdev_priv(ndev);
 priv->dev = dev;
 priv->netdev = ndev;

 of_id = of_match_device(hix5hd2_of_match, dev);
 if (!of_id) {
  ret = -EINVAL;
  goto out_free_netdev;
 }
 priv->hw_cap = (unsigned long)of_id->data;

 priv->base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(priv->base)) {
  ret = PTR_ERR(priv->base);
  goto out_free_netdev;
 }

 priv->ctrl_base = devm_platform_ioremap_resource(pdev, 1);
 if (IS_ERR(priv->ctrl_base)) {
  ret = PTR_ERR(priv->ctrl_base);
  goto out_free_netdev;
 }

 priv->mac_core_clk = devm_clk_get(&pdev->dev, "mac_core");
 if (IS_ERR(priv->mac_core_clk)) {
  netdev_err(ndev, "failed to get mac core clk\n");
  ret = -ENODEV;
  goto out_free_netdev;
 }

 ret = clk_prepare_enable(priv->mac_core_clk);
 if (ret < 0) {
  netdev_err(ndev, "failed to enable mac core clk %d\n", ret);
  goto out_free_netdev;
 }

 priv->mac_ifc_clk = devm_clk_get(&pdev->dev, "mac_ifc");
 if (IS_ERR(priv->mac_ifc_clk))
  priv->mac_ifc_clk = ((void*)0);

 ret = clk_prepare_enable(priv->mac_ifc_clk);
 if (ret < 0) {
  netdev_err(ndev, "failed to enable mac ifc clk %d\n", ret);
  goto out_disable_mac_core_clk;
 }

 priv->mac_core_rst = devm_reset_control_get(dev, "mac_core");
 if (IS_ERR(priv->mac_core_rst))
  priv->mac_core_rst = ((void*)0);
 hix5hd2_mac_core_reset(priv);

 priv->mac_ifc_rst = devm_reset_control_get(dev, "mac_ifc");
 if (IS_ERR(priv->mac_ifc_rst))
  priv->mac_ifc_rst = ((void*)0);

 priv->phy_rst = devm_reset_control_get(dev, "phy");
 if (IS_ERR(priv->phy_rst)) {
  priv->phy_rst = ((void*)0);
 } else {
  ret = of_property_read_u32_array(node,
       PHY_RESET_DELAYS_PROPERTY,
       priv->phy_reset_delays,
       DELAYS_NUM);
  if (ret)
   goto out_disable_clk;
  hix5hd2_phy_reset(priv);
 }

 bus = mdiobus_alloc();
 if (bus == ((void*)0)) {
  ret = -ENOMEM;
  goto out_disable_clk;
 }

 bus->priv = priv;
 bus->name = "hix5hd2_mii_bus";
 bus->read = hix5hd2_mdio_read;
 bus->write = hix5hd2_mdio_write;
 bus->parent = &pdev->dev;
 snprintf(bus->id, MII_BUS_ID_SIZE, "%s-mii", dev_name(&pdev->dev));
 priv->bus = bus;

 ret = of_mdiobus_register(bus, node);
 if (ret)
  goto err_free_mdio;

 priv->phy_mode = of_get_phy_mode(node);
 if ((int)priv->phy_mode < 0) {
  netdev_err(ndev, "not find phy-mode\n");
  ret = -EINVAL;
  goto err_mdiobus;
 }

 priv->phy_node = of_parse_phandle(node, "phy-handle", 0);
 if (!priv->phy_node) {
  netdev_err(ndev, "not find phy-handle\n");
  ret = -EINVAL;
  goto err_mdiobus;
 }

 ndev->irq = platform_get_irq(pdev, 0);
 if (ndev->irq <= 0) {
  netdev_err(ndev, "No irq resource\n");
  ret = -EINVAL;
  goto out_phy_node;
 }

 ret = devm_request_irq(dev, ndev->irq, hix5hd2_interrupt,
          0, pdev->name, ndev);
 if (ret) {
  netdev_err(ndev, "devm_request_irq failed\n");
  goto out_phy_node;
 }

 mac_addr = of_get_mac_address(node);
 if (!IS_ERR(mac_addr))
  ether_addr_copy(ndev->dev_addr, mac_addr);
 if (!is_valid_ether_addr(ndev->dev_addr)) {
  eth_hw_addr_random(ndev);
  netdev_warn(ndev, "using random MAC address %pM\n",
       ndev->dev_addr);
 }

 INIT_WORK(&priv->tx_timeout_task, hix5hd2_tx_timeout_task);
 ndev->watchdog_timeo = 6 * HZ;
 ndev->priv_flags |= IFF_UNICAST_FLT;
 ndev->netdev_ops = &hix5hd2_netdev_ops;
 ndev->ethtool_ops = &hix5hd2_ethtools_ops;
 SET_NETDEV_DEV(ndev, dev);

 if (HAS_CAP_TSO(priv->hw_cap))
  ndev->hw_features |= NETIF_F_SG;

 ndev->features |= ndev->hw_features | NETIF_F_HIGHDMA;
 ndev->vlan_features |= ndev->features;

 ret = hix5hd2_init_hw_desc_queue(priv);
 if (ret)
  goto out_phy_node;

 netif_napi_add(ndev, &priv->napi, hix5hd2_poll, NAPI_POLL_WEIGHT);

 if (HAS_CAP_TSO(priv->hw_cap)) {
  ret = hix5hd2_init_sg_desc_queue(priv);
  if (ret)
   goto out_destroy_queue;
 }

 ret = register_netdev(priv->netdev);
 if (ret) {
  netdev_err(ndev, "register_netdev failed!");
  goto out_destroy_queue;
 }

 clk_disable_unprepare(priv->mac_ifc_clk);
 clk_disable_unprepare(priv->mac_core_clk);

 return ret;

out_destroy_queue:
 if (HAS_CAP_TSO(priv->hw_cap))
  hix5hd2_destroy_sg_desc_queue(priv);
 netif_napi_del(&priv->napi);
 hix5hd2_destroy_hw_desc_queue(priv);
out_phy_node:
 of_node_put(priv->phy_node);
err_mdiobus:
 mdiobus_unregister(bus);
err_free_mdio:
 mdiobus_free(bus);
out_disable_clk:
 clk_disable_unprepare(priv->mac_ifc_clk);
out_disable_mac_core_clk:
 clk_disable_unprepare(priv->mac_core_clk);
out_free_netdev:
 free_netdev(ndev);

 return ret;
}
