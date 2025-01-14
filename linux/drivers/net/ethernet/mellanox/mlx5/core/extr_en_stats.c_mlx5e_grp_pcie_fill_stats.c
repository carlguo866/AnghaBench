
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int pcie_perf_counters; } ;
struct TYPE_4__ {TYPE_1__ pcie; } ;
struct mlx5e_priv {TYPE_2__ stats; int mdev; } ;


 int MLX5E_READ_CTR32_BE (int *,int ,int) ;
 int MLX5E_READ_CTR64_BE (int *,int ,int) ;
 scalar_t__ MLX5_CAP_MCAM_FEATURE (int ,int ) ;
 int NUM_PCIE_PERF_COUNTERS ;
 int NUM_PCIE_PERF_COUNTERS64 ;
 int NUM_PCIE_PERF_STALL_COUNTERS ;
 int pcie_outbound_stalled ;
 int pcie_perf_stall_stats_desc ;
 int pcie_perf_stats_desc ;
 int pcie_perf_stats_desc64 ;
 int pcie_performance_group ;
 int tx_overflow_buffer_pkt ;

__attribute__((used)) static int mlx5e_grp_pcie_fill_stats(struct mlx5e_priv *priv, u64 *data,
         int idx)
{
 int i;

 if (MLX5_CAP_MCAM_FEATURE((priv)->mdev, pcie_performance_group))
  for (i = 0; i < NUM_PCIE_PERF_COUNTERS; i++)
   data[idx++] =
    MLX5E_READ_CTR32_BE(&priv->stats.pcie.pcie_perf_counters,
          pcie_perf_stats_desc, i);

 if (MLX5_CAP_MCAM_FEATURE((priv)->mdev, tx_overflow_buffer_pkt))
  for (i = 0; i < NUM_PCIE_PERF_COUNTERS64; i++)
   data[idx++] =
    MLX5E_READ_CTR64_BE(&priv->stats.pcie.pcie_perf_counters,
          pcie_perf_stats_desc64, i);

 if (MLX5_CAP_MCAM_FEATURE((priv)->mdev, pcie_outbound_stalled))
  for (i = 0; i < NUM_PCIE_PERF_STALL_COUNTERS; i++)
   data[idx++] =
    MLX5E_READ_CTR32_BE(&priv->stats.pcie.pcie_perf_counters,
          pcie_perf_stall_stats_desc, i);
 return idx;
}
