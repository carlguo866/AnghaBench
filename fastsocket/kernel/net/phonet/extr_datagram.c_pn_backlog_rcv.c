
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_drops; } ;
struct sk_buff {int dummy; } ;


 int ENOMEM ;
 int NET_RX_DROP ;
 int NET_RX_SUCCESS ;
 int atomic_inc (int *) ;
 int kfree_skb (struct sk_buff*) ;
 int sock_queue_rcv_skb (struct sock*,struct sk_buff*) ;

__attribute__((used)) static int pn_backlog_rcv(struct sock *sk, struct sk_buff *skb)
{
 int err = sock_queue_rcv_skb(sk, skb);
 if (err < 0) {
  kfree_skb(skb);
  if (err == -ENOMEM)
   atomic_inc(&sk->sk_drops);
 }
 return err ? NET_RX_DROP : NET_RX_SUCCESS;
}
