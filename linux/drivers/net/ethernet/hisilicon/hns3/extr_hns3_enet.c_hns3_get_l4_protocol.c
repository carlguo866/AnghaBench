
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union l3_hdr_info {unsigned char* hdr; TYPE_2__* v4; TYPE_1__* v6; } ;
typedef int u8 ;
struct sk_buff {scalar_t__ protocol; int data; int encapsulation; } ;
typedef int __be16 ;
struct TYPE_4__ {int version; int protocol; } ;
struct TYPE_3__ {int version; int nexthdr; } ;


 int EINVAL ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 scalar_t__ htons (int ) ;
 int ipv6_skip_exthdr (struct sk_buff*,unsigned char*,int *,int *) ;
 unsigned char* skb_inner_network_header (struct sk_buff*) ;
 unsigned char* skb_inner_transport_header (struct sk_buff*) ;
 unsigned char* skb_network_header (struct sk_buff*) ;
 unsigned char* skb_transport_header (struct sk_buff*) ;

__attribute__((used)) static int hns3_get_l4_protocol(struct sk_buff *skb, u8 *ol4_proto,
    u8 *il4_proto)
{
 union l3_hdr_info l3;
 unsigned char *l4_hdr;
 unsigned char *exthdr;
 u8 l4_proto_tmp;
 __be16 frag_off;


 l3.hdr = skb_network_header(skb);
 l4_hdr = skb_transport_header(skb);

 if (skb->protocol == htons(ETH_P_IPV6)) {
  exthdr = l3.hdr + sizeof(*l3.v6);
  l4_proto_tmp = l3.v6->nexthdr;
  if (l4_hdr != exthdr)
   ipv6_skip_exthdr(skb, exthdr - skb->data,
      &l4_proto_tmp, &frag_off);
 } else if (skb->protocol == htons(ETH_P_IP)) {
  l4_proto_tmp = l3.v4->protocol;
 } else {
  return -EINVAL;
 }

 *ol4_proto = l4_proto_tmp;


 if (!skb->encapsulation) {
  *il4_proto = 0;
  return 0;
 }


 l3.hdr = skb_inner_network_header(skb);
 l4_hdr = skb_inner_transport_header(skb);

 if (l3.v6->version == 6) {
  exthdr = l3.hdr + sizeof(*l3.v6);
  l4_proto_tmp = l3.v6->nexthdr;
  if (l4_hdr != exthdr)
   ipv6_skip_exthdr(skb, exthdr - skb->data,
      &l4_proto_tmp, &frag_off);
 } else if (l3.v4->version == 4) {
  l4_proto_tmp = l3.v4->protocol;
 }

 *il4_proto = l4_proto_tmp;

 return 0;
}
