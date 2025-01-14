
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {struct lbs_private* ml_priv; int * netdev_ops; int type; int dev_addr; } ;
struct lbs_private {struct net_device* rtap_net_dev; TYPE_2__* dev; int current_addr; } ;
struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int ARPHRD_IEEE80211_RADIOTAP ;
 int ENOMEM ;
 int EPERM ;
 int ETH_ALEN ;
 int LBS_DEB_MAIN ;
 int SET_NETDEV_DEV (struct net_device*,int ) ;
 struct net_device* alloc_netdev (int ,char*,int ) ;
 int ether_setup ;
 int free_netdev (struct net_device*) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 int memcpy (int ,int ,int ) ;
 int register_netdev (struct net_device*) ;
 int rtap_netdev_ops ;

__attribute__((used)) static int lbs_add_rtap(struct lbs_private *priv)
{
 int ret = 0;
 struct net_device *rtap_dev;

 lbs_deb_enter(LBS_DEB_MAIN);
 if (priv->rtap_net_dev) {
  ret = -EPERM;
  goto out;
 }

 rtap_dev = alloc_netdev(0, "rtap%d", ether_setup);
 if (rtap_dev == ((void*)0)) {
  ret = -ENOMEM;
  goto out;
 }

 memcpy(rtap_dev->dev_addr, priv->current_addr, ETH_ALEN);
 rtap_dev->type = ARPHRD_IEEE80211_RADIOTAP;
 rtap_dev->netdev_ops = &rtap_netdev_ops;
 rtap_dev->ml_priv = priv;
 SET_NETDEV_DEV(rtap_dev, priv->dev->dev.parent);

 ret = register_netdev(rtap_dev);
 if (ret) {
  free_netdev(rtap_dev);
  goto out;
 }
 priv->rtap_net_dev = rtap_dev;

out:
 lbs_deb_leave_args(LBS_DEB_MAIN, "ret %d", ret);
 return ret;
}
