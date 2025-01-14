
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_13__ {int of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct net_device {unsigned long base_addr; scalar_t__ irq; int vlan_features; int hw_features; int features; int max_mtu; int * netdev_ops; } ;
struct fe_soc_data {int (* init_data ) (struct fe_soc_data*,struct net_device*) ;scalar_t__* reg_table; } ;
struct TYPE_12__ {int rx_ring_size; int frag_size; int rx_buf_size; } ;
struct TYPE_11__ {int tx_ring_size; } ;
struct fe_priv {int flags; int rx_napi; TYPE_2__ rx_ring; TYPE_1__ tx_ring; TYPE_4__* hw_stats; int pending_work; int msg_enable; struct fe_soc_data* soc; TYPE_3__* dev; struct net_device* netdev; int switch_np; int sysclk; int page_lock; } ;
struct clk {int dummy; } ;
struct TYPE_14__ {int syncp; int stats_lock; } ;


 int CONFIG_SOC_MT7621 ;
 int EADDRNOTAVAIL ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int ETH_DATA_LEN ;
 int FE_DEFAULT_MSG_ENABLE ;
 int FE_FLAG_CALIBRATE_CLK ;
 int FE_FLAG_HAS_SWITCH ;
 int FE_FLAG_NAPI_WEIGHT ;
 size_t FE_REG_FE_COUNTER_BASE ;
 size_t FE_REG_FE_DMA_VID_BASE ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ IS_ERR (struct clk*) ;
 int NETIF_F_HW_VLAN_CTAG_FILTER ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_HW_VLAN_CTAG_TX ;
 void* NUM_DMA_DESC ;
 int SET_NETDEV_DEV (struct net_device*,TYPE_3__*) ;
 struct net_device* alloc_etherdev (int) ;
 int clk_get_rate (struct clk*) ;
 int dev_err (TYPE_3__*,char*) ;
 int device_reset (TYPE_3__*) ;
 struct clk* devm_clk_get (TYPE_3__*,int *) ;
 struct clk* devm_ioremap_resource (TYPE_3__*,struct resource*) ;
 int devm_iounmap (TYPE_3__*,struct clk*) ;
 struct clk* fe_base ;
 int fe_max_buf_size (int ) ;
 int fe_max_frag_size (int ) ;
 int fe_msg_level ;
 int fe_netdev_ops ;
 int fe_pending_work ;
 int fe_poll ;
 scalar_t__* fe_reg_table ;
 int fe_set_ethtool_ops (struct net_device*) ;
 int free_netdev (struct net_device*) ;
 TYPE_4__* kzalloc (int,int ) ;
 struct fe_priv* netdev_priv (struct net_device*) ;
 int netif_info (struct fe_priv*,int ,struct net_device*,char*,unsigned long,scalar_t__) ;
 int netif_msg_init (int ,int ) ;
 int netif_napi_add (struct net_device*,int *,int ,int) ;
 int of_fe_match ;
 struct of_device_id* of_match_device (int ,TYPE_3__*) ;
 int of_parse_phandle (int ,char*,int ) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct net_device*) ;
 int probe ;
 int register_netdev (struct net_device*) ;
 int spin_lock_init (int *) ;
 int stub1 (struct fe_soc_data*,struct net_device*) ;
 int u64_stats_init (int *) ;

