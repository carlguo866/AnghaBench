
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int (* adjust_link ) (struct net_device*) ;struct net_device* attached_dev; } ;
struct net_device {int dummy; } ;


 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int stub1 (struct net_device*) ;

__attribute__((used)) static void phy_link_change(struct phy_device *phydev, bool up, bool do_carrier)
{
 struct net_device *netdev = phydev->attached_dev;

 if (do_carrier) {
  if (up)
   netif_carrier_on(netdev);
  else
   netif_carrier_off(netdev);
 }
 phydev->adjust_link(netdev);
}
