
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_vhcr {int dummy; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int dummy; } ;
struct mlx4_cmd_info {int dummy; } ;



int mlx4_SET_MCAST_FLTR_wrapper(struct mlx4_dev *dev, int slave,
    struct mlx4_vhcr *vhcr,
    struct mlx4_cmd_mailbox *inbox,
    struct mlx4_cmd_mailbox *outbox,
    struct mlx4_cmd_info *cmd)
{
 int err = 0;

 return err;
}
