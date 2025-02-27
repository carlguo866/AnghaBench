
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef size_t u32 ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct qlcnic_skb_frag {int dma; int length; } ;
struct qlcnic_host_tx_ring {size_t num_desc; size_t producer; struct qlcnic_cmd_buffer* cmd_buf_arr; struct cmd_desc_type0* desc_head; } ;
struct qlcnic_cmd_buffer {int frag_count; struct qlcnic_skb_frag* frag_array; struct sk_buff* skb; } ;
struct TYPE_5__ {int txdropped; int xmitcalled; int txbytes; int tx_dma_map_error; int xmit_off; } ;
struct qlcnic_adapter {int flags; TYPE_2__ stats; scalar_t__ mac_learn; int portnum; struct pci_dev* pdev; int mac_addr; int state; struct qlcnic_host_tx_ring* tx_ring; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct ethhdr {int h_source; } ;
struct cmd_desc_type0 {void* addr_buffer4; void* addr_buffer3; void* addr_buffer2; void* addr_buffer1; int * buffer_length; } ;
typedef int netdev_tx_t ;
struct TYPE_6__ {int nr_frags; TYPE_1__* frags; } ;
struct TYPE_4__ {scalar_t__ size; } ;


 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int QLCNIC_MACSPOOF ;
 int QLCNIC_MAX_FRAGS_PER_TX ;
 scalar_t__ TX_STOP_THRESH ;
 int __QLCNIC_DEV_UP ;
 int __pskb_pull_tail (struct sk_buff*,int) ;
 scalar_t__ compare_ether_addr (int ,int ) ;
 int cpu_to_le16 (int ) ;
 void* cpu_to_le64 (int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 void* get_next_index (size_t,size_t) ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int qlcnic_clear_cmddesc (int *) ;
 scalar_t__ qlcnic_map_tx_skb (struct pci_dev*,struct sk_buff*,struct qlcnic_cmd_buffer*) ;
 int qlcnic_send_filter (struct qlcnic_adapter*,struct cmd_desc_type0*,struct sk_buff*) ;
 int qlcnic_set_tx_frags_len (struct cmd_desc_type0*,int,scalar_t__) ;
 int qlcnic_set_tx_port (struct cmd_desc_type0*,int ) ;
 scalar_t__ qlcnic_tx_avail (struct qlcnic_host_tx_ring*) ;
 int qlcnic_tx_pkt (struct qlcnic_adapter*,struct cmd_desc_type0*,struct sk_buff*) ;
 int qlcnic_unmap_buffers (struct pci_dev*,struct sk_buff*,struct qlcnic_cmd_buffer*) ;
 int qlcnic_update_cmd_producer (struct qlcnic_host_tx_ring*) ;
 int skb_is_gso (struct sk_buff*) ;
 TYPE_3__* skb_shinfo (struct sk_buff*) ;
 int smp_mb () ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

netdev_tx_t qlcnic_xmit_frame(struct sk_buff *skb, struct net_device *netdev)
{
 struct qlcnic_adapter *adapter = netdev_priv(netdev);
 struct qlcnic_host_tx_ring *tx_ring = adapter->tx_ring;
 struct qlcnic_cmd_buffer *pbuf;
 struct qlcnic_skb_frag *buffrag;
 struct cmd_desc_type0 *hwdesc, *first_desc;
 struct pci_dev *pdev;
 struct ethhdr *phdr;
 int i, k, frag_count, delta = 0;
 u32 producer, num_txd;

 num_txd = tx_ring->num_desc;

 if (!test_bit(__QLCNIC_DEV_UP, &adapter->state)) {
  netif_stop_queue(netdev);
  return NETDEV_TX_BUSY;
 }

 if (adapter->flags & QLCNIC_MACSPOOF) {
  phdr = (struct ethhdr *)skb->data;
  if (compare_ether_addr(phdr->h_source, adapter->mac_addr))
   goto drop_packet;
 }

 frag_count = skb_shinfo(skb)->nr_frags + 1;



 if (!skb_is_gso(skb) && frag_count > QLCNIC_MAX_FRAGS_PER_TX) {

  for (i = 0; i < (frag_count - QLCNIC_MAX_FRAGS_PER_TX); i++)
   delta += skb_shinfo(skb)->frags[i].size;

  if (!__pskb_pull_tail(skb, delta))
   goto drop_packet;

  frag_count = 1 + skb_shinfo(skb)->nr_frags;
 }

 if (unlikely(qlcnic_tx_avail(tx_ring) <= TX_STOP_THRESH)) {
  netif_stop_queue(netdev);
  if (qlcnic_tx_avail(tx_ring) > TX_STOP_THRESH) {
   netif_start_queue(netdev);
  } else {
   adapter->stats.xmit_off++;
   return NETDEV_TX_BUSY;
  }
 }

 producer = tx_ring->producer;
 pbuf = &tx_ring->cmd_buf_arr[producer];
 pdev = adapter->pdev;
 first_desc = &tx_ring->desc_head[producer];
 hwdesc = &tx_ring->desc_head[producer];
 qlcnic_clear_cmddesc((u64 *)hwdesc);

 if (qlcnic_map_tx_skb(pdev, skb, pbuf)) {
  adapter->stats.tx_dma_map_error++;
  goto drop_packet;
 }

 pbuf->skb = skb;
 pbuf->frag_count = frag_count;

 qlcnic_set_tx_frags_len(first_desc, frag_count, skb->len);
 qlcnic_set_tx_port(first_desc, adapter->portnum);

 for (i = 0; i < frag_count; i++) {
  k = i % 4;

  if ((k == 0) && (i > 0)) {

   producer = get_next_index(producer, num_txd);
   hwdesc = &tx_ring->desc_head[producer];
   qlcnic_clear_cmddesc((u64 *)hwdesc);
   tx_ring->cmd_buf_arr[producer].skb = ((void*)0);
  }

  buffrag = &pbuf->frag_array[i];
  hwdesc->buffer_length[k] = cpu_to_le16(buffrag->length);
  switch (k) {
  case 0:
   hwdesc->addr_buffer1 = cpu_to_le64(buffrag->dma);
   break;
  case 1:
   hwdesc->addr_buffer2 = cpu_to_le64(buffrag->dma);
   break;
  case 2:
   hwdesc->addr_buffer3 = cpu_to_le64(buffrag->dma);
   break;
  case 3:
   hwdesc->addr_buffer4 = cpu_to_le64(buffrag->dma);
   break;
  }
 }

 tx_ring->producer = get_next_index(producer, num_txd);
 smp_mb();

 if (unlikely(qlcnic_tx_pkt(adapter, first_desc, skb)))
  goto unwind_buff;

 if (adapter->mac_learn)
  qlcnic_send_filter(adapter, first_desc, skb);

 adapter->stats.txbytes += skb->len;
 adapter->stats.xmitcalled++;

 qlcnic_update_cmd_producer(tx_ring);

 return NETDEV_TX_OK;

unwind_buff:
 qlcnic_unmap_buffers(pdev, skb, pbuf);
drop_packet:
 adapter->stats.txdropped++;
 dev_kfree_skb_any(skb);
 return NETDEV_TX_OK;
}
