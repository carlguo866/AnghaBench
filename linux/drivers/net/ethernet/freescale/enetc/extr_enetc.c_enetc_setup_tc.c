
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tc_mqprio_qopt {int num_tc; int hw; } ;
struct net_device {int dummy; } ;
struct enetc_ndev_priv {int num_tx_rings; TYPE_1__* si; struct enetc_bdr** tx_ring; } ;
struct enetc_bdr {int index; } ;
typedef enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;
struct TYPE_2__ {int hw; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int TC_MQPRIO_HW_OFFLOAD_TCS ;
 int TC_SETUP_QDISC_MQPRIO ;
 int enetc_set_bdr_prio (int *,int ,int) ;
 int netdev_err (struct net_device*,char*,int) ;
 struct enetc_ndev_priv* netdev_priv (struct net_device*) ;
 int netdev_reset_tc (struct net_device*) ;
 int netdev_set_num_tc (struct net_device*,int) ;
 int netdev_set_tc_queue (struct net_device*,int,int,int) ;
 int netif_set_real_num_tx_queues (struct net_device*,int) ;

int enetc_setup_tc(struct net_device *ndev, enum tc_setup_type type,
     void *type_data)
{
 struct enetc_ndev_priv *priv = netdev_priv(ndev);
 struct tc_mqprio_qopt *mqprio = type_data;
 struct enetc_bdr *tx_ring;
 u8 num_tc;
 int i;

 if (type != TC_SETUP_QDISC_MQPRIO)
  return -EOPNOTSUPP;

 mqprio->hw = TC_MQPRIO_HW_OFFLOAD_TCS;
 num_tc = mqprio->num_tc;

 if (!num_tc) {
  netdev_reset_tc(ndev);
  netif_set_real_num_tx_queues(ndev, priv->num_tx_rings);


  for (i = 0; i < priv->num_tx_rings; i++) {
   tx_ring = priv->tx_ring[i];
   enetc_set_bdr_prio(&priv->si->hw, tx_ring->index, 0);
  }

  return 0;
 }


 if (num_tc > priv->num_tx_rings) {
  netdev_err(ndev, "Max %d traffic classes supported\n",
      priv->num_tx_rings);
  return -EINVAL;
 }





 for (i = 0; i < num_tc; i++) {
  tx_ring = priv->tx_ring[i];
  enetc_set_bdr_prio(&priv->si->hw, tx_ring->index, i);
 }


 netif_set_real_num_tx_queues(ndev, num_tc);

 netdev_set_num_tc(ndev, num_tc);


 for (i = 0; i < num_tc; i++)
  netdev_set_tc_queue(ndev, i, 1, i);

 return 0;
}
