
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_acl_rule_info {int dummy; } ;
struct TYPE_2__ {int cchunk; struct mlxsw_sp_acl_rule_info* rulei; int centry; } ;
struct mlxsw_sp1_acl_tcam_region {TYPE_1__ catchall; int cregion; } ;
struct mlxsw_sp {int acl; } ;


 scalar_t__ IS_ERR (struct mlxsw_sp_acl_rule_info*) ;
 int MLXSW_SP_ACL_TCAM_CATCHALL_PRIO ;
 int PTR_ERR (struct mlxsw_sp_acl_rule_info*) ;
 scalar_t__ WARN_ON (int) ;
 int mlxsw_sp_acl_ctcam_chunk_fini (int *) ;
 int mlxsw_sp_acl_ctcam_chunk_init (int *,int *,int ) ;
 int mlxsw_sp_acl_ctcam_entry_add (struct mlxsw_sp*,int *,int *,int *,struct mlxsw_sp_acl_rule_info*,int) ;
 int mlxsw_sp_acl_rulei_act_continue (struct mlxsw_sp_acl_rule_info*) ;
 int mlxsw_sp_acl_rulei_commit (struct mlxsw_sp_acl_rule_info*) ;
 struct mlxsw_sp_acl_rule_info* mlxsw_sp_acl_rulei_create (int ,int *) ;
 int mlxsw_sp_acl_rulei_destroy (struct mlxsw_sp_acl_rule_info*) ;

__attribute__((used)) static int
mlxsw_sp1_acl_ctcam_region_catchall_add(struct mlxsw_sp *mlxsw_sp,
     struct mlxsw_sp1_acl_tcam_region *region)
{
 struct mlxsw_sp_acl_rule_info *rulei;
 int err;

 mlxsw_sp_acl_ctcam_chunk_init(&region->cregion,
          &region->catchall.cchunk,
          MLXSW_SP_ACL_TCAM_CATCHALL_PRIO);
 rulei = mlxsw_sp_acl_rulei_create(mlxsw_sp->acl, ((void*)0));
 if (IS_ERR(rulei)) {
  err = PTR_ERR(rulei);
  goto err_rulei_create;
 }
 err = mlxsw_sp_acl_rulei_act_continue(rulei);
 if (WARN_ON(err))
  goto err_rulei_act_continue;
 err = mlxsw_sp_acl_rulei_commit(rulei);
 if (err)
  goto err_rulei_commit;
 err = mlxsw_sp_acl_ctcam_entry_add(mlxsw_sp, &region->cregion,
        &region->catchall.cchunk,
        &region->catchall.centry,
        rulei, 0);
 if (err)
  goto err_entry_add;
 region->catchall.rulei = rulei;
 return 0;

err_entry_add:
err_rulei_commit:
err_rulei_act_continue:
 mlxsw_sp_acl_rulei_destroy(rulei);
err_rulei_create:
 mlxsw_sp_acl_ctcam_chunk_fini(&region->catchall.cchunk);
 return err;
}
