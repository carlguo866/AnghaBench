
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* cmd_type_len; scalar_t__ olinfo_status; void* buffer_addr; } ;
union e1000_adv_tx_desc {TYPE_1__ read; } ;
typedef scalar_t__ u8 ;
typedef unsigned int u32 ;
typedef size_t u16 ;
struct sk_buff {unsigned int data_len; int data; scalar_t__ const len; } ;
struct igb_tx_buffer {unsigned int tx_flags; struct sk_buff* skb; union e1000_adv_tx_desc* next_to_watch; int time_stamp; int bytecount; } ;
struct igb_ring {size_t next_to_use; size_t count; int dev; struct igb_tx_buffer* tx_buffer_info; int tail; } ;
typedef int skb_frag_t ;
typedef unsigned int dma_addr_t ;
struct TYPE_4__ {int * frags; } ;


 int DESC_NEEDED ;
 int DMA_TO_DEVICE ;
 unsigned int IGB_MAX_DATA_PER_TXD ;
 unsigned int IGB_TXD_DCMD ;
 union e1000_adv_tx_desc* IGB_TX_DESC (struct igb_ring*,size_t) ;
 void* cpu_to_le32 (unsigned int) ;
 void* cpu_to_le64 (unsigned int) ;
 int dev_err (int ,char*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 unsigned int dma_map_single (int ,int ,unsigned int,int ) ;
 scalar_t__ dma_mapping_error (int ,unsigned int) ;
 int dma_unmap_addr (struct igb_tx_buffer*,unsigned int) ;
 int dma_unmap_addr_set (struct igb_tx_buffer*,unsigned int,unsigned int) ;
 scalar_t__ dma_unmap_len (struct igb_tx_buffer*,int ) ;
 int dma_unmap_len_set (struct igb_tx_buffer*,int ,unsigned int) ;
 int dma_unmap_page (int ,int ,scalar_t__,int ) ;
 int dma_unmap_single (int ,int ,scalar_t__,int ) ;
 int dma_wmb () ;
 int igb_maybe_stop_tx (struct igb_ring*,int ) ;
 unsigned int igb_tx_cmd_type (struct sk_buff*,unsigned int) ;
 int igb_tx_olinfo_status (struct igb_ring*,union e1000_adv_tx_desc*,unsigned int,scalar_t__ const) ;
 int jiffies ;
 int len ;
 scalar_t__ likely (int) ;
 int netdev_tx_sent_queue (int ,int ) ;
 int netdev_xmit_more () ;
 scalar_t__ netif_xmit_stopped (int ) ;
 unsigned int skb_frag_dma_map (int ,int *,int ,unsigned int,int ) ;
 unsigned int skb_frag_size (int *) ;
 unsigned int skb_headlen (struct sk_buff*) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 int skb_tx_timestamp (struct sk_buff*) ;
 int txring_txq (struct igb_ring*) ;
 scalar_t__ unlikely (int) ;
 int writel (size_t,int ) ;

__attribute__((used)) static int igb_tx_map(struct igb_ring *tx_ring,
        struct igb_tx_buffer *first,
        const u8 hdr_len)
{
 struct sk_buff *skb = first->skb;
 struct igb_tx_buffer *tx_buffer;
 union e1000_adv_tx_desc *tx_desc;
 skb_frag_t *frag;
 dma_addr_t dma;
 unsigned int data_len, size;
 u32 tx_flags = first->tx_flags;
 u32 cmd_type = igb_tx_cmd_type(skb, tx_flags);
 u16 i = tx_ring->next_to_use;

 tx_desc = IGB_TX_DESC(tx_ring, i);

 igb_tx_olinfo_status(tx_ring, tx_desc, tx_flags, skb->len - hdr_len);

 size = skb_headlen(skb);
 data_len = skb->data_len;

 dma = dma_map_single(tx_ring->dev, skb->data, size, DMA_TO_DEVICE);

 tx_buffer = first;

 for (frag = &skb_shinfo(skb)->frags[0];; frag++) {
  if (dma_mapping_error(tx_ring->dev, dma))
   goto dma_error;


  dma_unmap_len_set(tx_buffer, len, size);
  dma_unmap_addr_set(tx_buffer, dma, dma);

  tx_desc->read.buffer_addr = cpu_to_le64(dma);

  while (unlikely(size > IGB_MAX_DATA_PER_TXD)) {
   tx_desc->read.cmd_type_len =
    cpu_to_le32(cmd_type ^ IGB_MAX_DATA_PER_TXD);

   i++;
   tx_desc++;
   if (i == tx_ring->count) {
    tx_desc = IGB_TX_DESC(tx_ring, 0);
    i = 0;
   }
   tx_desc->read.olinfo_status = 0;

   dma += IGB_MAX_DATA_PER_TXD;
   size -= IGB_MAX_DATA_PER_TXD;

   tx_desc->read.buffer_addr = cpu_to_le64(dma);
  }

  if (likely(!data_len))
   break;

  tx_desc->read.cmd_type_len = cpu_to_le32(cmd_type ^ size);

  i++;
  tx_desc++;
  if (i == tx_ring->count) {
   tx_desc = IGB_TX_DESC(tx_ring, 0);
   i = 0;
  }
  tx_desc->read.olinfo_status = 0;

  size = skb_frag_size(frag);
  data_len -= size;

  dma = skb_frag_dma_map(tx_ring->dev, frag, 0,
           size, DMA_TO_DEVICE);

  tx_buffer = &tx_ring->tx_buffer_info[i];
 }


 cmd_type |= size | IGB_TXD_DCMD;
 tx_desc->read.cmd_type_len = cpu_to_le32(cmd_type);

 netdev_tx_sent_queue(txring_txq(tx_ring), first->bytecount);


 first->time_stamp = jiffies;

 skb_tx_timestamp(skb);
 dma_wmb();


 first->next_to_watch = tx_desc;

 i++;
 if (i == tx_ring->count)
  i = 0;

 tx_ring->next_to_use = i;


 igb_maybe_stop_tx(tx_ring, DESC_NEEDED);

 if (netif_xmit_stopped(txring_txq(tx_ring)) || !netdev_xmit_more()) {
  writel(i, tx_ring->tail);
 }
 return 0;

dma_error:
 dev_err(tx_ring->dev, "TX DMA map failed\n");
 tx_buffer = &tx_ring->tx_buffer_info[i];


 while (tx_buffer != first) {
  if (dma_unmap_len(tx_buffer, len))
   dma_unmap_page(tx_ring->dev,
           dma_unmap_addr(tx_buffer, dma),
           dma_unmap_len(tx_buffer, len),
           DMA_TO_DEVICE);
  dma_unmap_len_set(tx_buffer, len, 0);

  if (i-- == 0)
   i += tx_ring->count;
  tx_buffer = &tx_ring->tx_buffer_info[i];
 }

 if (dma_unmap_len(tx_buffer, len))
  dma_unmap_single(tx_ring->dev,
     dma_unmap_addr(tx_buffer, dma),
     dma_unmap_len(tx_buffer, len),
     DMA_TO_DEVICE);
 dma_unmap_len_set(tx_buffer, len, 0);

 dev_kfree_skb_any(tx_buffer->skb);
 tx_buffer->skb = ((void*)0);

 tx_ring->next_to_use = i;

 return -1;
}
