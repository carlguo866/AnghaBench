
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int netif_tx_start_all_queues (struct net_device*) ;

__attribute__((used)) static int tun_net_open(struct net_device *dev)
{
 netif_tx_start_all_queues(dev);

 return 0;
}
