
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sk_buff {int dummy; } ;
struct PStack {int dummy; } ;


 int dev_kfree_skb (struct sk_buff*) ;
 int get_PollFlag (struct PStack*,struct sk_buff*) ;

__attribute__((used)) static inline u_char
get_PollFlagFree(struct PStack *st, struct sk_buff *skb)
{
 u_char PF;

 PF = get_PollFlag(st, skb);
 dev_kfree_skb(skb);
 return (PF);
}
