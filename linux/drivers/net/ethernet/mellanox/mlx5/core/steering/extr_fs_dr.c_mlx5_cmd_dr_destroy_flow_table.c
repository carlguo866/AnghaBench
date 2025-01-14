
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5dr_action {int dummy; } ;
struct TYPE_3__ {int dr_table; struct mlx5dr_action* miss_action; } ;
struct mlx5_flow_table {TYPE_1__ fs_dr_table; int flags; } ;
struct mlx5_flow_root_namespace {int dev; } ;
struct TYPE_4__ {int (* destroy_flow_table ) (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*) ;} ;


 int mlx5_core_err (int ,char*,int) ;
 scalar_t__ mlx5_dr_is_fw_table (int ) ;
 TYPE_2__* mlx5_fs_cmd_get_fw_cmds () ;
 int mlx5dr_action_destroy (struct mlx5dr_action*) ;
 int mlx5dr_table_destroy (int ) ;
 int stub1 (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*) ;

__attribute__((used)) static int mlx5_cmd_dr_destroy_flow_table(struct mlx5_flow_root_namespace *ns,
       struct mlx5_flow_table *ft)
{
 struct mlx5dr_action *action = ft->fs_dr_table.miss_action;
 int err;

 if (mlx5_dr_is_fw_table(ft->flags))
  return mlx5_fs_cmd_get_fw_cmds()->destroy_flow_table(ns, ft);

 err = mlx5dr_table_destroy(ft->fs_dr_table.dr_table);
 if (err) {
  mlx5_core_err(ns->dev, "Failed to destroy flow_table (%d)\n",
         err);
  return err;
 }
 if (action) {
  err = mlx5dr_action_destroy(action);
  if (err) {
   mlx5_core_err(ns->dev, "Failed to destroy action(%d)\n",
          err);
   return err;
  }
 }

 return err;
}
