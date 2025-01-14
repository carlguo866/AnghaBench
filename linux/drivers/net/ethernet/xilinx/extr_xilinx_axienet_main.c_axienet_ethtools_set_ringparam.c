
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_ringparam {scalar_t__ rx_pending; int tx_pending; scalar_t__ rx_jumbo_pending; scalar_t__ rx_mini_pending; } ;
struct axienet_local {scalar_t__ rx_bd_num; int tx_bd_num; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ RX_BD_NUM_MAX ;
 scalar_t__ TX_BD_NUM_MAX ;
 struct axienet_local* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int axienet_ethtools_set_ringparam(struct net_device *ndev,
       struct ethtool_ringparam *ering)
{
 struct axienet_local *lp = netdev_priv(ndev);

 if (ering->rx_pending > RX_BD_NUM_MAX ||
     ering->rx_mini_pending ||
     ering->rx_jumbo_pending ||
     ering->rx_pending > TX_BD_NUM_MAX)
  return -EINVAL;

 if (netif_running(ndev))
  return -EBUSY;

 lp->rx_bd_num = ering->rx_pending;
 lp->tx_bd_num = ering->tx_pending;
 return 0;
}
