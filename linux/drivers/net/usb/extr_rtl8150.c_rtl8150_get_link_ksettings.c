
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct TYPE_7__ {int supported; } ;
struct TYPE_6__ {void* duplex; scalar_t__ speed; int autoneg; int phy_address; int port; } ;
struct ethtool_link_ksettings {TYPE_2__ link_modes; TYPE_1__ base; } ;
struct TYPE_8__ {int phy; } ;
typedef TYPE_3__ rtl8150_t ;


 int ANLP ;
 int AUTONEG_DISABLE ;
 int AUTONEG_ENABLE ;
 int BMCR ;
 short BMCR_ANENABLE ;
 short BMCR_FULLDPLX ;
 short BMCR_SPEED100 ;
 void* DUPLEX_FULL ;
 void* DUPLEX_HALF ;
 short LPA_100FULL ;
 short LPA_100HALF ;
 short LPA_10FULL ;
 int PORT_TP ;
 scalar_t__ SPEED_10 ;
 scalar_t__ SPEED_100 ;
 scalar_t__ SUPPORTED_100baseT_Full ;
 scalar_t__ SUPPORTED_100baseT_Half ;
 scalar_t__ SUPPORTED_10baseT_Full ;
 scalar_t__ SUPPORTED_10baseT_Half ;
 scalar_t__ SUPPORTED_Autoneg ;
 scalar_t__ SUPPORTED_MII ;
 scalar_t__ SUPPORTED_TP ;
 int ethtool_convert_legacy_u32_to_link_mode (int ,scalar_t__) ;
 int get_registers (TYPE_3__*,int ,int,short*) ;
 TYPE_3__* netdev_priv (struct net_device*) ;

__attribute__((used)) static int rtl8150_get_link_ksettings(struct net_device *netdev,
          struct ethtool_link_ksettings *ecmd)
{
 rtl8150_t *dev = netdev_priv(netdev);
 short lpa, bmcr;
 u32 supported;

 supported = (SUPPORTED_10baseT_Half |
     SUPPORTED_10baseT_Full |
     SUPPORTED_100baseT_Half |
     SUPPORTED_100baseT_Full |
     SUPPORTED_Autoneg |
     SUPPORTED_TP | SUPPORTED_MII);
 ecmd->base.port = PORT_TP;
 ecmd->base.phy_address = dev->phy;
 get_registers(dev, BMCR, 2, &bmcr);
 get_registers(dev, ANLP, 2, &lpa);
 if (bmcr & BMCR_ANENABLE) {
  u32 speed = ((lpa & (LPA_100HALF | LPA_100FULL)) ?
        SPEED_100 : SPEED_10);
  ecmd->base.speed = speed;
  ecmd->base.autoneg = AUTONEG_ENABLE;
  if (speed == SPEED_100)
   ecmd->base.duplex = (lpa & LPA_100FULL) ?
       DUPLEX_FULL : DUPLEX_HALF;
  else
   ecmd->base.duplex = (lpa & LPA_10FULL) ?
       DUPLEX_FULL : DUPLEX_HALF;
 } else {
  ecmd->base.autoneg = AUTONEG_DISABLE;
  ecmd->base.speed = ((bmcr & BMCR_SPEED100) ?
          SPEED_100 : SPEED_10);
  ecmd->base.duplex = (bmcr & BMCR_FULLDPLX) ?
      DUPLEX_FULL : DUPLEX_HALF;
 }

 ethtool_convert_legacy_u32_to_link_mode(ecmd->link_modes.supported,
      supported);

 return 0;
}
