
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mlxsw_sp_nve_ops {int (* fdb_clear_offload ) (struct net_device const*,int ) ;} ;
struct mlxsw_sp_fid {int dummy; } ;
struct mlxsw_sp {TYPE_1__* nve; } ;
typedef enum mlxsw_sp_nve_type { ____Placeholder_mlxsw_sp_nve_type } mlxsw_sp_nve_type ;
typedef int __be32 ;
struct TYPE_2__ {struct mlxsw_sp_nve_ops** nve_ops_arr; } ;


 scalar_t__ WARN_ON (int ) ;
 int mlxsw_sp_fid_nve_type (struct mlxsw_sp_fid const*,int*) ;
 int stub1 (struct net_device const*,int ) ;

__attribute__((used)) static void mlxsw_sp_nve_fdb_clear_offload(struct mlxsw_sp *mlxsw_sp,
        const struct mlxsw_sp_fid *fid,
        const struct net_device *nve_dev,
        __be32 vni)
{
 const struct mlxsw_sp_nve_ops *ops;
 enum mlxsw_sp_nve_type type;

 if (WARN_ON(mlxsw_sp_fid_nve_type(fid, &type)))
  return;

 ops = mlxsw_sp->nve->nve_ops_arr[type];
 ops->fdb_clear_offload(nve_dev, vni);
}
