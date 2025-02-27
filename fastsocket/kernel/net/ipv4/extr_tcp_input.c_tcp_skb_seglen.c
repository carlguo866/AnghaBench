
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;


 int tcp_skb_mss (struct sk_buff*) ;
 int tcp_skb_pcount (struct sk_buff*) ;

__attribute__((used)) static int tcp_skb_seglen(struct sk_buff *skb)
{
 return tcp_skb_pcount(skb) == 1 ? skb->len : tcp_skb_mss(skb);
}
