
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mlxsw_sp_port {struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {TYPE_2__* bus_info; } ;
struct ethtool_drvinfo {int bus_info; int fw_version; int version; int driver; } ;
struct TYPE_3__ {int major; int minor; int subminor; } ;
struct TYPE_4__ {int device_name; TYPE_1__ fw_rev; int device_kind; } ;


 int mlxsw_sp_driver_version ;
 struct mlxsw_sp_port* netdev_priv (struct net_device*) ;
 int snprintf (int ,int,char*,int,int,int) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void mlxsw_sp_port_get_drvinfo(struct net_device *dev,
          struct ethtool_drvinfo *drvinfo)
{
 struct mlxsw_sp_port *mlxsw_sp_port = netdev_priv(dev);
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;

 strlcpy(drvinfo->driver, mlxsw_sp->bus_info->device_kind,
  sizeof(drvinfo->driver));
 strlcpy(drvinfo->version, mlxsw_sp_driver_version,
  sizeof(drvinfo->version));
 snprintf(drvinfo->fw_version, sizeof(drvinfo->fw_version),
   "%d.%d.%d",
   mlxsw_sp->bus_info->fw_rev.major,
   mlxsw_sp->bus_info->fw_rev.minor,
   mlxsw_sp->bus_info->fw_rev.subminor);
 strlcpy(drvinfo->bus_info, mlxsw_sp->bus_info->device_name,
  sizeof(drvinfo->bus_info));
}
