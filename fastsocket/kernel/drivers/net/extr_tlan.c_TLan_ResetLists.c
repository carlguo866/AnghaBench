
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sk_buff {int data; } ;
struct net_device {int dummy; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_8__ {int frameSize; scalar_t__ forward; TYPE_1__* buffer; int cStat; } ;
struct TYPE_7__ {int rxTail; TYPE_3__* rxList; int pciDev; scalar_t__ rxListDMA; scalar_t__ rxHead; TYPE_3__* txList; scalar_t__ txTail; scalar_t__ txHead; } ;
struct TYPE_6__ {int count; scalar_t__ address; } ;
typedef TYPE_2__ TLanPrivateInfo ;
typedef TYPE_3__ TLanList ;


 int NET_IP_ALIGN ;
 int PCI_DMA_FROMDEVICE ;
 int TLAN_CSTAT_READY ;
 int TLAN_CSTAT_UNUSED ;
 int TLAN_LAST_BUFFER ;
 int TLAN_MAX_FRAME_SIZE ;
 int TLAN_NUM_RX_LISTS ;
 int TLAN_NUM_TX_LISTS ;
 int TLan_StoreSKB (TYPE_3__*,struct sk_buff*) ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,int) ;
 TYPE_2__* netdev_priv (struct net_device*) ;
 scalar_t__ pci_map_single (int ,int ,int,int ) ;
 int pr_err (char*) ;
 int skb_reserve (struct sk_buff*,int ) ;

__attribute__((used)) static void TLan_ResetLists( struct net_device *dev )
{
 TLanPrivateInfo *priv = netdev_priv(dev);
 int i;
 TLanList *list;
 dma_addr_t list_phys;
 struct sk_buff *skb;

 priv->txHead = 0;
 priv->txTail = 0;
 for ( i = 0; i < TLAN_NUM_TX_LISTS; i++ ) {
  list = priv->txList + i;
  list->cStat = TLAN_CSTAT_UNUSED;
  list->buffer[0].address = 0;
  list->buffer[2].count = 0;
  list->buffer[2].address = 0;
  list->buffer[8].address = 0;
  list->buffer[9].address = 0;
 }

 priv->rxHead = 0;
 priv->rxTail = TLAN_NUM_RX_LISTS - 1;
 for ( i = 0; i < TLAN_NUM_RX_LISTS; i++ ) {
  list = priv->rxList + i;
  list_phys = priv->rxListDMA + sizeof(TLanList) * i;
  list->cStat = TLAN_CSTAT_READY;
  list->frameSize = TLAN_MAX_FRAME_SIZE;
  list->buffer[0].count = TLAN_MAX_FRAME_SIZE | TLAN_LAST_BUFFER;
  skb = netdev_alloc_skb(dev, TLAN_MAX_FRAME_SIZE + 7 );
  if ( !skb ) {
   pr_err("TLAN: out of memory for received data.\n" );
   break;
  }

  skb_reserve( skb, NET_IP_ALIGN );
  list->buffer[0].address = pci_map_single(priv->pciDev,
        skb->data,
        TLAN_MAX_FRAME_SIZE,
        PCI_DMA_FROMDEVICE);
  TLan_StoreSKB(list, skb);
  list->buffer[1].count = 0;
  list->buffer[1].address = 0;
  list->forward = list_phys + sizeof(TLanList);
 }


 while (i < TLAN_NUM_RX_LISTS) {
  TLan_StoreSKB(priv->rxList + i, ((void*)0));
  ++i;
 }
 list->forward = 0;

}
