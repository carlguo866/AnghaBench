
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {int protonum; } ;
struct nf_conntrack_tuple {TYPE_1__ dst; } ;
struct nf_conntrack_l4proto {int (* tuple_to_nlattr ) (struct sk_buff*,struct nf_conntrack_tuple const*) ;} ;


 int CTA_PROTO_NUM ;
 int CTA_TUPLE_PROTO ;
 scalar_t__ likely (int (*) (struct sk_buff*,struct nf_conntrack_tuple const*)) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;
 int stub1 (struct sk_buff*,struct nf_conntrack_tuple const*) ;

__attribute__((used)) static int ctnetlink_dump_tuples_proto(struct sk_buff *skb,
    const struct nf_conntrack_tuple *tuple,
    const struct nf_conntrack_l4proto *l4proto)
{
 int ret = 0;
 struct nlattr *nest_parms;

 nest_parms = nla_nest_start(skb, CTA_TUPLE_PROTO);
 if (!nest_parms)
  goto nla_put_failure;
 if (nla_put_u8(skb, CTA_PROTO_NUM, tuple->dst.protonum))
  goto nla_put_failure;

 if (likely(l4proto->tuple_to_nlattr))
  ret = l4proto->tuple_to_nlattr(skb, tuple);

 nla_nest_end(skb, nest_parms);

 return ret;

nla_put_failure:
 return -1;
}
