
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {unsigned int len; int ip_summed; int csum; } ;
struct net_bridge_port {int dummy; } ;
struct net_bridge {int dummy; } ;
struct iphdr {int ihl; int version; scalar_t__ protocol; int daddr; int tot_len; } ;
struct igmphdr {int type; int group; } ;
struct TYPE_2__ {int mrouters_only; int igmp; } ;


 TYPE_1__* BR_INPUT_SKB_CB (struct sk_buff*) ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;





 int IGMP_LOCAL_GROUP ;
 int IGMP_LOCAL_GROUP_MASK ;
 scalar_t__ IPPROTO_IGMP ;
 int __skb_pull (struct sk_buff*,unsigned int) ;
 int __skb_push (struct sk_buff*,unsigned int) ;
 int br_ip4_multicast_add_group (struct net_bridge*,struct net_bridge_port*,int ) ;
 int br_ip4_multicast_igmp3_report (struct net_bridge*,struct net_bridge_port*,struct sk_buff*) ;
 int br_ip4_multicast_leave_group (struct net_bridge*,struct net_bridge_port*,int ) ;
 int br_ip4_multicast_query (struct net_bridge*,struct net_bridge_port*,struct sk_buff*) ;
 int csum_fold (int ) ;
 struct igmphdr* igmp_hdr (struct sk_buff*) ;
 int ip_fast_csum (int *,int) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 unsigned int ip_hdrlen (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 unsigned int ntohs (int ) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 int pskb_trim_rcsum (struct sk_buff*,unsigned int) ;
 int skb_checksum_complete (struct sk_buff*) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 unsigned int skb_network_offset (struct sk_buff*) ;
 int skb_reset_transport_header (struct sk_buff*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int br_multicast_ipv4_rcv(struct net_bridge *br,
     struct net_bridge_port *port,
     struct sk_buff *skb)
{
 struct sk_buff *skb2 = skb;
 struct iphdr *iph;
 struct igmphdr *ih;
 unsigned len;
 unsigned offset;
 int err;


 if (!pskb_may_pull(skb, sizeof(*iph)))
  return -EINVAL;

 iph = ip_hdr(skb);

 if (iph->ihl < 5 || iph->version != 4)
  return -EINVAL;

 if (!pskb_may_pull(skb, ip_hdrlen(skb)))
  return -EINVAL;

 iph = ip_hdr(skb);

 if (unlikely(ip_fast_csum((u8 *)iph, iph->ihl)))
  return -EINVAL;

 if (iph->protocol != IPPROTO_IGMP) {
  if ((iph->daddr & IGMP_LOCAL_GROUP_MASK) != IGMP_LOCAL_GROUP)
   BR_INPUT_SKB_CB(skb)->mrouters_only = 1;
  return 0;
 }

 len = ntohs(iph->tot_len);
 if (skb->len < len || len < ip_hdrlen(skb))
  return -EINVAL;

 if (skb->len > len) {
  skb2 = skb_clone(skb, GFP_ATOMIC);
  if (!skb2)
   return -ENOMEM;

  err = pskb_trim_rcsum(skb2, len);
  if (err)
   return err;
 }

 len -= ip_hdrlen(skb2);
 offset = skb_network_offset(skb2) + ip_hdrlen(skb2);
 __skb_pull(skb2, offset);
 skb_reset_transport_header(skb2);

 err = -EINVAL;
 if (!pskb_may_pull(skb2, sizeof(*ih)))
  goto out;

 iph = ip_hdr(skb2);

 switch (skb2->ip_summed) {
 case 134:
  if (!csum_fold(skb2->csum))
   break;

 case 133:
  skb2->csum = 0;
  if (skb_checksum_complete(skb2))
   return -EINVAL;
 }

 err = 0;

 BR_INPUT_SKB_CB(skb)->igmp = 1;
 ih = igmp_hdr(skb2);

 switch (ih->type) {
 case 128:
 case 132:
  BR_INPUT_SKB_CB(skb)->mrouters_only = 1;
  err = br_ip4_multicast_add_group(br, port, ih->group);
  break;
 case 131:
  err = br_ip4_multicast_igmp3_report(br, port, skb2);
  break;
 case 129:
  err = br_ip4_multicast_query(br, port, skb2);
  break;
 case 130:
  br_ip4_multicast_leave_group(br, port, ih->group);
  break;
 }

out:
 __skb_push(skb2, offset);
 if (skb2 != skb)
  kfree_skb(skb2);
 return err;
}
