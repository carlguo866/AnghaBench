
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int autoneg; int speed; int advertising; int supported; } ;
struct port_info {scalar_t__ port_type; scalar_t__ mod_type; scalar_t__ mdio_addr; TYPE_1__ link_cfg; } ;
struct net_device {int dummy; } ;
struct ethtool_cmd {scalar_t__ phy_address; scalar_t__ maxrxpkt; scalar_t__ maxtxpkt; int autoneg; int duplex; void* advertising; void* supported; scalar_t__ mdio_support; int transceiver; void* port; } ;


 int DUPLEX_FULL ;
 scalar_t__ FW_PORT_MOD_TYPE_TWINAX_ACTIVE ;
 scalar_t__ FW_PORT_MOD_TYPE_TWINAX_PASSIVE ;
 scalar_t__ FW_PORT_TYPE_BT_SGMII ;
 scalar_t__ FW_PORT_TYPE_BT_XAUI ;
 scalar_t__ FW_PORT_TYPE_BT_XFI ;
 scalar_t__ FW_PORT_TYPE_FIBER_XAUI ;
 scalar_t__ FW_PORT_TYPE_FIBER_XFI ;
 scalar_t__ FW_PORT_TYPE_SFP ;
 scalar_t__ MDIO_SUPPORTS_C22 ;
 scalar_t__ MDIO_SUPPORTS_C45 ;
 void* PORT_DA ;
 void* PORT_FIBRE ;
 void* PORT_OTHER ;
 void* PORT_TP ;
 int XCVR_EXTERNAL ;
 int XCVR_INTERNAL ;
 int ethtool_cmd_speed_set (struct ethtool_cmd*,int ) ;
 void* from_fw_linkcaps (scalar_t__,int ) ;
 struct port_info* netdev_priv (struct net_device*) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;

__attribute__((used)) static int get_settings(struct net_device *dev, struct ethtool_cmd *cmd)
{
 const struct port_info *p = netdev_priv(dev);

 if (p->port_type == FW_PORT_TYPE_BT_SGMII ||
     p->port_type == FW_PORT_TYPE_BT_XFI ||
     p->port_type == FW_PORT_TYPE_BT_XAUI)
  cmd->port = PORT_TP;
 else if (p->port_type == FW_PORT_TYPE_FIBER_XFI ||
   p->port_type == FW_PORT_TYPE_FIBER_XAUI)
  cmd->port = PORT_FIBRE;
 else if (p->port_type == FW_PORT_TYPE_SFP) {
  if (p->mod_type == FW_PORT_MOD_TYPE_TWINAX_PASSIVE ||
      p->mod_type == FW_PORT_MOD_TYPE_TWINAX_ACTIVE)
   cmd->port = PORT_DA;
  else
   cmd->port = PORT_FIBRE;
 } else
  cmd->port = PORT_OTHER;

 if (p->mdio_addr >= 0) {
  cmd->phy_address = p->mdio_addr;
  cmd->transceiver = XCVR_EXTERNAL;
  cmd->mdio_support = p->port_type == FW_PORT_TYPE_BT_SGMII ?
   MDIO_SUPPORTS_C22 : MDIO_SUPPORTS_C45;
 } else {
  cmd->phy_address = 0;
  cmd->transceiver = XCVR_INTERNAL;
  cmd->mdio_support = 0;
 }

 cmd->supported = from_fw_linkcaps(p->port_type, p->link_cfg.supported);
 cmd->advertising = from_fw_linkcaps(p->port_type,
         p->link_cfg.advertising);
 ethtool_cmd_speed_set(cmd,
         netif_carrier_ok(dev) ? p->link_cfg.speed : 0);
 cmd->duplex = DUPLEX_FULL;
 cmd->autoneg = p->link_cfg.autoneg;
 cmd->maxtxpkt = 0;
 cmd->maxrxpkt = 0;
 return 0;
}
