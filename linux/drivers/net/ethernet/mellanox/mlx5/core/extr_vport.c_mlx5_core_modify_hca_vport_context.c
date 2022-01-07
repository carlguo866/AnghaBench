
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5_hca_vport_context {int field_select; int sm_virt_aware; int has_smi; int has_raw; int policy; int phys_state; int vport_state; int cap_mask1; int cap_mask1_perm; int cap_mask2; int cap_mask2_perm; int lid; int init_type_reply; int lmc; int subnet_timeout; int sm_lid; int sm_sl; int qkey_violation_counter; int pkey_violation_counter; int node_guid; int port_guid; } ;
struct mlx5_core_dev {int dummy; } ;
typedef int out ;


 int ENOMEM ;
 int EPERM ;
 int GFP_KERNEL ;
 void* MLX5_ADDR_OF (int ,void*,int ) ;
 int MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 int MLX5_CMD_OP_MODIFY_HCA_VPORT_CONTEXT ;
 int MLX5_SET (int ,void*,int,int) ;
 int MLX5_SET64 (int ,void*,int ,int ) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int cap_mask1 ;
 int cap_mask1_field_select ;
 int cap_mask2 ;
 int cap_mask2_field_select ;
 int field_select ;
 int has_raw ;
 int has_smi ;
 int hca_vport_context ;
 int init_type_reply ;
 int kfree (void*) ;
 void* kzalloc (int,int ) ;
 int lid ;
 int lmc ;
 int memset (int*,int ,int) ;
 int mlx5_cmd_exec (struct mlx5_core_dev*,void*,int,int*,int) ;
 int mlx5_core_dbg (struct mlx5_core_dev*,char*,int) ;
 int modify_hca_vport_context_in ;
 int modify_hca_vport_context_out ;
 int node_guid ;
 int num_ports ;
 int opcode ;
 int pkey_violation_counter ;
 int port_guid ;
 int port_physical_state ;
 int qkey_violation_counter ;
 int sm_lid ;
 int sm_sl ;
 int sm_virt_aware ;
 int subnet_timeout ;
 int vport_group_manager ;
 int vport_number ;
 int vport_state ;
 int vport_state_policy ;

int mlx5_core_modify_hca_vport_context(struct mlx5_core_dev *dev,
           u8 other_vport, u8 port_num,
           int vf,
           struct mlx5_hca_vport_context *req)
{
 int in_sz = MLX5_ST_SZ_BYTES(modify_hca_vport_context_in);
 u8 out[MLX5_ST_SZ_BYTES(modify_hca_vport_context_out)];
 int is_group_manager;
 void *in;
 int err;
 void *ctx;

 mlx5_core_dbg(dev, "vf %d\n", vf);
 is_group_manager = MLX5_CAP_GEN(dev, vport_group_manager);
 in = kzalloc(in_sz, GFP_KERNEL);
 if (!in)
  return -ENOMEM;

 memset(out, 0, sizeof(out));
 MLX5_SET(modify_hca_vport_context_in, in, opcode, MLX5_CMD_OP_MODIFY_HCA_VPORT_CONTEXT);
 if (other_vport) {
  if (is_group_manager) {
   MLX5_SET(modify_hca_vport_context_in, in, other_vport, 1);
   MLX5_SET(modify_hca_vport_context_in, in, vport_number, vf);
  } else {
   err = -EPERM;
   goto ex;
  }
 }

 if (MLX5_CAP_GEN(dev, num_ports) > 1)
  MLX5_SET(modify_hca_vport_context_in, in, port_num, port_num);

 ctx = MLX5_ADDR_OF(modify_hca_vport_context_in, in, hca_vport_context);
 MLX5_SET(hca_vport_context, ctx, field_select, req->field_select);
 MLX5_SET(hca_vport_context, ctx, sm_virt_aware, req->sm_virt_aware);
 MLX5_SET(hca_vport_context, ctx, has_smi, req->has_smi);
 MLX5_SET(hca_vport_context, ctx, has_raw, req->has_raw);
 MLX5_SET(hca_vport_context, ctx, vport_state_policy, req->policy);
 MLX5_SET(hca_vport_context, ctx, port_physical_state, req->phys_state);
 MLX5_SET(hca_vport_context, ctx, vport_state, req->vport_state);
 MLX5_SET64(hca_vport_context, ctx, port_guid, req->port_guid);
 MLX5_SET64(hca_vport_context, ctx, node_guid, req->node_guid);
 MLX5_SET(hca_vport_context, ctx, cap_mask1, req->cap_mask1);
 MLX5_SET(hca_vport_context, ctx, cap_mask1_field_select, req->cap_mask1_perm);
 MLX5_SET(hca_vport_context, ctx, cap_mask2, req->cap_mask2);
 MLX5_SET(hca_vport_context, ctx, cap_mask2_field_select, req->cap_mask2_perm);
 MLX5_SET(hca_vport_context, ctx, lid, req->lid);
 MLX5_SET(hca_vport_context, ctx, init_type_reply, req->init_type_reply);
 MLX5_SET(hca_vport_context, ctx, lmc, req->lmc);
 MLX5_SET(hca_vport_context, ctx, subnet_timeout, req->subnet_timeout);
 MLX5_SET(hca_vport_context, ctx, sm_lid, req->sm_lid);
 MLX5_SET(hca_vport_context, ctx, sm_sl, req->sm_sl);
 MLX5_SET(hca_vport_context, ctx, qkey_violation_counter, req->qkey_violation_counter);
 MLX5_SET(hca_vport_context, ctx, pkey_violation_counter, req->pkey_violation_counter);
 err = mlx5_cmd_exec(dev, in, in_sz, out, sizeof(out));
ex:
 kfree(in);
 return err;
}
