
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int protocol; } ;
struct net_device {int dummy; } ;


 int ax25_fwd_dev (struct net_device*) ;
 int ax25_type_trans (struct sk_buff*,int ) ;
 int dev_queue_xmit (struct sk_buff*) ;
 unsigned char* skb_push (struct sk_buff*,int) ;

void ax25_queue_xmit(struct sk_buff *skb, struct net_device *dev)
{
 unsigned char *ptr;

 skb->protocol = ax25_type_trans(skb, ax25_fwd_dev(dev));

 ptr = skb_push(skb, 1);
 *ptr = 0x00;

 dev_queue_xmit(skb);
}
