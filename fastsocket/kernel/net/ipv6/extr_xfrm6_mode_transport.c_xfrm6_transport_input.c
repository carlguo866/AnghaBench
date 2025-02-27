
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrm_state {int dummy; } ;
struct sk_buff {int data; scalar_t__ transport_header; scalar_t__ network_header; scalar_t__ len; } ;
struct ipv6hdr {int dummy; } ;
struct TYPE_2__ {int payload_len; } ;


 int htons (scalar_t__) ;
 TYPE_1__* ipv6_hdr (struct sk_buff*) ;
 int memmove (int,int ,int) ;
 int skb_network_header (struct sk_buff*) ;
 int skb_reset_transport_header (struct sk_buff*) ;
 int skb_transport_header (struct sk_buff*) ;

__attribute__((used)) static int xfrm6_transport_input(struct xfrm_state *x, struct sk_buff *skb)
{
 int ihl = skb->data - skb_transport_header(skb);

 if (skb->transport_header != skb->network_header) {
  memmove(skb_transport_header(skb),
   skb_network_header(skb), ihl);
  skb->network_header = skb->transport_header;
 }
 ipv6_hdr(skb)->payload_len = htons(skb->len + ihl -
        sizeof(struct ipv6hdr));
 skb_reset_transport_header(skb);
 return 0;
}
