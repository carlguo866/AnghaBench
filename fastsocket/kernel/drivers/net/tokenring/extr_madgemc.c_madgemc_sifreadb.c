
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 unsigned short SIFREADB (unsigned short) ;
 int madgemc_setregpage (struct net_device*,int) ;

__attribute__((used)) static unsigned short madgemc_sifreadb(struct net_device *dev, unsigned short reg)
{
 unsigned short ret;
 if (reg<0x8)
  ret = SIFREADB(reg);
 else {
  madgemc_setregpage(dev, 1);
  ret = SIFREADB(reg);
  madgemc_setregpage(dev, 0);
 }
 return ret;
}
