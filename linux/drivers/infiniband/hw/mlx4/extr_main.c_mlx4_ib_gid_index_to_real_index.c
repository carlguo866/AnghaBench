
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mlx4_port_gid_table {TYPE_1__* gids; } ;
struct mlx4_ib_iboe {int lock; struct mlx4_port_gid_table* gids; } ;
struct mlx4_ib_dev {int ib_dev; int dev; struct mlx4_ib_iboe iboe; } ;
struct ib_gid_attr {int port_num; int index; scalar_t__ gid_type; int gid; } ;
struct gid_cache_context {int real_index; } ;
struct TYPE_2__ {scalar_t__ gid_type; struct gid_cache_context* ctx; int gid; } ;


 int EINVAL ;
 int MLX4_MAX_PORTS ;
 int MLX4_MAX_PORT_GIDS ;
 int memcmp (int *,int *,int) ;
 scalar_t__ mlx4_is_bonded (int ) ;
 int rdma_cap_roce_gid_table (int *,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int mlx4_ib_gid_index_to_real_index(struct mlx4_ib_dev *ibdev,
        const struct ib_gid_attr *attr)
{
 struct mlx4_ib_iboe *iboe = &ibdev->iboe;
 struct gid_cache_context *ctx = ((void*)0);
 struct mlx4_port_gid_table *port_gid_table;
 int real_index = -EINVAL;
 int i;
 unsigned long flags;
 u8 port_num = attr->port_num;

 if (port_num > MLX4_MAX_PORTS)
  return -EINVAL;

 if (mlx4_is_bonded(ibdev->dev))
  port_num = 1;

 if (!rdma_cap_roce_gid_table(&ibdev->ib_dev, port_num))
  return attr->index;

 spin_lock_irqsave(&iboe->lock, flags);
 port_gid_table = &iboe->gids[port_num - 1];

 for (i = 0; i < MLX4_MAX_PORT_GIDS; ++i)
  if (!memcmp(&port_gid_table->gids[i].gid,
       &attr->gid, sizeof(attr->gid)) &&
      attr->gid_type == port_gid_table->gids[i].gid_type) {
   ctx = port_gid_table->gids[i].ctx;
   break;
  }
 if (ctx)
  real_index = ctx->real_index;
 spin_unlock_irqrestore(&iboe->lock, flags);
 return real_index;
}
