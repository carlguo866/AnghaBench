
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int EOPNOTSUPP ;

 int rtl8152_gstrings ;

__attribute__((used)) static int rtl8152_get_sset_count(struct net_device *dev, int sset)
{
 switch (sset) {
 case 128:
  return ARRAY_SIZE(rtl8152_gstrings);
 default:
  return -EOPNOTSUPP;
 }
}
