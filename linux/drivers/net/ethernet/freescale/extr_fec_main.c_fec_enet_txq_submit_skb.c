
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {scalar_t__ ip_summed; void* data; } ;
struct net_device {int dummy; } ;
struct fec_enet_private {unsigned long tx_align; int quirks; scalar_t__ hwts_tx_en; scalar_t__ bufdesc_ex; TYPE_1__* pdev; } ;
struct TYPE_7__ {int reg_desc_active; struct bufdesc* cur; int qid; } ;
struct fec_enet_priv_tx_q {TYPE_3__ bd; struct sk_buff** tx_skbuff; void** tx_bounce; } ;
struct bufdesc_ex {void* cbd_esc; scalar_t__ cbd_bdu; } ;
struct bufdesc {void* cbd_sc; void* cbd_datlen; void* cbd_bufaddr; } ;
typedef unsigned int dma_addr_t ;
struct TYPE_6__ {int nr_frags; int tx_flags; } ;
struct TYPE_5__ {int dev; } ;


 unsigned int BD_ENET_TX_IINS ;
 unsigned int BD_ENET_TX_INT ;
 unsigned short BD_ENET_TX_INTR ;
 unsigned short BD_ENET_TX_LAST ;
 unsigned int BD_ENET_TX_PINS ;
 unsigned short BD_ENET_TX_READY ;
 unsigned short BD_ENET_TX_STATS ;
 unsigned short BD_ENET_TX_TC ;
 unsigned int BD_ENET_TX_TS ;
 scalar_t__ CHECKSUM_PARTIAL ;
 int DMA_TO_DEVICE ;
 int FEC_QUIRK_HAS_AVB ;
 int FEC_QUIRK_SWAP_FRAME ;
 unsigned int FEC_TX_BD_FTYPE (int ) ;
 scalar_t__ IS_ERR (struct bufdesc*) ;
 int MAX_SKB_FRAGS ;
 int NETDEV_TX_OK ;
 int SKBTX_HW_TSTAMP ;
 int SKBTX_IN_PROGRESS ;
 void* cpu_to_fec16 (unsigned short) ;
 void* cpu_to_fec32 (unsigned int) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 unsigned int dma_map_single (int *,void*,unsigned short,int ) ;
 scalar_t__ dma_mapping_error (int *,unsigned int) ;
 int dma_unmap_single (int *,unsigned int,unsigned short,int ) ;
 unsigned short fec16_to_cpu (void*) ;
 scalar_t__ fec_enet_clear_csum (struct sk_buff*,struct net_device*) ;
 unsigned int fec_enet_get_bd_index (struct bufdesc*,TYPE_3__*) ;
 int fec_enet_get_free_txdesc_num (struct fec_enet_priv_tx_q*) ;
 struct bufdesc* fec_enet_get_nextdesc (struct bufdesc*,TYPE_3__*) ;
 struct bufdesc* fec_enet_txq_submit_frag_skb (struct fec_enet_priv_tx_q*,struct sk_buff*,struct net_device*) ;
 int memcpy (void*,void*,unsigned short) ;
 scalar_t__ net_ratelimit () ;
 int netdev_err (struct net_device*,char*) ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;
 unsigned short skb_headlen (struct sk_buff*) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 int skb_tx_timestamp (struct sk_buff*) ;
 int swap_buffer (void*,unsigned short) ;
 scalar_t__ unlikely (int) ;
 int wmb () ;
 int writel (int ,int ) ;

__attribute__((used)) static int fec_enet_txq_submit_skb(struct fec_enet_priv_tx_q *txq,
       struct sk_buff *skb, struct net_device *ndev)
{
 struct fec_enet_private *fep = netdev_priv(ndev);
 int nr_frags = skb_shinfo(skb)->nr_frags;
 struct bufdesc *bdp, *last_bdp;
 void *bufaddr;
 dma_addr_t addr;
 unsigned short status;
 unsigned short buflen;
 unsigned int estatus = 0;
 unsigned int index;
 int entries_free;

