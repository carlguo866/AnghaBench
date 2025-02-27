
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ttc_params {TYPE_3__* inner_ttc; int * indir_tirn; int any_tt_tirn; } ;
struct TYPE_6__ {struct mlx5_flow_table* t; } ;
struct mlx5e_ttc_table {struct mlx5_flow_handle** tunnel_rules; struct mlx5_flow_handle** rules; TYPE_1__ ft; } ;
struct mlx5e_priv {int mdev; } ;
struct mlx5_flow_table {int dummy; } ;
struct mlx5_flow_handle {int dummy; } ;
struct mlx5_flow_destination {int ft; int type; int tir_num; } ;
struct TYPE_10__ {int proto; int etype; } ;
struct TYPE_9__ {int proto; int etype; } ;
struct TYPE_7__ {int t; } ;
struct TYPE_8__ {TYPE_2__ ft; } ;


 scalar_t__ IS_ERR (struct mlx5_flow_handle*) ;
 int MLX5E_NUM_TT ;
 int MLX5E_NUM_TUNNEL_TT ;
 int MLX5E_TT_ANY ;
 int MLX5_FLOW_DESTINATION_TYPE_FLOW_TABLE ;
 int MLX5_FLOW_DESTINATION_TYPE_TIR ;
 int PTR_ERR (struct mlx5_flow_handle*) ;
 int mlx5e_cleanup_ttc_rules (struct mlx5e_ttc_table*) ;
 struct mlx5_flow_handle* mlx5e_generate_ttc_rule (struct mlx5e_priv*,struct mlx5_flow_table*,struct mlx5_flow_destination*,int ,int ) ;
 int mlx5e_tunnel_inner_ft_supported (int ) ;
 int mlx5e_tunnel_proto_supported (int ,int ) ;
 TYPE_5__* ttc_rules ;
 TYPE_4__* ttc_tunnel_rules ;

__attribute__((used)) static int mlx5e_generate_ttc_table_rules(struct mlx5e_priv *priv,
       struct ttc_params *params,
       struct mlx5e_ttc_table *ttc)
{
 struct mlx5_flow_destination dest = {};
 struct mlx5_flow_handle **rules;
 struct mlx5_flow_table *ft;
 int tt;
 int err;

 ft = ttc->ft.t;
 rules = ttc->rules;

 dest.type = MLX5_FLOW_DESTINATION_TYPE_TIR;
 for (tt = 0; tt < MLX5E_NUM_TT; tt++) {
  if (tt == MLX5E_TT_ANY)
   dest.tir_num = params->any_tt_tirn;
  else
   dest.tir_num = params->indir_tirn[tt];
  rules[tt] = mlx5e_generate_ttc_rule(priv, ft, &dest,
          ttc_rules[tt].etype,
          ttc_rules[tt].proto);
  if (IS_ERR(rules[tt]))
   goto del_rules;
 }

 if (!params->inner_ttc || !mlx5e_tunnel_inner_ft_supported(priv->mdev))
  return 0;

 rules = ttc->tunnel_rules;
 dest.type = MLX5_FLOW_DESTINATION_TYPE_FLOW_TABLE;
 dest.ft = params->inner_ttc->ft.t;
 for (tt = 0; tt < MLX5E_NUM_TUNNEL_TT; tt++) {
  if (!mlx5e_tunnel_proto_supported(priv->mdev,
        ttc_tunnel_rules[tt].proto))
   continue;
  rules[tt] = mlx5e_generate_ttc_rule(priv, ft, &dest,
          ttc_tunnel_rules[tt].etype,
          ttc_tunnel_rules[tt].proto);
  if (IS_ERR(rules[tt]))
   goto del_rules;
 }

 return 0;

del_rules:
 err = PTR_ERR(rules[tt]);
 rules[tt] = ((void*)0);
 mlx5e_cleanup_ttc_rules(ttc);
 return err;
}
