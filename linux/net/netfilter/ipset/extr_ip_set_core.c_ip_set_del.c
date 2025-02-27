
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xt_action_param {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ip_set_adt_opt {scalar_t__ dim; scalar_t__ family; } ;
struct ip_set {scalar_t__ family; int lock; TYPE_2__* variant; TYPE_1__* type; int name; } ;
typedef int ip_set_id_t ;
struct TYPE_4__ {int (* kadt ) (struct ip_set*,struct sk_buff const*,struct xt_action_param const*,int ,struct ip_set_adt_opt*) ;} ;
struct TYPE_3__ {scalar_t__ dimension; } ;


 int BUG_ON (int) ;
 int IPSET_DEL ;
 int IPSET_ERR_TYPE_MISMATCH ;
 scalar_t__ NFPROTO_UNSPEC ;
 struct ip_set* ip_set_rcu_get (int ,int ) ;
 int pr_debug (char*,int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct ip_set*,struct sk_buff const*,struct xt_action_param const*,int ,struct ip_set_adt_opt*) ;
 int xt_net (struct xt_action_param const*) ;

int
ip_set_del(ip_set_id_t index, const struct sk_buff *skb,
    const struct xt_action_param *par, struct ip_set_adt_opt *opt)
{
 struct ip_set *set = ip_set_rcu_get(xt_net(par), index);
 int ret = 0;

 BUG_ON(!set);
 pr_debug("set %s, index %u\n", set->name, index);

 if (opt->dim < set->type->dimension ||
     !(opt->family == set->family || set->family == NFPROTO_UNSPEC))
  return -IPSET_ERR_TYPE_MISMATCH;

 spin_lock_bh(&set->lock);
 ret = set->variant->kadt(set, skb, par, IPSET_DEL, opt);
 spin_unlock_bh(&set->lock);

 return ret;
}
