
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd1201 {int mac_enabled; } ;


 int zd1201_disable (struct zd1201*) ;
 int zd1201_enable (struct zd1201*) ;

__attribute__((used)) static int zd1201_mac_reset(struct zd1201 *zd)
{
 if (!zd->mac_enabled)
  return 0;
 zd1201_disable(zd);
 return zd1201_enable(zd);
}
