
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {scalar_t__ ip_summed; int csum_offset; } ;
struct alx_txd {int word1; } ;


 scalar_t__ CHECKSUM_PARTIAL ;
 int EINVAL ;
 int TPD_CXSUMOFFSET_SHIFT ;
 int TPD_CXSUMSTART_SHIFT ;
 int TPD_CXSUM_EN_SHIFT ;
 int cpu_to_le32 (int) ;
 int skb_checksum_start_offset (struct sk_buff*) ;

__attribute__((used)) static int alx_tx_csum(struct sk_buff *skb, struct alx_txd *first)
{
 u8 cso, css;

 if (skb->ip_summed != CHECKSUM_PARTIAL)
  return 0;

 cso = skb_checksum_start_offset(skb);
 if (cso & 1)
  return -EINVAL;

 css = cso + skb->csum_offset;
 first->word1 |= cpu_to_le32((cso >> 1) << TPD_CXSUMSTART_SHIFT);
 first->word1 |= cpu_to_le32((css >> 1) << TPD_CXSUMOFFSET_SHIFT);
 first->word1 |= cpu_to_le32(1 << TPD_CXSUM_EN_SHIFT);

 return 0;
}