 entries_free = fec_enet_get_free_txdesc_num(txq);
 if (entries_free < MAX_SKB_FRAGS + 1) {
  dev_kfree_skb_any(skb);
  if (net_ratelimit())
   netdev_err(ndev, "NOT enough BD for SG!\n");
  return NETDEV_TX_OK;
 }


 if (fec_enet_clear_csum(skb, ndev)) {
  dev_kfree_skb_any(skb);
  return NETDEV_TX_OK;
 }


 bdp = txq->bd.cur;
 last_bdp = bdp;
 status = fec16_to_cpu(bdp->cbd_sc);
 status &= ~BD_ENET_TX_STATS;


 bufaddr = skb->data;
 buflen = skb_headlen(skb);

 index = fec_enet_get_bd_index(bdp, &txq->bd);
 if (((unsigned long) bufaddr) & fep->tx_align ||
  fep->quirks & FEC_QUIRK_SWAP_FRAME) {
  memcpy(txq->tx_bounce[index], skb->data, buflen);
  bufaddr = txq->tx_bounce[index];

  if (fep->quirks & FEC_QUIRK_SWAP_FRAME)
   swap_buffer(bufaddr, buflen);
 }


 addr = dma_map_single(&fep->pdev->dev, bufaddr, buflen, DMA_TO_DEVICE);
 if (dma_mapping_error(&fep->pdev->dev, addr)) {
  dev_kfree_skb_any(skb);
  if (net_ratelimit())
   netdev_err(ndev, "Tx DMA memory map failed\n");
  return NETDEV_TX_OK;
 }

 if (nr_frags) {
  last_bdp = fec_enet_txq_submit_frag_skb(txq, skb, ndev);
  if (IS_ERR(last_bdp)) {
   dma_unmap_single(&fep->pdev->dev, addr,
      buflen, DMA_TO_DEVICE);
   dev_kfree_skb_any(skb);
   return NETDEV_TX_OK;
  }
 } else {
  status |= (BD_ENET_TX_INTR | BD_ENET_TX_LAST);
  if (fep->bufdesc_ex) {
   estatus = BD_ENET_TX_INT;
   if (unlikely(skb_shinfo(skb)->tx_flags &
    SKBTX_HW_TSTAMP && fep->hwts_tx_en))
    estatus |= BD_ENET_TX_TS;
  }
 }
 bdp->cbd_bufaddr = cpu_to_fec32(addr);
 bdp->cbd_datlen = cpu_to_fec16(buflen);

 if (fep->bufdesc_ex) {

  struct bufdesc_ex *ebdp = (struct bufdesc_ex *)bdp;

  if (unlikely(skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP &&
   fep->hwts_tx_en))
   skb_shinfo(skb)->tx_flags |= SKBTX_IN_PROGRESS;

  if (fep->quirks & FEC_QUIRK_HAS_AVB)
   estatus |= FEC_TX_BD_FTYPE(txq->bd.qid);

  if (skb->ip_summed == CHECKSUM_PARTIAL)
   estatus |= BD_ENET_TX_PINS | BD_ENET_TX_IINS;

  ebdp->cbd_bdu = 0;
  ebdp->cbd_esc = cpu_to_fec32(estatus);
 }

 index = fec_enet_get_bd_index(last_bdp, &txq->bd);

 txq->tx_skbuff[index] = skb;




 wmb();




 status |= (BD_ENET_TX_READY | BD_ENET_TX_TC);
 bdp->cbd_sc = cpu_to_fec16(status);


 bdp = fec_enet_get_nextdesc(last_bdp, &txq->bd);

 skb_tx_timestamp(skb);




 wmb();
 txq->bd.cur = bdp;


 writel(0, txq->bd.reg_desc_active);

 return 0;
}
