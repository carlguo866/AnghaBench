
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qede_dev {scalar_t__ q_num_rx_buffers; scalar_t__ q_num_tx_buffers; } ;
struct net_device {int dummy; } ;
struct ethtool_ringparam {scalar_t__ rx_pending; scalar_t__ tx_pending; } ;


 int DP_VERBOSE (struct qede_dev*,int,char*,scalar_t__,scalar_t__,...) ;
 int EINVAL ;
 int NETIF_MSG_IFDOWN ;
 int NETIF_MSG_IFUP ;
 scalar_t__ NUM_RX_BDS_MAX ;
 scalar_t__ NUM_RX_BDS_MIN ;
 scalar_t__ NUM_TX_BDS_MAX ;
 scalar_t__ NUM_TX_BDS_MIN ;
 struct qede_dev* netdev_priv (struct net_device*) ;
 int qede_reload (struct qede_dev*,int *,int) ;

__attribute__((used)) static int qede_set_ringparam(struct net_device *dev,
         struct ethtool_ringparam *ering)
{
 struct qede_dev *edev = netdev_priv(dev);

 DP_VERBOSE(edev, (NETIF_MSG_IFUP | NETIF_MSG_IFDOWN),
     "Set ring params command parameters: rx_pending = %d, tx_pending = %d\n",
     ering->rx_pending, ering->tx_pending);


 if (ering->rx_pending > NUM_RX_BDS_MAX ||
     ering->rx_pending < NUM_RX_BDS_MIN ||
     ering->tx_pending > NUM_TX_BDS_MAX ||
     ering->tx_pending < NUM_TX_BDS_MIN) {
  DP_VERBOSE(edev, (NETIF_MSG_IFUP | NETIF_MSG_IFDOWN),
      "Can only support Rx Buffer size [0%08x,...,0x%08x] and Tx Buffer size [0x%08x,...,0x%08x]\n",
      NUM_RX_BDS_MIN, NUM_RX_BDS_MAX,
      NUM_TX_BDS_MIN, NUM_TX_BDS_MAX);
  return -EINVAL;
 }


 edev->q_num_rx_buffers = ering->rx_pending;
 edev->q_num_tx_buffers = ering->tx_pending;

 qede_reload(edev, ((void*)0), 0);

 return 0;
}
