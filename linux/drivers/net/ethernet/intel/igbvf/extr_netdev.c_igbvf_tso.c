
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct tcphdr {int doff; int check; } ;
struct sk_buff {scalar_t__ ip_summed; unsigned char* data; int len; } ;
struct ipv6hdr {scalar_t__ payload_len; } ;
struct iphdr {int version; int ihl; scalar_t__ tot_len; int check; } ;
struct igbvf_ring {int dummy; } ;
struct TYPE_2__ {int gso_size; } ;


 scalar_t__ CHECKSUM_PARTIAL ;
 int E1000_ADVTXD_L4LEN_SHIFT ;
 int E1000_ADVTXD_MACLEN_SHIFT ;
 int E1000_ADVTXD_MSS_SHIFT ;
 int E1000_ADVTXD_TUCMD_IPV4 ;
 int E1000_ADVTXD_TUCMD_L4T_TCP ;
 int IGBVF_TX_FLAGS_VLAN_MASK ;
 int csum_fold (int ) ;
 int csum_partial (unsigned char*,int,int ) ;
 int csum_replace_by_diff (int *,int ) ;
 int htonl (int) ;
 int igbvf_tx_ctxtdesc (struct igbvf_ring*,int,int,int) ;
 void* skb_checksum_start (struct sk_buff*) ;
 int skb_cow_head (struct sk_buff*,int ) ;
 int skb_is_gso (struct sk_buff*) ;
 unsigned char* skb_network_header (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static int igbvf_tso(struct igbvf_ring *tx_ring,
       struct sk_buff *skb, u32 tx_flags, u8 *hdr_len)
{
 u32 vlan_macip_lens, type_tucmd, mss_l4len_idx;
 union {
  struct iphdr *v4;
  struct ipv6hdr *v6;
  unsigned char *hdr;
 } ip;
 union {
  struct tcphdr *tcp;
  unsigned char *hdr;
 } l4;
 u32 paylen, l4_offset;
 int err;

 if (skb->ip_summed != CHECKSUM_PARTIAL)
  return 0;

 if (!skb_is_gso(skb))
  return 0;

 err = skb_cow_head(skb, 0);
 if (err < 0)
  return err;

 ip.hdr = skb_network_header(skb);
 l4.hdr = skb_checksum_start(skb);


 type_tucmd = E1000_ADVTXD_TUCMD_L4T_TCP;


 if (ip.v4->version == 4) {
  unsigned char *csum_start = skb_checksum_start(skb);
  unsigned char *trans_start = ip.hdr + (ip.v4->ihl * 4);




  ip.v4->check = csum_fold(csum_partial(trans_start,
            csum_start - trans_start,
            0));
  type_tucmd |= E1000_ADVTXD_TUCMD_IPV4;

  ip.v4->tot_len = 0;
 } else {
  ip.v6->payload_len = 0;
 }


 l4_offset = l4.hdr - skb->data;


 *hdr_len = (l4.tcp->doff * 4) + l4_offset;


 paylen = skb->len - l4_offset;
 csum_replace_by_diff(&l4.tcp->check, htonl(paylen));


 mss_l4len_idx = (*hdr_len - l4_offset) << E1000_ADVTXD_L4LEN_SHIFT;
 mss_l4len_idx |= skb_shinfo(skb)->gso_size << E1000_ADVTXD_MSS_SHIFT;


 vlan_macip_lens = l4.hdr - ip.hdr;
 vlan_macip_lens |= (ip.hdr - skb->data) << E1000_ADVTXD_MACLEN_SHIFT;
 vlan_macip_lens |= tx_flags & IGBVF_TX_FLAGS_VLAN_MASK;

 igbvf_tx_ctxtdesc(tx_ring, vlan_macip_lens, type_tucmd, mss_l4len_idx);

 return 1;
}