__attribute__((used)) static int fe_probe(struct platform_device *pdev)
{
 struct resource *res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 const struct of_device_id *match;
 struct fe_soc_data *soc;
 struct net_device *netdev;
 struct fe_priv *priv;
 struct clk *sysclk;
 int err, napi_weight;

 device_reset(&pdev->dev);

 match = of_match_device(of_fe_match, &pdev->dev);
 soc = (struct fe_soc_data *)match->data;

 if (soc->reg_table)
  fe_reg_table = soc->reg_table;
 else
  soc->reg_table = fe_reg_table;

 fe_base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(fe_base)) {
  err = -EADDRNOTAVAIL;
  goto err_out;
 }

 netdev = alloc_etherdev(sizeof(*priv));
 if (!netdev) {
  dev_err(&pdev->dev, "alloc_etherdev failed\n");
  err = -ENOMEM;
  goto err_iounmap;
 }

 SET_NETDEV_DEV(netdev, &pdev->dev);
 netdev->netdev_ops = &fe_netdev_ops;
 netdev->base_addr = (unsigned long)fe_base;

 netdev->irq = platform_get_irq(pdev, 0);
 if (netdev->irq < 0) {
  dev_err(&pdev->dev, "no IRQ resource found\n");
  err = -ENXIO;
  goto err_free_dev;
 }

 if (soc->init_data)
  soc->init_data(soc, netdev);
 netdev->vlan_features = netdev->hw_features &
    ~(NETIF_F_HW_VLAN_CTAG_TX |
      NETIF_F_HW_VLAN_CTAG_RX);
 netdev->features |= netdev->hw_features;

 if (IS_ENABLED(CONFIG_SOC_MT7621))
  netdev->max_mtu = 2048;


 if (fe_reg_table[FE_REG_FE_DMA_VID_BASE])
  netdev->features |= NETIF_F_HW_VLAN_CTAG_FILTER;

 priv = netdev_priv(netdev);
 spin_lock_init(&priv->page_lock);
 if (fe_reg_table[FE_REG_FE_COUNTER_BASE]) {
  priv->hw_stats = kzalloc(sizeof(*priv->hw_stats), GFP_KERNEL);
  if (!priv->hw_stats) {
   err = -ENOMEM;
   goto err_free_dev;
  }
  spin_lock_init(&priv->hw_stats->stats_lock);
 }

 sysclk = devm_clk_get(&pdev->dev, ((void*)0));
 if (!IS_ERR(sysclk)) {
  priv->sysclk = clk_get_rate(sysclk);
 } else if ((priv->flags & FE_FLAG_CALIBRATE_CLK)) {
  dev_err(&pdev->dev, "this soc needs a clk for calibration\n");
  err = -ENXIO;
  goto err_free_dev;
 }

 priv->switch_np = of_parse_phandle(pdev->dev.of_node, "mediatek,switch", 0);
 if ((priv->flags & FE_FLAG_HAS_SWITCH) && !priv->switch_np) {
  dev_err(&pdev->dev, "failed to read switch phandle\n");
  err = -ENODEV;
  goto err_free_dev;
 }

 priv->netdev = netdev;
 priv->dev = &pdev->dev;
 priv->soc = soc;
 priv->msg_enable = netif_msg_init(fe_msg_level, FE_DEFAULT_MSG_ENABLE);
 priv->rx_ring.frag_size = fe_max_frag_size(ETH_DATA_LEN);
 priv->rx_ring.rx_buf_size = fe_max_buf_size(priv->rx_ring.frag_size);
 priv->tx_ring.tx_ring_size = NUM_DMA_DESC;
 priv->rx_ring.rx_ring_size = NUM_DMA_DESC;
 INIT_WORK(&priv->pending_work, fe_pending_work);
 u64_stats_init(&priv->hw_stats->syncp);

 napi_weight = 16;
 if (priv->flags & FE_FLAG_NAPI_WEIGHT) {
  napi_weight *= 4;
  priv->tx_ring.tx_ring_size *= 4;
  priv->rx_ring.rx_ring_size *= 4;
 }
 netif_napi_add(netdev, &priv->rx_napi, fe_poll, napi_weight);
 fe_set_ethtool_ops(netdev);

 err = register_netdev(netdev);
 if (err) {
  dev_err(&pdev->dev, "error bringing up device\n");
  goto err_free_dev;
 }

 platform_set_drvdata(pdev, netdev);

 netif_info(priv, probe, netdev, "mediatek frame engine at 0x%08lx, irq %d\n",
     netdev->base_addr, netdev->irq);

 return 0;

err_free_dev:
 free_netdev(netdev);
err_iounmap:
 devm_iounmap(&pdev->dev, fe_base);
err_out:
 return err;
}
