
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct dsmark_qdisc_data {scalar_t__ indices; scalar_t__ default_index; scalar_t__ set_tc_index; } ;
struct Qdisc {int dummy; } ;


 int EMSGSIZE ;
 int NLA_PUT_FLAG (struct sk_buff*,int ) ;
 int NLA_PUT_U16 (struct sk_buff*,int ,scalar_t__) ;
 scalar_t__ NO_DEFAULT_INDEX ;
 int TCA_DSMARK_DEFAULT_INDEX ;
 int TCA_DSMARK_INDICES ;
 int TCA_DSMARK_SET_TC_INDEX ;
 int TCA_OPTIONS ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int ) ;
 struct dsmark_qdisc_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static int dsmark_dump(struct Qdisc *sch, struct sk_buff *skb)
{
 struct dsmark_qdisc_data *p = qdisc_priv(sch);
 struct nlattr *opts = ((void*)0);

 opts = nla_nest_start(skb, TCA_OPTIONS);
 if (opts == ((void*)0))
  goto nla_put_failure;
 NLA_PUT_U16(skb, TCA_DSMARK_INDICES, p->indices);

 if (p->default_index != NO_DEFAULT_INDEX)
  NLA_PUT_U16(skb, TCA_DSMARK_DEFAULT_INDEX, p->default_index);

 if (p->set_tc_index)
  NLA_PUT_FLAG(skb, TCA_DSMARK_SET_TC_INDEX);

 return nla_nest_end(skb, opts);

nla_put_failure:
 nla_nest_cancel(skb, opts);
 return -EMSGSIZE;
}
