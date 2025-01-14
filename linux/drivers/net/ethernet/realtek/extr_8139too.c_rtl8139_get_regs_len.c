
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8139_private {int regs_len; } ;
struct net_device {int dummy; } ;


 struct rtl8139_private* netdev_priv (struct net_device*) ;
 scalar_t__ use_io ;

__attribute__((used)) static int rtl8139_get_regs_len(struct net_device *dev)
{
 struct rtl8139_private *tp;

 if (use_io)
  return 0;
 tp = netdev_priv(dev);
 return tp->regs_len;
}
