
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct cobalt_skb_cb {int dummy; } ;
struct TYPE_2__ {scalar_t__ data; } ;


 int qdisc_cb_private_validate (struct sk_buff const*,int) ;
 TYPE_1__* qdisc_skb_cb (struct sk_buff const*) ;

__attribute__((used)) static struct cobalt_skb_cb *get_cobalt_cb(const struct sk_buff *skb)
{
 qdisc_cb_private_validate(skb, sizeof(struct cobalt_skb_cb));
 return (struct cobalt_skb_cb *)qdisc_skb_cb(skb)->data;
}
