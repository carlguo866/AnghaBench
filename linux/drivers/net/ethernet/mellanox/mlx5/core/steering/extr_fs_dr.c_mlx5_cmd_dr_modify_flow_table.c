
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_flow_table {int dummy; } ;
struct mlx5_flow_root_namespace {int dummy; } ;


 int set_miss_action (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*,struct mlx5_flow_table*) ;

__attribute__((used)) static int mlx5_cmd_dr_modify_flow_table(struct mlx5_flow_root_namespace *ns,
      struct mlx5_flow_table *ft,
      struct mlx5_flow_table *next_ft)
{
 return set_miss_action(ns, ft, next_ft);
}
