
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tun_struct {int set_features; } ;
struct net_device {int dummy; } ;
typedef int netdev_features_t ;


 int TUN_USER_FEATURES ;
 struct tun_struct* netdev_priv (struct net_device*) ;

__attribute__((used)) static netdev_features_t tun_net_fix_features(struct net_device *dev,
 netdev_features_t features)
{
 struct tun_struct *tun = netdev_priv(dev);

 return (features & tun->set_features) | (features & ~TUN_USER_FEATURES);
}
