
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int pfc_state; } ;
struct mlx4_en_priv {TYPE_2__ cee_config; int flags; scalar_t__ dcbx_cap; TYPE_1__* mdev; scalar_t__ num_tx_rings_p_up; int * tx_ring_num; } ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;
 int MLX4_EN_FLAG_DCB_ENABLED ;
 int MLX4_EN_NUM_UP_HIGH ;
 size_t TX ;
 int mlx4_is_slave (int ) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;
 int netdev_set_num_tc (struct net_device*,int) ;
 int netdev_set_tc_queue (struct net_device*,int,scalar_t__,unsigned int) ;
 int netif_set_real_num_tx_queues (struct net_device*,int ) ;

int mlx4_en_setup_tc(struct net_device *dev, u8 up)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 int i;
 unsigned int offset = 0;

 if (up && up != MLX4_EN_NUM_UP_HIGH)
  return -EINVAL;

 netdev_set_num_tc(dev, up);
 netif_set_real_num_tx_queues(dev, priv->tx_ring_num[TX]);

 for (i = 0; i < up; i++) {
  netdev_set_tc_queue(dev, i, priv->num_tx_rings_p_up, offset);
  offset += priv->num_tx_rings_p_up;
 }
 return 0;
}
