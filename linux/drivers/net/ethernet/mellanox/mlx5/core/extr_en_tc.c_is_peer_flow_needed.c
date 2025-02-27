
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mlx5e_tc_flow {struct mlx5_esw_flow_attr* esw_attr; } ;
struct mlx5_esw_flow_attr {int action; TYPE_3__* in_mdev; TYPE_2__* in_rep; } ;
struct TYPE_5__ {int devcom; } ;
struct TYPE_7__ {TYPE_1__ priv; } ;
struct TYPE_6__ {scalar_t__ vport; } ;


 int INGRESS ;
 int MLX5_DEVCOM_ESW_OFFLOADS ;
 int MLX5_FLOW_CONTEXT_ACTION_PACKET_REFORMAT ;
 scalar_t__ MLX5_VPORT_UPLINK ;
 scalar_t__ flow_flag_test (struct mlx5e_tc_flow*,int ) ;
 int mlx5_devcom_is_paired (int ,int ) ;
 scalar_t__ mlx5_lag_is_multipath (TYPE_3__*) ;
 scalar_t__ mlx5_lag_is_sriov (TYPE_3__*) ;

__attribute__((used)) static bool is_peer_flow_needed(struct mlx5e_tc_flow *flow)
{
 struct mlx5_esw_flow_attr *attr = flow->esw_attr;
 bool is_rep_ingress = attr->in_rep->vport != MLX5_VPORT_UPLINK &&
  flow_flag_test(flow, INGRESS);
 bool act_is_encap = !!(attr->action &
          MLX5_FLOW_CONTEXT_ACTION_PACKET_REFORMAT);
 bool esw_paired = mlx5_devcom_is_paired(attr->in_mdev->priv.devcom,
      MLX5_DEVCOM_ESW_OFFLOADS);

 if (!esw_paired)
  return 0;

 if ((mlx5_lag_is_sriov(attr->in_mdev) ||
      mlx5_lag_is_multipath(attr->in_mdev)) &&
     (is_rep_ingress || act_is_encap))
  return 1;

 return 0;
}
