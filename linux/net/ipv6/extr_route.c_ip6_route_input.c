
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {TYPE_3__* dev; int mark; } ;
struct net {int dummy; } ;
struct ipv6hdr {scalar_t__ nexthdr; int saddr; int daddr; } ;
struct TYPE_6__ {int tun_id; } ;
struct ip_tunnel_info {int mode; TYPE_2__ key; } ;
struct TYPE_5__ {int tun_id; } ;
struct flowi6 {scalar_t__ flowi6_proto; int mp_hash; TYPE_1__ flowi6_tun_key; int flowi6_mark; int flowlabel; int saddr; int daddr; int flowi6_iif; } ;
struct flow_keys {int dummy; } ;
struct TYPE_7__ {int ifindex; } ;


 scalar_t__ IPPROTO_ICMPV6 ;
 int IP_TUNNEL_INFO_TX ;
 int RT6_LOOKUP_F_DST_NOREF ;
 int RT6_LOOKUP_F_HAS_SADDR ;
 struct net* dev_net (TYPE_3__*) ;
 scalar_t__ fib6_rules_early_flow_dissect (struct net*,struct sk_buff*,struct flowi6*,struct flow_keys*) ;
 int ip6_flowinfo (struct ipv6hdr const*) ;
 int ip6_route_input_lookup (struct net*,TYPE_3__*,struct flowi6*,struct sk_buff*,int) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int rt6_multipath_hash (struct net*,struct flowi6*,struct sk_buff*,struct flow_keys*) ;
 int skb_dst_drop (struct sk_buff*) ;
 int skb_dst_set_noref (struct sk_buff*,int ) ;
 struct ip_tunnel_info* skb_tunnel_info (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

void ip6_route_input(struct sk_buff *skb)
{
 const struct ipv6hdr *iph = ipv6_hdr(skb);
 struct net *net = dev_net(skb->dev);
 int flags = RT6_LOOKUP_F_HAS_SADDR | RT6_LOOKUP_F_DST_NOREF;
 struct ip_tunnel_info *tun_info;
 struct flowi6 fl6 = {
  .flowi6_iif = skb->dev->ifindex,
  .daddr = iph->daddr,
  .saddr = iph->saddr,
  .flowlabel = ip6_flowinfo(iph),
  .flowi6_mark = skb->mark,
  .flowi6_proto = iph->nexthdr,
 };
 struct flow_keys *flkeys = ((void*)0), _flkeys;

 tun_info = skb_tunnel_info(skb);
 if (tun_info && !(tun_info->mode & IP_TUNNEL_INFO_TX))
  fl6.flowi6_tun_key.tun_id = tun_info->key.tun_id;

 if (fib6_rules_early_flow_dissect(net, skb, &fl6, &_flkeys))
  flkeys = &_flkeys;

 if (unlikely(fl6.flowi6_proto == IPPROTO_ICMPV6))
  fl6.mp_hash = rt6_multipath_hash(net, &fl6, skb, flkeys);
 skb_dst_drop(skb);
 skb_dst_set_noref(skb, ip6_route_input_lookup(net, skb->dev,
            &fl6, skb, flags));
}
