
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct mlx4_vhcr {int in_modifier; } ;
struct TYPE_9__ {int * init_port_ref; TYPE_3__* slave_state; TYPE_2__* qp0_state; } ;
struct TYPE_10__ {TYPE_4__ master; } ;
struct mlx4_priv {TYPE_5__ mfunc; } ;
struct TYPE_6__ {scalar_t__* port_mask; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct mlx4_cmd_mailbox {int dummy; } ;
struct mlx4_cmd_info {int dummy; } ;
struct TYPE_8__ {int init_port_mask; } ;
struct TYPE_7__ {int port_active; } ;


 int EINVAL ;
 int MLX4_CMD_INIT_PORT ;
 int MLX4_CMD_NATIVE ;
 int MLX4_CMD_TIME_CLASS_A ;
 scalar_t__ MLX4_PORT_TYPE_IB ;
 scalar_t__ check_qp0_state (struct mlx4_dev*,int,int) ;
 int mlx4_cmd (struct mlx4_dev*,int ,int,int ,int ,int ,int ) ;
 int mlx4_master_func_num (struct mlx4_dev*) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_slave_convert_port (struct mlx4_dev*,int,int ) ;

int mlx4_INIT_PORT_wrapper(struct mlx4_dev *dev, int slave,
      struct mlx4_vhcr *vhcr,
      struct mlx4_cmd_mailbox *inbox,
      struct mlx4_cmd_mailbox *outbox,
      struct mlx4_cmd_info *cmd)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 int port = mlx4_slave_convert_port(dev, slave, vhcr->in_modifier);
 int err;

 if (port < 0)
  return -EINVAL;

 if (priv->mfunc.master.slave_state[slave].init_port_mask & (1 << port))
  return 0;

 if (dev->caps.port_mask[port] != MLX4_PORT_TYPE_IB) {

  if (!priv->mfunc.master.init_port_ref[port]) {
   err = mlx4_cmd(dev, 0, port, 0, MLX4_CMD_INIT_PORT,
           MLX4_CMD_TIME_CLASS_A, MLX4_CMD_NATIVE);
   if (err)
    return err;
  }
  priv->mfunc.master.slave_state[slave].init_port_mask |= (1 << port);
 } else {
  if (slave == mlx4_master_func_num(dev)) {
   if (check_qp0_state(dev, slave, port) &&
       !priv->mfunc.master.qp0_state[port].port_active) {
    err = mlx4_cmd(dev, 0, port, 0, MLX4_CMD_INIT_PORT,
            MLX4_CMD_TIME_CLASS_A, MLX4_CMD_NATIVE);
    if (err)
     return err;
    priv->mfunc.master.qp0_state[port].port_active = 1;
    priv->mfunc.master.slave_state[slave].init_port_mask |= (1 << port);
   }
  } else
   priv->mfunc.master.slave_state[slave].init_port_mask |= (1 << port);
 }
 ++priv->mfunc.master.init_port_ref[port];
 return 0;
}
