
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {int dummy; } ;
typedef enum br_boolopt_id { ____Placeholder_br_boolopt_id } br_boolopt_id ;


 int BROPT_NO_LL_LEARN ;

 int WARN_ON (int) ;
 int br_opt_get (struct net_bridge const*,int ) ;

int br_boolopt_get(const struct net_bridge *br, enum br_boolopt_id opt)
{
 switch (opt) {
 case 128:
  return br_opt_get(br, BROPT_NO_LL_LEARN);
 default:

  WARN_ON(1);
  break;
 }

 return 0;
}
