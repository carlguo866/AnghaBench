
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int __cxgb_close (struct net_device*,int ) ;

__attribute__((used)) static int cxgb_close(struct net_device *dev)
{
 return __cxgb_close(dev, 0);
}
