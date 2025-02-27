
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
typedef enum ctattr_expect { ____Placeholder_ctattr_expect } ctattr_expect ;


 int NLA_F_NESTED ;
 scalar_t__ ctnetlink_dump_tuples (struct sk_buff*,struct nf_conntrack_tuple const*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int) ;

__attribute__((used)) static inline int
ctnetlink_exp_dump_tuple(struct sk_buff *skb,
    const struct nf_conntrack_tuple *tuple,
    enum ctattr_expect type)
{
 struct nlattr *nest_parms;

 nest_parms = nla_nest_start(skb, type | NLA_F_NESTED);
 if (!nest_parms)
  goto nla_put_failure;
 if (ctnetlink_dump_tuples(skb, tuple) < 0)
  goto nla_put_failure;
 nla_nest_end(skb, nest_parms);

 return 0;

nla_put_failure:
 return -1;
}
