
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_acl_erp_table {int num_atcam_erps; scalar_t__ num_ctcam_erps; scalar_t__ num_deltas; int * ops; } ;
struct TYPE_2__ {scalar_t__ ctcam; } ;
struct mlxsw_sp_acl_erp {int index; TYPE_1__ key; } ;


 int erp_two_masks_ops ;
 void mlxsw_sp_acl_erp_ctcam_mask_destroy (struct mlxsw_sp_acl_erp*) ;
 int mlxsw_sp_acl_erp_generic_destroy (struct mlxsw_sp_acl_erp*) ;
 int mlxsw_sp_acl_erp_index_put (struct mlxsw_sp_acl_erp_table*,int ) ;
 int mlxsw_sp_acl_erp_region_erp_del (struct mlxsw_sp_acl_erp*) ;
 int mlxsw_sp_acl_erp_table_erp_del (struct mlxsw_sp_acl_erp*) ;

__attribute__((used)) static void
mlxsw_sp_acl_erp_mask_destroy(struct mlxsw_sp_acl_erp_table *erp_table,
         struct mlxsw_sp_acl_erp *erp)
{
 if (erp->key.ctcam)
  return mlxsw_sp_acl_erp_ctcam_mask_destroy(erp);

 mlxsw_sp_acl_erp_region_erp_del(erp);
 mlxsw_sp_acl_erp_table_erp_del(erp);
 mlxsw_sp_acl_erp_index_put(erp_table, erp->index);
 mlxsw_sp_acl_erp_generic_destroy(erp);

 if (erp_table->num_atcam_erps == 2 && erp_table->num_ctcam_erps == 0 &&
     erp_table->num_deltas == 0)
  erp_table->ops = &erp_two_masks_ops;
}
