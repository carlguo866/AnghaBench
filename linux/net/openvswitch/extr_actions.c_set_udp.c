
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udphdr {scalar_t__ source; scalar_t__ dest; scalar_t__ check; } ;
struct TYPE_2__ {scalar_t__ dst; scalar_t__ src; } ;
struct sw_flow_key {TYPE_1__ tp; } ;
struct sk_buff {scalar_t__ ip_summed; } ;
struct ovs_key_udp {int udp_dst; int udp_src; } ;
typedef scalar_t__ __be16 ;


 scalar_t__ CHECKSUM_PARTIAL ;
 scalar_t__ CSUM_MANGLED_0 ;
 scalar_t__ OVS_MASKED (scalar_t__,int ,int ) ;
 scalar_t__ likely (int) ;
 int set_tp_port (struct sk_buff*,scalar_t__*,scalar_t__,scalar_t__*) ;
 int skb_clear_hash (struct sk_buff*) ;
 int skb_ensure_writable (struct sk_buff*,scalar_t__) ;
 scalar_t__ skb_transport_offset (struct sk_buff*) ;
 struct udphdr* udp_hdr (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int set_udp(struct sk_buff *skb, struct sw_flow_key *flow_key,
     const struct ovs_key_udp *key,
     const struct ovs_key_udp *mask)
{
 struct udphdr *uh;
 __be16 src, dst;
 int err;

 err = skb_ensure_writable(skb, skb_transport_offset(skb) +
      sizeof(struct udphdr));
 if (unlikely(err))
  return err;

 uh = udp_hdr(skb);

 src = OVS_MASKED(uh->source, key->udp_src, mask->udp_src);
 dst = OVS_MASKED(uh->dest, key->udp_dst, mask->udp_dst);

 if (uh->check && skb->ip_summed != CHECKSUM_PARTIAL) {
  if (likely(src != uh->source)) {
   set_tp_port(skb, &uh->source, src, &uh->check);
   flow_key->tp.src = src;
  }
  if (likely(dst != uh->dest)) {
   set_tp_port(skb, &uh->dest, dst, &uh->check);
   flow_key->tp.dst = dst;
  }

  if (unlikely(!uh->check))
   uh->check = CSUM_MANGLED_0;
 } else {
  uh->source = src;
  uh->dest = dst;
  flow_key->tp.src = src;
  flow_key->tp.dst = dst;
 }

 skb_clear_hash(skb);

 return 0;
}
