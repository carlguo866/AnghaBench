
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tnl_ptk_info {int proto; void* seq; void* key; int flags; } ;
struct sk_buff {int dummy; } ;
struct gre_base_hdr {int flags; int protocol; } ;
typedef void* __be32 ;


 int EINVAL ;
 int ETH_P_IP ;
 int ETH_P_WCCP ;
 int GRE_CSUM ;
 int GRE_KEY ;
 int GRE_ROUTING ;
 int GRE_SEQ ;
 int GRE_VERSION ;
 scalar_t__ check_checksum (struct sk_buff*) ;
 int gre_flags_to_tnl_flags (int) ;
 int htons (int ) ;
 int ip_gre_calc_hlen (int ) ;
 unsigned int ip_hdrlen (struct sk_buff*) ;
 int iptunnel_pull_header (struct sk_buff*,int,int ) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 scalar_t__ skb_network_header (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int parse_gre_header(struct sk_buff *skb, struct tnl_ptk_info *tpi,
       bool *csum_err)
{
 unsigned int ip_hlen = ip_hdrlen(skb);
 const struct gre_base_hdr *greh;
 __be32 *options;
 int hdr_len;

 if (unlikely(!pskb_may_pull(skb, sizeof(struct gre_base_hdr))))
  return -EINVAL;

 greh = (struct gre_base_hdr *)(skb_network_header(skb) + ip_hlen);
 if (unlikely(greh->flags & (GRE_VERSION | GRE_ROUTING)))
  return -EINVAL;

 tpi->flags = gre_flags_to_tnl_flags(greh->flags);
 hdr_len = ip_gre_calc_hlen(tpi->flags);

 if (!pskb_may_pull(skb, hdr_len))
  return -EINVAL;

 greh = (struct gre_base_hdr *)(skb_network_header(skb) + ip_hlen);
 tpi->proto = greh->protocol;

 options = (__be32 *)(greh + 1);
 if (greh->flags & GRE_CSUM) {
  if (check_checksum(skb)) {
   *csum_err = 1;
   return -EINVAL;
  }
  options++;
 }

 if (greh->flags & GRE_KEY) {
  tpi->key = *options;
  options++;
 } else
  tpi->key = 0;

 if (unlikely(greh->flags & GRE_SEQ)) {
  tpi->seq = *options;
  options++;
 } else
  tpi->seq = 0;





 if (greh->flags == 0 && tpi->proto == htons(ETH_P_WCCP)) {
  tpi->proto = htons(ETH_P_IP);
  if ((*(u8 *)options & 0xF0) != 0x40) {
   hdr_len += 4;
   if (!pskb_may_pull(skb, hdr_len))
    return -EINVAL;
  }
 }

 return iptunnel_pull_header(skb, hdr_len, tpi->proto);
}
