
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int mac; int default_vlan; } ;
struct mlx4_vport_oper_state {scalar_t__ vlan_idx; scalar_t__ mac_idx; TYPE_5__ state; } ;
struct TYPE_9__ {int num_ports; } ;
struct TYPE_14__ {TYPE_1__ caps; } ;
struct TYPE_11__ {TYPE_2__* vf_oper; } ;
struct TYPE_12__ {TYPE_3__ master; } ;
struct mlx4_priv {TYPE_6__ dev; TYPE_4__ mfunc; } ;
struct mlx4_active_ports {int ports; } ;
struct TYPE_10__ {struct mlx4_vport_oper_state* vport; int * smi_enabled; } ;


 int MLX4_VF_SMI_DISABLED ;
 scalar_t__ NO_INDX ;
 int __mlx4_unregister_mac (TYPE_6__*,int,int ) ;
 int __mlx4_unregister_vlan (TYPE_6__*,int,int ) ;
 int bitmap_weight (int ,int ) ;
 int find_first_bit (int ,int ) ;
 struct mlx4_active_ports mlx4_get_active_ports (TYPE_6__*,int) ;
 int test_bit (int,int ) ;

__attribute__((used)) static void mlx4_master_deactivate_admin_state(struct mlx4_priv *priv, int slave)
{
 int port;
 struct mlx4_vport_oper_state *vp_oper;
 struct mlx4_active_ports actv_ports = mlx4_get_active_ports(
   &priv->dev, slave);
 int min_port = find_first_bit(actv_ports.ports,
          priv->dev.caps.num_ports) + 1;
 int max_port = min_port - 1 +
  bitmap_weight(actv_ports.ports, priv->dev.caps.num_ports);


 for (port = min_port; port <= max_port; port++) {
  if (!test_bit(port - 1, actv_ports.ports))
   continue;
  priv->mfunc.master.vf_oper[slave].smi_enabled[port] =
   MLX4_VF_SMI_DISABLED;
  vp_oper = &priv->mfunc.master.vf_oper[slave].vport[port];
  if (NO_INDX != vp_oper->vlan_idx) {
   __mlx4_unregister_vlan(&priv->dev,
            port, vp_oper->state.default_vlan);
   vp_oper->vlan_idx = NO_INDX;
  }
  if (NO_INDX != vp_oper->mac_idx) {
   __mlx4_unregister_mac(&priv->dev, port, vp_oper->state.mac);
   vp_oper->mac_idx = NO_INDX;
  }
 }
 return;
}
