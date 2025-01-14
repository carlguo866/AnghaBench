
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct mlx5e_priv {int mdev; } ;
struct TYPE_6__ {int format; } ;
struct TYPE_5__ {int format; } ;
struct TYPE_4__ {int format; } ;


 int ETH_GSTRING_LEN ;
 scalar_t__ MLX5_CAP_MCAM_FEATURE (int ,int ) ;
 int NUM_PCIE_PERF_COUNTERS ;
 int NUM_PCIE_PERF_COUNTERS64 ;
 int NUM_PCIE_PERF_STALL_COUNTERS ;
 int pcie_outbound_stalled ;
 TYPE_3__* pcie_perf_stall_stats_desc ;
 TYPE_2__* pcie_perf_stats_desc ;
 TYPE_1__* pcie_perf_stats_desc64 ;
 int pcie_performance_group ;
 int strcpy (int *,int ) ;
 int tx_overflow_buffer_pkt ;

__attribute__((used)) static int mlx5e_grp_pcie_fill_strings(struct mlx5e_priv *priv, u8 *data,
           int idx)
{
 int i;

 if (MLX5_CAP_MCAM_FEATURE((priv)->mdev, pcie_performance_group))
  for (i = 0; i < NUM_PCIE_PERF_COUNTERS; i++)
   strcpy(data + (idx++) * ETH_GSTRING_LEN,
          pcie_perf_stats_desc[i].format);

 if (MLX5_CAP_MCAM_FEATURE((priv)->mdev, tx_overflow_buffer_pkt))
  for (i = 0; i < NUM_PCIE_PERF_COUNTERS64; i++)
   strcpy(data + (idx++) * ETH_GSTRING_LEN,
          pcie_perf_stats_desc64[i].format);

 if (MLX5_CAP_MCAM_FEATURE((priv)->mdev, pcie_outbound_stalled))
  for (i = 0; i < NUM_PCIE_PERF_STALL_COUNTERS; i++)
   strcpy(data + (idx++) * ETH_GSTRING_LEN,
          pcie_perf_stall_stats_desc[i].format);
 return idx;
}
