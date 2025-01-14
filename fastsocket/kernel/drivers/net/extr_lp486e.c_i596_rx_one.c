
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int protocol; } ;
struct TYPE_2__ {int rx_length_errors; int rx_crc_errors; int rx_frame_errors; int rx_fifo_errors; int rx_over_errors; int collisions; int rx_errors; int rx_packets; int rx_dropped; } ;
struct net_device {int name; TYPE_1__ stats; } ;
struct i596_rfd {int stat; int count; int cmd; int data; } ;
struct i596_private {int dummy; } ;


 int CMD_EOL ;
 int RFD_ALIGN_ERR ;
 int RFD_COLLISION ;
 int RFD_CRC_ERR ;
 int RFD_DMA_ERR ;
 int RFD_LENGTH_ERR ;
 int RFD_NOBUFS_ERR ;
 int RFD_SHORT_FRAME_ERR ;
 int RFD_STAT_OK ;
 struct sk_buff* dev_alloc_skb (int) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int memcpy (int ,int ,int) ;
 int netif_rx (struct sk_buff*) ;
 int printk (char*,...) ;
 int skb_put (struct sk_buff*,int) ;

__attribute__((used)) static inline int
i596_rx_one(struct net_device *dev, struct i596_private *lp,
     struct i596_rfd *rfd, int *frames) {

 if (rfd->stat & RFD_STAT_OK) {

  int pkt_len = (rfd->count & 0x3fff);
  struct sk_buff *skb = dev_alloc_skb(pkt_len);

  (*frames)++;

  if (rfd->cmd & CMD_EOL)
   printk("Received on EOL\n");

  if (skb == ((void*)0)) {
   printk ("%s: i596_rx Memory squeeze, "
    "dropping packet.\n", dev->name);
   dev->stats.rx_dropped++;
   return 1;
  }

  memcpy(skb_put(skb,pkt_len), rfd->data, pkt_len);

  skb->protocol = eth_type_trans(skb,dev);
  netif_rx(skb);
  dev->stats.rx_packets++;
 } else {




  dev->stats.rx_errors++;
  if (rfd->stat & RFD_COLLISION)
   dev->stats.collisions++;
  if (rfd->stat & RFD_SHORT_FRAME_ERR)
   dev->stats.rx_length_errors++;
  if (rfd->stat & RFD_DMA_ERR)
   dev->stats.rx_over_errors++;
  if (rfd->stat & RFD_NOBUFS_ERR)
   dev->stats.rx_fifo_errors++;
  if (rfd->stat & RFD_ALIGN_ERR)
   dev->stats.rx_frame_errors++;
  if (rfd->stat & RFD_CRC_ERR)
   dev->stats.rx_crc_errors++;
  if (rfd->stat & RFD_LENGTH_ERR)
   dev->stats.rx_length_errors++;
 }
 rfd->stat = rfd->count = 0;
 return 0;
}
