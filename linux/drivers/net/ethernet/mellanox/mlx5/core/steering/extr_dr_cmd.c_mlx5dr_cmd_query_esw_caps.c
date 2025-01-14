
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_esw_caps {int sw_owner; void* uplink_icm_address_tx; void* uplink_icm_address_rx; void* drop_icm_address_tx; void* drop_icm_address_rx; } ;
struct mlx5_core_dev {int dummy; } ;


 void* MLX5_CAP64_ESW_FLOWTABLE (struct mlx5_core_dev*,int ) ;
 int MLX5_CAP_ESW_FLOWTABLE_FDB (struct mlx5_core_dev*,int ) ;
 int sw_owner ;
 int sw_steering_fdb_action_drop_icm_address_rx ;
 int sw_steering_fdb_action_drop_icm_address_tx ;
 int sw_steering_uplink_icm_address_rx ;
 int sw_steering_uplink_icm_address_tx ;

int mlx5dr_cmd_query_esw_caps(struct mlx5_core_dev *mdev,
         struct mlx5dr_esw_caps *caps)
{
 caps->drop_icm_address_rx =
  MLX5_CAP64_ESW_FLOWTABLE(mdev,
      sw_steering_fdb_action_drop_icm_address_rx);
 caps->drop_icm_address_tx =
  MLX5_CAP64_ESW_FLOWTABLE(mdev,
      sw_steering_fdb_action_drop_icm_address_tx);
 caps->uplink_icm_address_rx =
  MLX5_CAP64_ESW_FLOWTABLE(mdev,
      sw_steering_uplink_icm_address_rx);
 caps->uplink_icm_address_tx =
  MLX5_CAP64_ESW_FLOWTABLE(mdev,
      sw_steering_uplink_icm_address_tx);
 caps->sw_owner =
  MLX5_CAP_ESW_FLOWTABLE_FDB(mdev,
        sw_owner);

 return 0;
}
