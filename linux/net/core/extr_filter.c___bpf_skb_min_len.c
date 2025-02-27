
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sk_buff {scalar_t__ ip_summed; scalar_t__ csum_offset; } ;
typedef int __sum16 ;


 scalar_t__ CHECKSUM_PARTIAL ;
 scalar_t__ skb_checksum_start_offset (struct sk_buff const*) ;
 scalar_t__ skb_network_offset (struct sk_buff const*) ;
 scalar_t__ skb_transport_header_was_set (struct sk_buff const*) ;
 scalar_t__ skb_transport_offset (struct sk_buff const*) ;

__attribute__((used)) static u32 __bpf_skb_min_len(const struct sk_buff *skb)
{
 u32 min_len = skb_network_offset(skb);

 if (skb_transport_header_was_set(skb))
  min_len = skb_transport_offset(skb);
 if (skb->ip_summed == CHECKSUM_PARTIAL)
  min_len = skb_checksum_start_offset(skb) +
     skb->csum_offset + sizeof(__sum16);
 return min_len;
}
