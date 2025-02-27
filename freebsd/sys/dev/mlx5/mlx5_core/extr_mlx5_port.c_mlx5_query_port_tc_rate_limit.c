
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mlx5_core_dev {int dummy; } ;
typedef int out ;


 void* MLX5_ADDR_OF (int ,int *,int ) ;
 int MLX5_GET (int ,void*,int *) ;
 int MLX5_ST_SZ_DW (int ) ;
 int ets_tcn_config_reg ;
 int mlx5_max_tc (struct mlx5_core_dev*) ;
 int mlx5_query_port_qetcr_reg (struct mlx5_core_dev*,int *,int) ;
 int qetc_reg ;
 int * tc_configuration ;

int mlx5_query_port_tc_rate_limit(struct mlx5_core_dev *mdev,
       u8 *max_bw_value,
       u8 *max_bw_units)
{
 u32 out[MLX5_ST_SZ_DW(qetc_reg)];
 void *ets_tcn_conf;
 int err;
 int i;

 err = mlx5_query_port_qetcr_reg(mdev, out, sizeof(out));
 if (err)
  return err;

 for (i = 0; i <= mlx5_max_tc(mdev); i++) {
  ets_tcn_conf = MLX5_ADDR_OF(qetc_reg, out, tc_configuration[i]);

  max_bw_value[i] = MLX5_GET(ets_tcn_config_reg, ets_tcn_conf,
        max_bw_value);
  max_bw_units[i] = MLX5_GET(ets_tcn_config_reg, ets_tcn_conf,
        max_bw_units);
 }

 return 0;
}
