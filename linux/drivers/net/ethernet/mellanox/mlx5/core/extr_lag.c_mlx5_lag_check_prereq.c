
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_lag {TYPE_1__* pf; } ;
struct TYPE_2__ {int dev; } ;


 int mlx5_esw_lag_prereq (int ,int ) ;
 int mlx5_sriov_is_enabled (int ) ;

__attribute__((used)) static bool mlx5_lag_check_prereq(struct mlx5_lag *ldev)
{
 if (!ldev->pf[0].dev || !ldev->pf[1].dev)
  return 0;




 return (!mlx5_sriov_is_enabled(ldev->pf[0].dev) &&
  !mlx5_sriov_is_enabled(ldev->pf[1].dev));

}
