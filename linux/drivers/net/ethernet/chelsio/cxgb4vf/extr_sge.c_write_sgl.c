
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ulptx_sge_pair {void** addr; void** len; } ;
typedef struct ulptx_sge_pair u8 ;
typedef scalar_t__ u64 ;
struct ulptx_sgl {struct ulptx_sge_pair* sge; void* cmd_nsge; void* addr0; void* len0; } ;
struct skb_shared_info {unsigned int nr_frags; int * frags; } ;
struct sk_buff {int dummy; } ;
struct sge_txq {struct ulptx_sge_pair* desc; scalar_t__ stat; } ;
typedef scalar_t__ dma_addr_t ;


 int MAX_SKB_FRAGS ;
 unsigned int ULPTX_CMD_V (int ) ;
 unsigned int ULPTX_NSGE_V (unsigned int) ;
 int ULP_TX_SC_DSGL ;
 void* cpu_to_be32 (unsigned int) ;
 void* cpu_to_be64 (scalar_t__ const) ;
 void* htonl (unsigned int) ;
 scalar_t__ likely (unsigned int) ;
 int memcpy (struct ulptx_sge_pair*,struct ulptx_sge_pair*,unsigned int) ;
 unsigned int skb_frag_size (int *) ;
 unsigned int skb_headlen (struct sk_buff const*) ;
 struct skb_shared_info* skb_shinfo (struct sk_buff const*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void write_sgl(const struct sk_buff *skb, struct sge_txq *tq,
        struct ulptx_sgl *sgl, u64 *end, unsigned int start,
        const dma_addr_t *addr)
{
 unsigned int i, len;
 struct ulptx_sge_pair *to;
 const struct skb_shared_info *si = skb_shinfo(skb);
 unsigned int nfrags = si->nr_frags;
 struct ulptx_sge_pair buf[MAX_SKB_FRAGS / 2 + 1];

 len = skb_headlen(skb) - start;
 if (likely(len)) {
  sgl->len0 = htonl(len);
  sgl->addr0 = cpu_to_be64(addr[0] + start);
  nfrags++;
 } else {
  sgl->len0 = htonl(skb_frag_size(&si->frags[0]));
  sgl->addr0 = cpu_to_be64(addr[1]);
 }

 sgl->cmd_nsge = htonl(ULPTX_CMD_V(ULP_TX_SC_DSGL) |
         ULPTX_NSGE_V(nfrags));
 if (likely(--nfrags == 0))
  return;





 to = (u8 *)end > (u8 *)tq->stat ? buf : sgl->sge;

 for (i = (nfrags != si->nr_frags); nfrags >= 2; nfrags -= 2, to++) {
  to->len[0] = cpu_to_be32(skb_frag_size(&si->frags[i]));
  to->len[1] = cpu_to_be32(skb_frag_size(&si->frags[++i]));
  to->addr[0] = cpu_to_be64(addr[i]);
  to->addr[1] = cpu_to_be64(addr[++i]);
 }
 if (nfrags) {
  to->len[0] = cpu_to_be32(skb_frag_size(&si->frags[i]));
  to->len[1] = cpu_to_be32(0);
  to->addr[0] = cpu_to_be64(addr[i + 1]);
 }
 if (unlikely((u8 *)end > (u8 *)tq->stat)) {
  unsigned int part0 = (u8 *)tq->stat - (u8 *)sgl->sge, part1;

  if (likely(part0))
   memcpy(sgl->sge, buf, part0);
  part1 = (u8 *)end - (u8 *)tq->stat;
  memcpy(tq->desc, (u8 *)buf + part0, part1);
  end = (void *)tq->desc + part1;
 }
 if ((uintptr_t)end & 8)
  *end = 0;
}
