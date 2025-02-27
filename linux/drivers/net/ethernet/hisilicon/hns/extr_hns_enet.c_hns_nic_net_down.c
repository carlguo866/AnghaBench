
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {scalar_t__ phydev; } ;
struct hns_nic_priv {scalar_t__ ring_data; TYPE_2__* ae_handle; scalar_t__ link; int service_timer; int state; } ;
struct hnae_ae_ops {int (* stop ) (TYPE_2__*) ;} ;
struct TYPE_4__ {int q_num; TYPE_1__* dev; } ;
struct TYPE_3__ {struct hnae_ae_ops* ops; } ;


 int NIC_STATE_DOWN ;
 int del_timer_sync (int *) ;
 int hns_nic_ring_close (struct net_device*,int) ;
 int hns_nic_tx_clr_all_bufs (scalar_t__) ;
 struct hns_nic_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_tx_disable (struct net_device*) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 int phy_stop (scalar_t__) ;
 int stub1 (TYPE_2__*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static void hns_nic_net_down(struct net_device *ndev)
{
 int i;
 struct hnae_ae_ops *ops;
 struct hns_nic_priv *priv = netdev_priv(ndev);

 if (test_and_set_bit(NIC_STATE_DOWN, &priv->state))
  return;

 (void)del_timer_sync(&priv->service_timer);
 netif_tx_stop_all_queues(ndev);
 netif_carrier_off(ndev);
 netif_tx_disable(ndev);
 priv->link = 0;

 if (ndev->phydev)
  phy_stop(ndev->phydev);

 ops = priv->ae_handle->dev->ops;

 if (ops->stop)
  ops->stop(priv->ae_handle);

 netif_tx_stop_all_queues(ndev);

 for (i = priv->ae_handle->q_num - 1; i >= 0; i--) {
  hns_nic_ring_close(ndev, i);
  hns_nic_ring_close(ndev, i + priv->ae_handle->q_num);


  hns_nic_tx_clr_all_bufs(priv->ring_data + i);
 }
}
