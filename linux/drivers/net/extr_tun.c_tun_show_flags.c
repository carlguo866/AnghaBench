
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tun_struct {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct tun_struct* netdev_priv (int ) ;
 int sprintf (char*,char*,int) ;
 int to_net_dev (struct device*) ;
 int tun_flags (struct tun_struct*) ;

__attribute__((used)) static ssize_t tun_show_flags(struct device *dev, struct device_attribute *attr,
         char *buf)
{
 struct tun_struct *tun = netdev_priv(to_net_dev(dev));
 return sprintf(buf, "0x%x\n", tun_flags(tun));
}
