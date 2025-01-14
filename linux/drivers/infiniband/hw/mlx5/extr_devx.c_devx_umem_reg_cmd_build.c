
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_ib_dev {int dummy; } ;
struct devx_umem_reg_cmd {void* in; } ;
struct devx_umem {TYPE_1__* umem; scalar_t__ page_shift; scalar_t__ page_offset; int ncont; } ;
typedef void __be64 ;
struct TYPE_2__ {scalar_t__ writable; } ;


 scalar_t__ MLX5_ADAPTER_PAGE_SHIFT ;
 void* MLX5_ADDR_OF (void*,void*,void*) ;
 scalar_t__ MLX5_CMD_OP_CREATE_UMEM ;
 int MLX5_IB_MTT_READ ;
 int MLX5_IB_MTT_WRITE ;
 int MLX5_SET (void*,void*,int ,scalar_t__) ;
 int MLX5_SET64 (void*,void*,int ,int ) ;
 void* create_umem_in ;
 int log_page_size ;
 int mlx5_ib_populate_pas (struct mlx5_ib_dev*,TYPE_1__*,scalar_t__,void*,int) ;
 int num_of_mtt ;
 int opcode ;
 int page_offset ;

__attribute__((used)) static void devx_umem_reg_cmd_build(struct mlx5_ib_dev *dev,
        struct devx_umem *obj,
        struct devx_umem_reg_cmd *cmd)
{
 void *umem;
 __be64 *mtt;

 umem = MLX5_ADDR_OF(create_umem_in, cmd->in, umem);
 mtt = (__be64 *)MLX5_ADDR_OF(umem, umem, mtt);

 MLX5_SET(create_umem_in, cmd->in, opcode, MLX5_CMD_OP_CREATE_UMEM);
 MLX5_SET64(umem, umem, num_of_mtt, obj->ncont);
 MLX5_SET(umem, umem, log_page_size, obj->page_shift -
         MLX5_ADAPTER_PAGE_SHIFT);
 MLX5_SET(umem, umem, page_offset, obj->page_offset);
 mlx5_ib_populate_pas(dev, obj->umem, obj->page_shift, mtt,
        (obj->umem->writable ? MLX5_IB_MTT_WRITE : 0) |
        MLX5_IB_MTT_READ);
}
