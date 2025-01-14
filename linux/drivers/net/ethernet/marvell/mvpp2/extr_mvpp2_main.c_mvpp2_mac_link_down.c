
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phylink_config {int dev; } ;
struct net_device {int dummy; } ;
struct mvpp2_port {scalar_t__ base; } ;
typedef int phy_interface_t ;


 int MVPP22_XLG_CTRL0_FORCE_LINK_DOWN ;
 int MVPP22_XLG_CTRL0_FORCE_LINK_PASS ;
 scalar_t__ MVPP22_XLG_CTRL0_REG ;
 scalar_t__ MVPP2_GMAC_AUTONEG_CONFIG ;
 int MVPP2_GMAC_FORCE_LINK_DOWN ;
 int MVPP2_GMAC_FORCE_LINK_PASS ;
 int mvpp2_egress_disable (struct mvpp2_port*) ;
 int mvpp2_ingress_disable (struct mvpp2_port*) ;
 scalar_t__ mvpp2_is_xlg (int ) ;
 int mvpp2_port_disable (struct mvpp2_port*) ;
 struct mvpp2_port* netdev_priv (struct net_device*) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 int phylink_autoneg_inband (unsigned int) ;
 int readl (scalar_t__) ;
 struct net_device* to_net_dev (int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void mvpp2_mac_link_down(struct phylink_config *config,
    unsigned int mode, phy_interface_t interface)
{
 struct net_device *dev = to_net_dev(config->dev);
 struct mvpp2_port *port = netdev_priv(dev);
 u32 val;

 if (!phylink_autoneg_inband(mode)) {
  if (mvpp2_is_xlg(interface)) {
   val = readl(port->base + MVPP22_XLG_CTRL0_REG);
   val &= ~MVPP22_XLG_CTRL0_FORCE_LINK_PASS;
   val |= MVPP22_XLG_CTRL0_FORCE_LINK_DOWN;
   writel(val, port->base + MVPP22_XLG_CTRL0_REG);
  } else {
   val = readl(port->base + MVPP2_GMAC_AUTONEG_CONFIG);
   val &= ~MVPP2_GMAC_FORCE_LINK_PASS;
   val |= MVPP2_GMAC_FORCE_LINK_DOWN;
   writel(val, port->base + MVPP2_GMAC_AUTONEG_CONFIG);
  }
 }

 netif_tx_stop_all_queues(dev);
 mvpp2_egress_disable(port);
 mvpp2_ingress_disable(port);

 mvpp2_port_disable(port);
}
