
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mlx4_set_port_prio2tc_context {int* prio2tc; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int dma; struct mlx4_set_port_prio2tc_context* buf; } ;


 scalar_t__ IS_ERR (struct mlx4_cmd_mailbox*) ;
 int MLX4_CMD_NATIVE ;
 int MLX4_CMD_SET_PORT ;
 int MLX4_CMD_TIME_CLASS_B ;
 int MLX4_NUM_UP ;
 int MLX4_SET_PORT_PRIO2TC ;
 int PTR_ERR (struct mlx4_cmd_mailbox*) ;
 int memset (struct mlx4_set_port_prio2tc_context*,int ,int) ;
 struct mlx4_cmd_mailbox* mlx4_alloc_cmd_mailbox (struct mlx4_dev*) ;
 int mlx4_cmd (struct mlx4_dev*,int ,int,int,int ,int ,int ) ;
 int mlx4_free_cmd_mailbox (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ;

int mlx4_SET_PORT_PRIO2TC(struct mlx4_dev *dev, u8 port, u8 *prio2tc)
{
 struct mlx4_cmd_mailbox *mailbox;
 struct mlx4_set_port_prio2tc_context *context;
 int err;
 u32 in_mod;
 int i;

 mailbox = mlx4_alloc_cmd_mailbox(dev);
 if (IS_ERR(mailbox))
  return PTR_ERR(mailbox);
 context = mailbox->buf;
 memset(context, 0, sizeof *context);

 for (i = 0; i < MLX4_NUM_UP; i += 2)
  context->prio2tc[i >> 1] = prio2tc[i] << 4 | prio2tc[i + 1];

 in_mod = MLX4_SET_PORT_PRIO2TC << 8 | port;
 err = mlx4_cmd(dev, mailbox->dma, in_mod, 1, MLX4_CMD_SET_PORT,
         MLX4_CMD_TIME_CLASS_B, MLX4_CMD_NATIVE);

 mlx4_free_cmd_mailbox(dev, mailbox);
 return err;
}
