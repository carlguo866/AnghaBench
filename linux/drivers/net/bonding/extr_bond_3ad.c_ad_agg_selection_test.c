
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct aggregator {int lag_ports; TYPE_4__* slave; scalar_t__ is_individual; } ;
struct TYPE_8__ {TYPE_3__* dev; TYPE_2__* bond; } ;
struct TYPE_7__ {int name; } ;
struct TYPE_6__ {TYPE_1__* dev; } ;
struct TYPE_5__ {int name; } ;





 int __agg_active_ports (struct aggregator*) ;
 scalar_t__ __agg_has_partner (struct aggregator*) ;
 int __get_agg_bandwidth (struct aggregator*) ;
 int __get_agg_selection_mode (int ) ;
 int net_warn_ratelimited (char*,int ,int ,int) ;

__attribute__((used)) static struct aggregator *ad_agg_selection_test(struct aggregator *best,
      struct aggregator *curr)
{
 if (!best)
  return curr;

 if (!curr->is_individual && best->is_individual)
  return curr;

 if (curr->is_individual && !best->is_individual)
  return best;

 if (__agg_has_partner(curr) && !__agg_has_partner(best))
  return curr;

 if (!__agg_has_partner(curr) && __agg_has_partner(best))
  return best;

 switch (__get_agg_selection_mode(curr->lag_ports)) {
 case 129:
  if (__agg_active_ports(curr) > __agg_active_ports(best))
   return curr;

  if (__agg_active_ports(curr) < __agg_active_ports(best))
   return best;


 case 128:
 case 130:
  if (__get_agg_bandwidth(curr) > __get_agg_bandwidth(best))
   return curr;

  break;

 default:
  net_warn_ratelimited("%s: (slave %s): Impossible agg select mode %d\n",
         curr->slave->bond->dev->name,
         curr->slave->dev->name,
         __get_agg_selection_mode(curr->lag_ports));
  break;
 }

 return best;
}
