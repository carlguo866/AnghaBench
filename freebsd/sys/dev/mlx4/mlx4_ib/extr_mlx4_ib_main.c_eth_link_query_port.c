
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int if_mtu; } ;
struct mlx4_ib_iboe {int lock; struct net_device** netdevs; } ;
struct mlx4_ib_dev {TYPE_2__* dev; struct mlx4_ib_iboe iboe; } ;
struct mlx4_cmd_mailbox {scalar_t__ buf; int dma; } ;
struct ib_port_attr {int port_cap_flags; int pkey_tbl_len; int max_vl_num; void* state; void* phys_state; int max_mtu; void* active_mtu; int max_msg_sz; int gid_tbl_len; int active_speed; int active_width; } ;
struct ib_device {int dummy; } ;
typedef enum ib_mtu { ____Placeholder_ib_mtu } ib_mtu ;
struct TYPE_6__ {int max_msg_sz; int * gid_table_len; } ;
struct TYPE_7__ {TYPE_1__ caps; } ;


 void* IB_MTU_256 ;
 int IB_MTU_4096 ;
 void* IB_PORT_ACTIVE ;
 int IB_PORT_CM_SUP ;
 void* IB_PORT_DOWN ;
 int IB_PORT_IP_BASED_GIDS ;
 int IB_SPEED_QDR ;
 int IB_WIDTH_1X ;
 int IB_WIDTH_4X ;
 scalar_t__ IS_ERR (struct mlx4_cmd_mailbox*) ;
 int MLX4_CMD_QUERY_PORT ;
 int MLX4_CMD_TIME_CLASS_B ;
 int MLX4_CMD_WRAPPED ;
 int PTR_ERR (struct mlx4_cmd_mailbox*) ;
 int iboe_get_mtu (int ) ;
 void* min (int ,int) ;
 struct mlx4_cmd_mailbox* mlx4_alloc_cmd_mailbox (TYPE_2__*) ;
 int mlx4_cmd_box (TYPE_2__*,int ,int ,int,int ,int ,int ,int ) ;
 int mlx4_free_cmd_mailbox (TYPE_2__*,struct mlx4_cmd_mailbox*) ;
 int mlx4_is_bonded (TYPE_2__*) ;
 struct net_device* netdev_master_upper_dev_get_rcu (struct net_device*) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 void* state_to_phys_state (void*) ;
 struct mlx4_ib_dev* to_mdev (struct ib_device*) ;

__attribute__((used)) static int eth_link_query_port(struct ib_device *ibdev, u8 port,
          struct ib_port_attr *props, int netw_view)
{

 struct mlx4_ib_dev *mdev = to_mdev(ibdev);
 struct mlx4_ib_iboe *iboe = &mdev->iboe;
 struct net_device *ndev;
 enum ib_mtu tmp;
 struct mlx4_cmd_mailbox *mailbox;
 int err = 0;
 int is_bonded = mlx4_is_bonded(mdev->dev);

 mailbox = mlx4_alloc_cmd_mailbox(mdev->dev);
 if (IS_ERR(mailbox))
  return PTR_ERR(mailbox);

 err = mlx4_cmd_box(mdev->dev, 0, mailbox->dma, port, 0,
      MLX4_CMD_QUERY_PORT, MLX4_CMD_TIME_CLASS_B,
      MLX4_CMD_WRAPPED);
 if (err)
  goto out;

 props->active_width = (((u8 *)mailbox->buf)[5] == 0x40) ?
      IB_WIDTH_4X : IB_WIDTH_1X;
 props->active_speed = IB_SPEED_QDR;
 props->port_cap_flags = IB_PORT_CM_SUP | IB_PORT_IP_BASED_GIDS;
 props->gid_tbl_len = mdev->dev->caps.gid_table_len[port];
 props->max_msg_sz = mdev->dev->caps.max_msg_sz;
 props->pkey_tbl_len = 1;
 props->max_mtu = IB_MTU_4096;
 props->max_vl_num = 2;
 props->state = IB_PORT_DOWN;
 props->phys_state = state_to_phys_state(props->state);
 props->active_mtu = IB_MTU_256;
 spin_lock_bh(&iboe->lock);
 ndev = iboe->netdevs[port - 1];
 if (ndev && is_bonded) {





 }
 if (!ndev)
  goto out_unlock;

 tmp = iboe_get_mtu(ndev->if_mtu);
 props->active_mtu = tmp ? min(props->max_mtu, tmp) : IB_MTU_256;

 props->state = (netif_running(ndev) && netif_carrier_ok(ndev)) ?
     IB_PORT_ACTIVE : IB_PORT_DOWN;
 props->phys_state = state_to_phys_state(props->state);
out_unlock:
 spin_unlock_bh(&iboe->lock);
out:
 mlx4_free_cmd_mailbox(mdev->dev, mailbox);
 return err;
}
