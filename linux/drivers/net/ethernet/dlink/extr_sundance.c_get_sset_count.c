
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int EOPNOTSUPP ;

 int sundance_stats ;

__attribute__((used)) static int get_sset_count(struct net_device *dev, int sset)
{
 switch (sset) {
 case 128:
  return ARRAY_SIZE(sundance_stats);
 default:
  return -EOPNOTSUPP;
 }
}
