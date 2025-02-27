
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int* buf; int dma; } ;
typedef int __be32 ;
typedef int __be16 ;


 scalar_t__ IS_ERR (struct mlx4_cmd_mailbox*) ;
 int MLX4_CMD_MAD_IFC ;
 int MLX4_CMD_NATIVE ;
 int MLX4_CMD_TIME_CLASS_C ;
 int PTR_ERR (struct mlx4_cmd_mailbox*) ;
 int cpu_to_be16 (int) ;
 int cpu_to_be32 (int) ;
 struct mlx4_cmd_mailbox* mlx4_alloc_cmd_mailbox (struct mlx4_dev*) ;
 int mlx4_cmd_box (struct mlx4_dev*,int ,int ,int,int,int ,int ,int ) ;
 int mlx4_free_cmd_mailbox (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ;

int mlx4_get_port_ib_caps(struct mlx4_dev *dev, u8 port, __be32 *caps)
{
 struct mlx4_cmd_mailbox *inmailbox, *outmailbox;
 u8 *inbuf, *outbuf;
 int err;

 inmailbox = mlx4_alloc_cmd_mailbox(dev);
 if (IS_ERR(inmailbox))
  return PTR_ERR(inmailbox);

 outmailbox = mlx4_alloc_cmd_mailbox(dev);
 if (IS_ERR(outmailbox)) {
  mlx4_free_cmd_mailbox(dev, inmailbox);
  return PTR_ERR(outmailbox);
 }

 inbuf = inmailbox->buf;
 outbuf = outmailbox->buf;
 inbuf[0] = 1;
 inbuf[1] = 1;
 inbuf[2] = 1;
 inbuf[3] = 1;
 *(__be16 *) (&inbuf[16]) = cpu_to_be16(0x0015);
 *(__be32 *) (&inbuf[20]) = cpu_to_be32(port);

 err = mlx4_cmd_box(dev, inmailbox->dma, outmailbox->dma, port, 3,
      MLX4_CMD_MAD_IFC, MLX4_CMD_TIME_CLASS_C,
      MLX4_CMD_NATIVE);
 if (!err)
  *caps = *(__be32 *) (outbuf + 84);
 mlx4_free_cmd_mailbox(dev, inmailbox);
 mlx4_free_cmd_mailbox(dev, outmailbox);
 return err;
}
