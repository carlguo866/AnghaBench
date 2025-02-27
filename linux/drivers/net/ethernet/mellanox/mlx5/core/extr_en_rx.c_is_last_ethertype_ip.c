
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct ipv6hdr {int dummy; } ;
struct iphdr {int dummy; } ;
struct ethhdr {scalar_t__ h_proto; } ;
typedef scalar_t__ __be16 ;


 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 scalar_t__ __vlan_get_protocol (struct sk_buff*,scalar_t__,int*) ;
 scalar_t__ htons (int ) ;
 int pskb_may_pull (struct sk_buff*,int) ;

__attribute__((used)) static inline bool is_last_ethertype_ip(struct sk_buff *skb, int *network_depth,
     __be16 *proto)
{
 *proto = ((struct ethhdr *)skb->data)->h_proto;
 *proto = __vlan_get_protocol(skb, *proto, network_depth);

 if (*proto == htons(ETH_P_IP))
  return pskb_may_pull(skb, *network_depth + sizeof(struct iphdr));

 if (*proto == htons(ETH_P_IPV6))
  return pskb_may_pull(skb, *network_depth + sizeof(struct ipv6hdr));

 return 0;
}
