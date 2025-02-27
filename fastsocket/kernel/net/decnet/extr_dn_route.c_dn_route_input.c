
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {scalar_t__ mark; } ;
struct dst_entry {int dummy; } ;
struct dn_skb_cb {scalar_t__ src; scalar_t__ dst; scalar_t__ iif; } ;
struct TYPE_7__ {int dn_next; } ;
struct TYPE_6__ {TYPE_3__ dst; } ;
struct TYPE_5__ {scalar_t__ fld_src; scalar_t__ fld_dst; scalar_t__ oif; scalar_t__ mark; scalar_t__ iif; } ;
struct dn_route {TYPE_2__ u; TYPE_1__ fl; } ;
struct TYPE_8__ {int chain; } ;


 struct dn_skb_cb* DN_SKB_CB (struct sk_buff*) ;
 unsigned int dn_hash (scalar_t__,scalar_t__) ;
 int dn_route_input_slow (struct sk_buff*) ;
 TYPE_4__* dn_rt_hash_table ;
 int dst_use (TYPE_3__*,int ) ;
 int jiffies ;
 struct dn_route* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ skb_dst (struct sk_buff*) ;
 int skb_dst_set (struct sk_buff*,struct dst_entry*) ;

__attribute__((used)) static int dn_route_input(struct sk_buff *skb)
{
 struct dn_route *rt;
 struct dn_skb_cb *cb = DN_SKB_CB(skb);
 unsigned hash = dn_hash(cb->src, cb->dst);

 if (skb_dst(skb))
  return 0;

 rcu_read_lock();
 for(rt = rcu_dereference(dn_rt_hash_table[hash].chain); rt != ((void*)0);
     rt = rcu_dereference(rt->u.dst.dn_next)) {
  if ((rt->fl.fld_src == cb->src) &&
      (rt->fl.fld_dst == cb->dst) &&
      (rt->fl.oif == 0) &&
      (rt->fl.mark == skb->mark) &&
      (rt->fl.iif == cb->iif)) {
   dst_use(&rt->u.dst, jiffies);
   rcu_read_unlock();
   skb_dst_set(skb, (struct dst_entry *)rt);
   return 0;
  }
 }
 rcu_read_unlock();

 return dn_route_input_slow(skb);
}
