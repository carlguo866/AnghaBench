
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct mlx4_eq* eq; } ;
struct mlx4_priv {TYPE_2__ eq_table; } ;
struct mlx4_eq {int affinity_mask; } ;
struct TYPE_3__ {int num_comp_vectors; } ;
struct mlx4_dev {TYPE_1__ caps; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MLX4_EQ_ASYNC ;
 int cpumask_set_cpu (int,int ) ;
 scalar_t__ mlx4_get_eqs_per_port (struct mlx4_dev*,int) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int zalloc_cpumask_var (int *,int ) ;

__attribute__((used)) static int mlx4_init_affinity_hint(struct mlx4_dev *dev, int port, int eqn)
{
 int requested_cpu = 0;
 struct mlx4_priv *priv = mlx4_priv(dev);
 struct mlx4_eq *eq;
 int off = 0;
 int i;

 if (eqn > dev->caps.num_comp_vectors)
  return -EINVAL;

 for (i = 1; i < port; i++)
  off += mlx4_get_eqs_per_port(dev, i);

 requested_cpu = eqn - off - !!(eqn > MLX4_EQ_ASYNC);


 if (requested_cpu < 0)
  return 0;

 eq = &priv->eq_table.eq[eqn];

 if (!zalloc_cpumask_var(&eq->affinity_mask, GFP_KERNEL))
  return -ENOMEM;

 cpumask_set_cpu(requested_cpu, eq->affinity_mask);

 return 0;
}
