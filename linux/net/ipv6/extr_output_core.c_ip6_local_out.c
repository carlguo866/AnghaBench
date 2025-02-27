
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;


 int __ip6_local_out (struct net*,struct sock*,struct sk_buff*) ;
 int dst_output (struct net*,struct sock*,struct sk_buff*) ;
 scalar_t__ likely (int) ;

int ip6_local_out(struct net *net, struct sock *sk, struct sk_buff *skb)
{
 int err;

 err = __ip6_local_out(net, sk, skb);
 if (likely(err == 1))
  err = dst_output(net, sk, skb);

 return err;
}
