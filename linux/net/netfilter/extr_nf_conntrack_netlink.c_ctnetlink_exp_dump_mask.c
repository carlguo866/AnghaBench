
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_8__ {int all; } ;
struct TYPE_9__ {TYPE_3__ u; int u3; } ;
struct nf_conntrack_tuple_mask {TYPE_4__ src; } ;
struct TYPE_10__ {int protonum; } ;
struct TYPE_6__ {int all; } ;
struct TYPE_7__ {TYPE_1__ u; int u3; } ;
struct nf_conntrack_tuple {TYPE_5__ dst; TYPE_2__ src; } ;
struct nf_conntrack_l4proto {int dummy; } ;
typedef int m ;


 int CTA_EXPECT_MASK ;
 int ctnetlink_dump_tuples_ip (struct sk_buff*,struct nf_conntrack_tuple*) ;
 int ctnetlink_dump_tuples_proto (struct sk_buff*,struct nf_conntrack_tuple*,struct nf_conntrack_l4proto const*) ;
 int memcpy (int *,int *,int) ;
 int memset (struct nf_conntrack_tuple*,int,int) ;
 struct nf_conntrack_l4proto* nf_ct_l4proto_find (int ) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ctnetlink_exp_dump_mask(struct sk_buff *skb,
       const struct nf_conntrack_tuple *tuple,
       const struct nf_conntrack_tuple_mask *mask)
{
 const struct nf_conntrack_l4proto *l4proto;
 struct nf_conntrack_tuple m;
 struct nlattr *nest_parms;
 int ret;

 memset(&m, 0xFF, sizeof(m));
 memcpy(&m.src.u3, &mask->src.u3, sizeof(m.src.u3));
 m.src.u.all = mask->src.u.all;
 m.dst.protonum = tuple->dst.protonum;

 nest_parms = nla_nest_start(skb, CTA_EXPECT_MASK);
 if (!nest_parms)
  goto nla_put_failure;

 rcu_read_lock();
 ret = ctnetlink_dump_tuples_ip(skb, &m);
 if (ret >= 0) {
  l4proto = nf_ct_l4proto_find(tuple->dst.protonum);
  ret = ctnetlink_dump_tuples_proto(skb, &m, l4proto);
 }
 rcu_read_unlock();

 if (unlikely(ret < 0))
  goto nla_put_failure;

 nla_nest_end(skb, nest_parms);

 return 0;

nla_put_failure:
 return -1;
}
