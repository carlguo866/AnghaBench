
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcf_hashinfo {int dummy; } ;
struct tc_action {TYPE_1__* ops; } ;
struct sk_buff {int dummy; } ;
struct netlink_callback {int dummy; } ;
struct TYPE_2__ {struct tcf_hashinfo* hinfo; } ;


 int EINVAL ;
 int RTM_DELACTION ;
 int RTM_GETACTION ;
 int WARN (int,char*,int) ;
 int tcf_del_walker (struct sk_buff*,struct tc_action*,struct tcf_hashinfo*) ;
 int tcf_dump_walker (struct sk_buff*,struct netlink_callback*,struct tc_action*,struct tcf_hashinfo*) ;

int tcf_generic_walker(struct sk_buff *skb, struct netlink_callback *cb,
         int type, struct tc_action *a)
{
 struct tcf_hashinfo *hinfo = a->ops->hinfo;

 if (type == RTM_DELACTION) {
  return tcf_del_walker(skb, a, hinfo);
 } else if (type == RTM_GETACTION) {
  return tcf_dump_walker(skb, cb, a, hinfo);
 } else {
  WARN(1, "tcf_generic_walker: unknown action %d\n", type);
  return -EINVAL;
 }
}
