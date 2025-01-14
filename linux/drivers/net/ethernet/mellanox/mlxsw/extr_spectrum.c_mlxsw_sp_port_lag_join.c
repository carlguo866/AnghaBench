
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct mlxsw_sp_upper {int ref_count; struct net_device* dev; } ;
struct mlxsw_sp_port {int lagged; TYPE_1__* default_vlan; int lag_id; int local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int core; } ;
struct TYPE_2__ {scalar_t__ fid; } ;


 int mlxsw_core_lag_mapping_set (int ,int ,int ,int ) ;
 int mlxsw_sp_lag_col_port_add (struct mlxsw_sp_port*,int ,int ) ;
 int mlxsw_sp_lag_create (struct mlxsw_sp*,int ) ;
 int mlxsw_sp_lag_destroy (struct mlxsw_sp*,int ) ;
 struct mlxsw_sp_upper* mlxsw_sp_lag_get (struct mlxsw_sp*,int ) ;
 int mlxsw_sp_lag_index_get (struct mlxsw_sp*,struct net_device*,int *) ;
 int mlxsw_sp_port_lag_index_get (struct mlxsw_sp*,int ,int *) ;
 int mlxsw_sp_port_vlan_router_leave (TYPE_1__*) ;

__attribute__((used)) static int mlxsw_sp_port_lag_join(struct mlxsw_sp_port *mlxsw_sp_port,
      struct net_device *lag_dev)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 struct mlxsw_sp_upper *lag;
 u16 lag_id;
 u8 port_index;
 int err;

 err = mlxsw_sp_lag_index_get(mlxsw_sp, lag_dev, &lag_id);
 if (err)
  return err;
 lag = mlxsw_sp_lag_get(mlxsw_sp, lag_id);
 if (!lag->ref_count) {
  err = mlxsw_sp_lag_create(mlxsw_sp, lag_id);
  if (err)
   return err;
  lag->dev = lag_dev;
 }

 err = mlxsw_sp_port_lag_index_get(mlxsw_sp, lag_id, &port_index);
 if (err)
  return err;
 err = mlxsw_sp_lag_col_port_add(mlxsw_sp_port, lag_id, port_index);
 if (err)
  goto err_col_port_add;

 mlxsw_core_lag_mapping_set(mlxsw_sp->core, lag_id, port_index,
       mlxsw_sp_port->local_port);
 mlxsw_sp_port->lag_id = lag_id;
 mlxsw_sp_port->lagged = 1;
 lag->ref_count++;


 if (mlxsw_sp_port->default_vlan->fid)
  mlxsw_sp_port_vlan_router_leave(mlxsw_sp_port->default_vlan);

 return 0;

err_col_port_add:
 if (!lag->ref_count)
  mlxsw_sp_lag_destroy(mlxsw_sp, lag_id);
 return err;
}
