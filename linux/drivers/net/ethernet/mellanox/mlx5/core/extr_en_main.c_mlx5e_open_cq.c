
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_cq_param {int dummy; } ;
struct mlx5e_cq {int mcq; } ;
struct mlx5e_channel {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct dim_cq_moder {int pkts; int usec; } ;


 scalar_t__ MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 int cq_moderation ;
 int mlx5_core_modify_cq_moderation (struct mlx5_core_dev*,int *,int ,int ) ;
 int mlx5e_alloc_cq (struct mlx5e_channel*,struct mlx5e_cq_param*,struct mlx5e_cq*) ;
 int mlx5e_create_cq (struct mlx5e_cq*,struct mlx5e_cq_param*) ;
 int mlx5e_free_cq (struct mlx5e_cq*) ;

int mlx5e_open_cq(struct mlx5e_channel *c, struct dim_cq_moder moder,
    struct mlx5e_cq_param *param, struct mlx5e_cq *cq)
{
 struct mlx5_core_dev *mdev = c->mdev;
 int err;

 err = mlx5e_alloc_cq(c, param, cq);
 if (err)
  return err;

 err = mlx5e_create_cq(cq, param);
 if (err)
  goto err_free_cq;

 if (MLX5_CAP_GEN(mdev, cq_moderation))
  mlx5_core_modify_cq_moderation(mdev, &cq->mcq, moder.usec, moder.pkts);
 return 0;

err_free_cq:
 mlx5e_free_cq(cq);

 return err;
}
