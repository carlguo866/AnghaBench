
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ DIM_CQ_PERIOD_MODE_START_FROM_CQE ;
 scalar_t__ DIM_CQ_PERIOD_MODE_START_FROM_EQE ;
 scalar_t__ MLX5_CQ_PERIOD_MODE_START_FROM_CQE ;

__attribute__((used)) static u8 mlx5_to_net_dim_cq_period_mode(u8 cq_period_mode)
{
 return cq_period_mode == MLX5_CQ_PERIOD_MODE_START_FROM_CQE ?
  DIM_CQ_PERIOD_MODE_START_FROM_CQE :
  DIM_CQ_PERIOD_MODE_START_FROM_EQE;
}
