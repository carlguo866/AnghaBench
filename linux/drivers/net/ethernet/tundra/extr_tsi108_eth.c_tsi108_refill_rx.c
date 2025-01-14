
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tsi108_prv_data {int rxfree; int rxhead; TYPE_2__* rxring; TYPE_1__* pdev; struct sk_buff** rxskbs; } ;
struct sk_buff {int data; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int misc; int blen; int buf0; } ;
struct TYPE_3__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int TSI108_EC_RXSTAT ;
 int TSI108_EC_RXSTAT_QUEUE0 ;
 int TSI108_RXBUF_SIZE ;
 int TSI108_RXRING_LEN ;
 int TSI108_RX_INT ;
 int TSI108_RX_OWN ;
 int TSI108_RX_SKB_SIZE ;
 int TSI_READ (int ) ;
 int dma_map_single (int *,int ,int ,int ) ;
 struct sk_buff* netdev_alloc_skb_ip_align (struct net_device*,int ) ;
 struct tsi108_prv_data* netdev_priv (struct net_device*) ;
 int tsi108_restart_rx (struct tsi108_prv_data*,struct net_device*) ;

__attribute__((used)) static int tsi108_refill_rx(struct net_device *dev, int budget)
{
 struct tsi108_prv_data *data = netdev_priv(dev);
 int done = 0;

 while (data->rxfree != TSI108_RXRING_LEN && done != budget) {
  int rx = data->rxhead;
  struct sk_buff *skb;

  skb = netdev_alloc_skb_ip_align(dev, TSI108_RXBUF_SIZE);
  data->rxskbs[rx] = skb;
  if (!skb)
   break;

  data->rxring[rx].buf0 = dma_map_single(&data->pdev->dev,
    skb->data, TSI108_RX_SKB_SIZE,
    DMA_FROM_DEVICE);






  data->rxring[rx].blen = TSI108_RX_SKB_SIZE;
  data->rxring[rx].misc = TSI108_RX_OWN | TSI108_RX_INT;

  data->rxhead = (data->rxhead + 1) % TSI108_RXRING_LEN;
  data->rxfree++;
  done++;
 }

 if (done != 0 && !(TSI_READ(TSI108_EC_RXSTAT) &
      TSI108_EC_RXSTAT_QUEUE0))
  tsi108_restart_rx(data, dev);

 return done;
}
