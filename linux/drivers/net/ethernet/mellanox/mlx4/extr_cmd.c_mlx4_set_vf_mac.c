
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct mlx4_vport_state {int mac; scalar_t__ spoofchk; } ;
struct TYPE_5__ {TYPE_1__* vf_admin; } ;
struct TYPE_6__ {TYPE_2__ master; } ;
struct mlx4_priv {TYPE_3__ mfunc; } ;
struct mlx4_dev {int dummy; } ;
struct TYPE_4__ {struct mlx4_vport_state* vport; } ;


 int EINVAL ;
 int EPERM ;
 int EPROTONOSUPPORT ;
 scalar_t__ is_multicast_ether_addr (int *) ;
 scalar_t__ is_zero_ether_addr (int *) ;
 int mlx4_get_slave_indx (struct mlx4_dev*,int) ;
 int mlx4_info (struct mlx4_dev*,char*,...) ;
 int mlx4_is_master (struct mlx4_dev*) ;
 int mlx4_mac_to_u64 (int *) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_slaves_closest_port (struct mlx4_dev*,int,int) ;

int mlx4_set_vf_mac(struct mlx4_dev *dev, int port, int vf, u8 *mac)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 struct mlx4_vport_state *s_info;
 int slave;

 if (!mlx4_is_master(dev))
  return -EPROTONOSUPPORT;

 if (is_multicast_ether_addr(mac))
  return -EINVAL;

 slave = mlx4_get_slave_indx(dev, vf);
 if (slave < 0)
  return -EINVAL;

 port = mlx4_slaves_closest_port(dev, slave, port);
 s_info = &priv->mfunc.master.vf_admin[slave].vport[port];

 if (s_info->spoofchk && is_zero_ether_addr(mac)) {
  mlx4_info(dev, "MAC invalidation is not allowed when spoofchk is on\n");
  return -EPERM;
 }

 s_info->mac = mlx4_mac_to_u64(mac);
 mlx4_info(dev, "default mac on vf %d port %d to %llX will take effect only after vf restart\n",
    vf, port, s_info->mac);
 return 0;
}
