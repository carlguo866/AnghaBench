
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int frag; } ;
struct sw_flow_key {TYPE_1__ ip; } ;
struct sk_buff {struct sk_buff* next; } ;
struct net {int dummy; } ;
struct dp_upcall_info {struct sw_flow_key* key; } ;
struct TYPE_4__ {unsigned short gso_type; } ;


 scalar_t__ IS_ERR (struct sk_buff*) ;
 int NETIF_F_HW_CSUM ;
 int NETIF_F_SG ;
 int OVS_FRAG_TYPE_LATER ;
 int PTR_ERR (struct sk_buff*) ;
 unsigned short SKB_GSO_UDP ;
 struct sk_buff* __skb_gso_segment (struct sk_buff*,int,int) ;
 int consume_skb (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int queue_userspace_packet (struct net*,int,struct sk_buff*,struct dp_upcall_info const*) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static int queue_gso_packets(struct net *net, int dp_ifindex,
        struct sk_buff *skb,
        const struct dp_upcall_info *upcall_info)
{
 unsigned short gso_type = skb_shinfo(skb)->gso_type;
 struct dp_upcall_info later_info;
 struct sw_flow_key later_key;
 struct sk_buff *segs, *nskb;
 int err;

 segs = __skb_gso_segment(skb, NETIF_F_SG | NETIF_F_HW_CSUM, 0);
 if (IS_ERR(segs))
  return PTR_ERR(segs);


 skb = segs;
 do {
  err = queue_userspace_packet(net, dp_ifindex, skb, upcall_info);
  if (err)
   break;

  if (skb == segs && gso_type & SKB_GSO_UDP) {




   later_key = *upcall_info->key;
   later_key.ip.frag = OVS_FRAG_TYPE_LATER;

   later_info = *upcall_info;
   later_info.key = &later_key;
   upcall_info = &later_info;
  }
 } while ((skb = skb->next));


 skb = segs;
 do {
  nskb = skb->next;
  if (err)
   kfree_skb(skb);
  else
   consume_skb(skb);
 } while ((skb = nskb));
 return err;
}
