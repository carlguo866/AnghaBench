
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_hairpin_params {int num_channels; } ;
struct mlx5_hairpin {int num_channels; void* rqn; void* sqn; struct mlx5_core_dev* peer_mdev; struct mlx5_core_dev* func_mdev; } ;
struct mlx5_core_dev {int dummy; } ;


 int ENOMEM ;
 struct mlx5_hairpin* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int kfree (struct mlx5_hairpin*) ;
 struct mlx5_hairpin* kzalloc (int,int ) ;
 int mlx5_hairpin_create_queues (struct mlx5_hairpin*,struct mlx5_hairpin_params*) ;
 int mlx5_hairpin_destroy_queues (struct mlx5_hairpin*) ;
 int mlx5_hairpin_pair_queues (struct mlx5_hairpin*) ;

struct mlx5_hairpin *
mlx5_core_hairpin_create(struct mlx5_core_dev *func_mdev,
    struct mlx5_core_dev *peer_mdev,
    struct mlx5_hairpin_params *params)
{
 struct mlx5_hairpin *hp;
 int size, err;

 size = sizeof(*hp) + params->num_channels * 2 * sizeof(u32);
 hp = kzalloc(size, GFP_KERNEL);
 if (!hp)
  return ERR_PTR(-ENOMEM);

 hp->func_mdev = func_mdev;
 hp->peer_mdev = peer_mdev;
 hp->num_channels = params->num_channels;

 hp->rqn = (void *)hp + sizeof(*hp);
 hp->sqn = hp->rqn + params->num_channels;


 err = mlx5_hairpin_create_queues(hp, params);
 if (err)
  goto err_create_queues;

 err = mlx5_hairpin_pair_queues(hp);
 if (err)
  goto err_pair_queues;

 return hp;

err_pair_queues:
 mlx5_hairpin_destroy_queues(hp);
err_create_queues:
 kfree(hp);
 return ERR_PTR(err);
}
