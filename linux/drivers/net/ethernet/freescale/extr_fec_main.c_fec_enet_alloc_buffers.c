
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct fec_enet_private {unsigned int num_rx_queues; unsigned int num_tx_queues; } ;


 int ENOMEM ;
 scalar_t__ fec_enet_alloc_rxq_buffers (struct net_device*,unsigned int) ;
 scalar_t__ fec_enet_alloc_txq_buffers (struct net_device*,unsigned int) ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int fec_enet_alloc_buffers(struct net_device *ndev)
{
 struct fec_enet_private *fep = netdev_priv(ndev);
 unsigned int i;

 for (i = 0; i < fep->num_rx_queues; i++)
  if (fec_enet_alloc_rxq_buffers(ndev, i))
   return -ENOMEM;

 for (i = 0; i < fep->num_tx_queues; i++)
  if (fec_enet_alloc_txq_buffers(ndev, i))
   return -ENOMEM;
 return 0;
}
