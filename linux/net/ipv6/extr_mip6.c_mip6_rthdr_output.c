
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int header_len; } ;
struct xfrm_state {int lock; int * coaddr; TYPE_1__ props; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int hdrlen; int segments_left; int type; int nexthdr; } ;
struct rt2_hdr {int addr; TYPE_2__ rt_hdr; int reserved; } ;
struct ipv6hdr {int daddr; } ;


 int IPPROTO_ROUTING ;
 int IPV6_SRCRT_TYPE_2 ;
 int WARN_ON (int) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;
 int * skb_mac_header (struct sk_buff*) ;
 int skb_network_offset (struct sk_buff*) ;
 int skb_push (struct sk_buff*,int ) ;
 scalar_t__ skb_transport_header (struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int mip6_rthdr_output(struct xfrm_state *x, struct sk_buff *skb)
{
 struct ipv6hdr *iph;
 struct rt2_hdr *rt2;
 u8 nexthdr;

 skb_push(skb, -skb_network_offset(skb));
 iph = ipv6_hdr(skb);

 nexthdr = *skb_mac_header(skb);
 *skb_mac_header(skb) = IPPROTO_ROUTING;

 rt2 = (struct rt2_hdr *)skb_transport_header(skb);
 rt2->rt_hdr.nexthdr = nexthdr;
 rt2->rt_hdr.hdrlen = (x->props.header_len >> 3) - 1;
 rt2->rt_hdr.type = IPV6_SRCRT_TYPE_2;
 rt2->rt_hdr.segments_left = 1;
 memset(&rt2->reserved, 0, sizeof(rt2->reserved));

 WARN_ON(rt2->rt_hdr.hdrlen != 2);

 memcpy(&rt2->addr, &iph->daddr, sizeof(rt2->addr));
 spin_lock_bh(&x->lock);
 memcpy(&iph->daddr, x->coaddr, sizeof(iph->daddr));
 spin_unlock_bh(&x->lock);

 return 0;
}
