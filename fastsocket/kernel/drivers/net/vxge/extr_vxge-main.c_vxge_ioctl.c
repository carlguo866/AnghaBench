
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int vxge_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
{
 return -EOPNOTSUPP;
}
