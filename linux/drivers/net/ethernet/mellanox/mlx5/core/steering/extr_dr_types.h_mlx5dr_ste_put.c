
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_ste {int refcount; } ;
struct mlx5dr_matcher_rx_tx {int dummy; } ;
struct mlx5dr_matcher {int dummy; } ;


 int mlx5dr_ste_free (struct mlx5dr_ste*,struct mlx5dr_matcher*,struct mlx5dr_matcher_rx_tx*) ;
 scalar_t__ refcount_dec_and_test (int *) ;

__attribute__((used)) static inline void mlx5dr_ste_put(struct mlx5dr_ste *ste,
      struct mlx5dr_matcher *matcher,
      struct mlx5dr_matcher_rx_tx *nic_matcher)
{
 if (refcount_dec_and_test(&ste->refcount))
  mlx5dr_ste_free(ste, matcher, nic_matcher);
}
