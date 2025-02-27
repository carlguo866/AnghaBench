
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct netlink_ext_ack {int dummy; } ;
struct mlxsw_driver {int (* sb_pool_set ) (struct mlxsw_core*,unsigned int,int ,int ,int,struct netlink_ext_ack*) ;} ;
struct mlxsw_core {struct mlxsw_driver* driver; } ;
struct devlink {int dummy; } ;
typedef enum devlink_sb_threshold_type { ____Placeholder_devlink_sb_threshold_type } devlink_sb_threshold_type ;


 int EOPNOTSUPP ;
 struct mlxsw_core* devlink_priv (struct devlink*) ;
 int stub1 (struct mlxsw_core*,unsigned int,int ,int ,int,struct netlink_ext_ack*) ;

__attribute__((used)) static int
mlxsw_devlink_sb_pool_set(struct devlink *devlink,
     unsigned int sb_index, u16 pool_index, u32 size,
     enum devlink_sb_threshold_type threshold_type,
     struct netlink_ext_ack *extack)
{
 struct mlxsw_core *mlxsw_core = devlink_priv(devlink);
 struct mlxsw_driver *mlxsw_driver = mlxsw_core->driver;

 if (!mlxsw_driver->sb_pool_set)
  return -EOPNOTSUPP;
 return mlxsw_driver->sb_pool_set(mlxsw_core, sb_index,
      pool_index, size, threshold_type,
      extack);
}
