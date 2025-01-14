
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct at91_priv {unsigned long mb0_id; } ;
typedef int ssize_t ;


 unsigned long CAN_EFF_FLAG ;
 unsigned long CAN_EFF_MASK ;
 unsigned long CAN_SFF_MASK ;
 int EBUSY ;
 int IFF_UP ;
 int kstrtoul (char const*,int ,unsigned long*) ;
 struct at91_priv* netdev_priv (struct net_device*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 struct net_device* to_net_dev (struct device*) ;

__attribute__((used)) static ssize_t at91_sysfs_set_mb0_id(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct net_device *ndev = to_net_dev(dev);
 struct at91_priv *priv = netdev_priv(ndev);
 unsigned long can_id;
 ssize_t ret;
 int err;

 rtnl_lock();

 if (ndev->flags & IFF_UP) {
  ret = -EBUSY;
  goto out;
 }

 err = kstrtoul(buf, 0, &can_id);
 if (err) {
  ret = err;
  goto out;
 }

 if (can_id & CAN_EFF_FLAG)
  can_id &= CAN_EFF_MASK | CAN_EFF_FLAG;
 else
  can_id &= CAN_SFF_MASK;

 priv->mb0_id = can_id;
 ret = count;

 out:
 rtnl_unlock();
 return ret;
}
