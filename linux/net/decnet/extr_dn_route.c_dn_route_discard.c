
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;


 int NET_RX_SUCCESS ;
 int kfree_skb (struct sk_buff*) ;

__attribute__((used)) static int dn_route_discard(struct net *net, struct sock *sk, struct sk_buff *skb)
{




 kfree_skb(skb);
 return NET_RX_SUCCESS;
}
