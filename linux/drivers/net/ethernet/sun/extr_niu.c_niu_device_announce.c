
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int phy_type; } ;
struct niu {int flags; scalar_t__ mac_xcvr; TYPE_2__ vpd; TYPE_1__* parent; struct net_device* dev; } ;
struct net_device {int name; int dev_addr; } ;
struct TYPE_3__ {scalar_t__ plat_type; } ;


 scalar_t__ MAC_XCVR_MII ;
 scalar_t__ MAC_XCVR_PCS ;
 int NIU_FLAGS_10G ;
 int NIU_FLAGS_FIBER ;
 int NIU_FLAGS_XCVR_SERDES ;
 int NIU_FLAGS_XMAC ;
 scalar_t__ PLAT_TYPE_ATCA_CP3220 ;
 int pr_info (char*,int ,char*,...) ;

__attribute__((used)) static void niu_device_announce(struct niu *np)
{
 struct net_device *dev = np->dev;

 pr_info("%s: NIU Ethernet %pM\n", dev->name, dev->dev_addr);

 if (np->parent->plat_type == PLAT_TYPE_ATCA_CP3220) {
  pr_info("%s: Port type[%s] mode[%s:%s] XCVR[%s] phy[%s]\n",
    dev->name,
    (np->flags & NIU_FLAGS_XMAC ? "XMAC" : "BMAC"),
    (np->flags & NIU_FLAGS_10G ? "10G" : "1G"),
    (np->flags & NIU_FLAGS_FIBER ? "RGMII FIBER" : "SERDES"),
    (np->mac_xcvr == MAC_XCVR_MII ? "MII" :
     (np->mac_xcvr == MAC_XCVR_PCS ? "PCS" : "XPCS")),
    np->vpd.phy_type);
 } else {
  pr_info("%s: Port type[%s] mode[%s:%s] XCVR[%s] phy[%s]\n",
    dev->name,
    (np->flags & NIU_FLAGS_XMAC ? "XMAC" : "BMAC"),
    (np->flags & NIU_FLAGS_10G ? "10G" : "1G"),
    (np->flags & NIU_FLAGS_FIBER ? "FIBER" :
     (np->flags & NIU_FLAGS_XCVR_SERDES ? "SERDES" :
      "COPPER")),
    (np->mac_xcvr == MAC_XCVR_MII ? "MII" :
     (np->mac_xcvr == MAC_XCVR_PCS ? "PCS" : "XPCS")),
    np->vpd.phy_type);
 }
}
