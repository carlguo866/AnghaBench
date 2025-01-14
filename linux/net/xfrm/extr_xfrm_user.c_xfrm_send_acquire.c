
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_tmpl {int dummy; } ;
struct xfrm_state {int dummy; } ;
struct xfrm_policy {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int XFRMNLGRP_ACQUIRE ;
 int build_acquire (struct sk_buff*,struct xfrm_state*,struct xfrm_tmpl*,struct xfrm_policy*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int xfrm_acquire_msgsize (struct xfrm_state*,struct xfrm_policy*) ;
 int xfrm_nlmsg_multicast (struct net*,struct sk_buff*,int ,int ) ;
 struct net* xs_net (struct xfrm_state*) ;

__attribute__((used)) static int xfrm_send_acquire(struct xfrm_state *x, struct xfrm_tmpl *xt,
        struct xfrm_policy *xp)
{
 struct net *net = xs_net(x);
 struct sk_buff *skb;
 int err;

 skb = nlmsg_new(xfrm_acquire_msgsize(x, xp), GFP_ATOMIC);
 if (skb == ((void*)0))
  return -ENOMEM;

 err = build_acquire(skb, x, xt, xp);
 BUG_ON(err < 0);

 return xfrm_nlmsg_multicast(net, skb, 0, XFRMNLGRP_ACQUIRE);
}
