
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usbnet {int dummy; } ;
struct net_device {int dummy; } ;
typedef int __u16 ;


 int AX_ACCESS_PHY ;
 int ax88179_write_cmd (struct usbnet*,int ,int,int ,int,int *) ;
 struct usbnet* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ax88179_mdio_write(struct net_device *netdev, int phy_id, int loc,
          int val)
{
 struct usbnet *dev = netdev_priv(netdev);
 u16 res = (u16) val;

 ax88179_write_cmd(dev, AX_ACCESS_PHY, phy_id, (__u16)loc, 2, &res);
}
