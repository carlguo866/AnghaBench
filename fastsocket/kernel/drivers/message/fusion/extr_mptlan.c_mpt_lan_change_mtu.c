
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;


 int EINVAL ;
 int MPT_LAN_MAX_MTU ;
 int MPT_LAN_MIN_MTU ;

__attribute__((used)) static int
mpt_lan_change_mtu(struct net_device *dev, int new_mtu)
{
 if ((new_mtu < MPT_LAN_MIN_MTU) || (new_mtu > MPT_LAN_MAX_MTU))
  return -EINVAL;
 dev->mtu = new_mtu;
 return 0;
}
