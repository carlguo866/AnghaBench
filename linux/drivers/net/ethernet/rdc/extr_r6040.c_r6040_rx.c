
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {int data; int protocol; int dev; } ;
struct r6040_private {struct r6040_descriptor* rx_remove_ptr; int pdev; int dev; int lock; } ;
struct r6040_descriptor {int status; struct r6040_descriptor* vndescp; struct sk_buff* skb_ptr; int buf; scalar_t__ len; } ;
struct TYPE_2__ {int rx_bytes; int rx_packets; int rx_dropped; int rx_crc_errors; int rx_length_errors; int rx_frame_errors; } ;
struct net_device {TYPE_1__ stats; } ;


 int DSC_OWNER_MAC ;
 int DSC_RX_ERR ;
 int DSC_RX_ERR_BUF ;
 int DSC_RX_ERR_CRC ;
 int DSC_RX_ERR_DRI ;
 int DSC_RX_ERR_LONG ;
 int DSC_RX_ERR_RUNT ;
 int MAX_BUF_SIZE ;
 int PCI_DMA_FROMDEVICE ;
 int cpu_to_le32 (int ) ;
 int eth_type_trans (struct sk_buff*,int ) ;
 int le32_to_cpu (int ) ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,int ) ;
 struct r6040_private* netdev_priv (struct net_device*) ;
 int netif_receive_skb (struct sk_buff*) ;
 int pci_map_single (int ,int ,int ,int ) ;
 int pci_unmap_single (int ,int ,int ,int ) ;
 int skb_put (struct sk_buff*,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int r6040_rx(struct net_device *dev, int limit)
{
 struct r6040_private *priv = netdev_priv(dev);
 struct r6040_descriptor *descptr = priv->rx_remove_ptr;
 struct sk_buff *skb_ptr, *new_skb;
 int count = 0;
 u16 err;


 while (count < limit && !(descptr->status & DSC_OWNER_MAC)) {

  err = descptr->status;

  if (err & DSC_RX_ERR) {

   if (err & DSC_RX_ERR_DRI)
    dev->stats.rx_frame_errors++;

   if (err & DSC_RX_ERR_BUF)
    dev->stats.rx_length_errors++;

   if (err & DSC_RX_ERR_LONG)
    dev->stats.rx_length_errors++;

   if (err & DSC_RX_ERR_RUNT)
    dev->stats.rx_length_errors++;

   if (err & DSC_RX_ERR_CRC) {
    spin_lock(&priv->lock);
    dev->stats.rx_crc_errors++;
    spin_unlock(&priv->lock);
   }
   goto next_descr;
  }


  new_skb = netdev_alloc_skb(dev, MAX_BUF_SIZE);
  if (!new_skb) {
   dev->stats.rx_dropped++;
   goto next_descr;
  }
  skb_ptr = descptr->skb_ptr;
  skb_ptr->dev = priv->dev;


  skb_put(skb_ptr, descptr->len - 4);
  pci_unmap_single(priv->pdev, le32_to_cpu(descptr->buf),
     MAX_BUF_SIZE, PCI_DMA_FROMDEVICE);
  skb_ptr->protocol = eth_type_trans(skb_ptr, priv->dev);


  netif_receive_skb(skb_ptr);
  dev->stats.rx_packets++;
  dev->stats.rx_bytes += descptr->len - 4;


  descptr->skb_ptr = new_skb;
  descptr->buf = cpu_to_le32(pci_map_single(priv->pdev,
      descptr->skb_ptr->data,
     MAX_BUF_SIZE, PCI_DMA_FROMDEVICE));

next_descr:

  descptr->status = DSC_OWNER_MAC;
  descptr = descptr->vndescp;
  count++;
 }
 priv->rx_remove_ptr = descptr;

 return count;
}
