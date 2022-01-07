
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {unsigned int flags; unsigned int gflags; scalar_t__ allmulti; int name; } ;


 int ASSERT_RTNL () ;
 int EOVERFLOW ;
 unsigned int IFF_ALLMULTI ;
 int __dev_notify_flags (struct net_device*,unsigned int,unsigned int) ;
 int dev_change_rx_flags (struct net_device*,unsigned int) ;
 int dev_set_rx_mode (struct net_device*) ;
 int pr_warn (char*,int ) ;

__attribute__((used)) static int __dev_set_allmulti(struct net_device *dev, int inc, bool notify)
{
 unsigned int old_flags = dev->flags, old_gflags = dev->gflags;

 ASSERT_RTNL();

 dev->flags |= IFF_ALLMULTI;
 dev->allmulti += inc;
 if (dev->allmulti == 0) {




  if (inc < 0)
   dev->flags &= ~IFF_ALLMULTI;
  else {
   dev->allmulti -= inc;
   pr_warn("%s: allmulti touches roof, set allmulti failed. allmulti feature of device might be broken.\n",
    dev->name);
   return -EOVERFLOW;
  }
 }
 if (dev->flags ^ old_flags) {
  dev_change_rx_flags(dev, IFF_ALLMULTI);
  dev_set_rx_mode(dev);
  if (notify)
   __dev_notify_flags(dev, old_flags,
        dev->gflags ^ old_gflags);
 }
 return 0;
}
