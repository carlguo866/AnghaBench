
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_flags; int nlmsg_seq; } ;
struct net {int dummy; } ;
struct Qdisc {int dummy; } ;
struct TYPE_2__ {int portid; } ;


 int EINVAL ;
 int ENOBUFS ;
 int GFP_KERNEL ;
 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 int NLMSG_GOODSIZE ;
 int NLM_F_ECHO ;
 int RTNLGRP_TC ;
 struct sk_buff* alloc_skb (int ,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int rtnetlink_send (struct sk_buff*,struct net*,int ,int ,int) ;
 scalar_t__ tc_fill_tclass (struct sk_buff*,struct Qdisc*,unsigned long,int ,int ,int ,int) ;

__attribute__((used)) static int tclass_notify(struct net *net, struct sk_buff *oskb,
    struct nlmsghdr *n, struct Qdisc *q,
    unsigned long cl, int event)
{
 struct sk_buff *skb;
 u32 portid = oskb ? NETLINK_CB(oskb).portid : 0;
 int err = 0;

 skb = alloc_skb(NLMSG_GOODSIZE, GFP_KERNEL);
 if (!skb)
  return -ENOBUFS;

 if (tc_fill_tclass(skb, q, cl, portid, n->nlmsg_seq, 0, event) < 0) {
  kfree_skb(skb);
  return -EINVAL;
 }

 err = rtnetlink_send(skb, net, portid, RTNLGRP_TC,
        n->nlmsg_flags & NLM_F_ECHO);
 if (err > 0)
  err = 0;
 return err;
}
