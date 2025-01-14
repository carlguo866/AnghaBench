
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlx5_ifc_fpga_ipsec_cmd_cap {int flags; void* cmd; int member_0; } ;
struct TYPE_2__ {int flags; } ;
struct mlx5_fpga_ipsec_cmd_context {TYPE_1__ resp; int dev; } ;
struct mlx5_core_dev {int dummy; } ;
typedef int cmd ;


 int EIO ;
 scalar_t__ IS_ERR (struct mlx5_fpga_ipsec_cmd_context*) ;
 int MLX5_FPGA_IPSEC_CMD_OP_SET_CAP ;
 int PTR_ERR (struct mlx5_fpga_ipsec_cmd_context*) ;
 void* htonl (int ) ;
 int kfree (struct mlx5_fpga_ipsec_cmd_context*) ;
 int mlx5_fpga_err (int ,char*,int,int) ;
 struct mlx5_fpga_ipsec_cmd_context* mlx5_fpga_ipsec_cmd_exec (struct mlx5_core_dev*,struct mlx5_ifc_fpga_ipsec_cmd_cap*,int) ;
 int mlx5_fpga_ipsec_cmd_wait (struct mlx5_fpga_ipsec_cmd_context*) ;

__attribute__((used)) static int mlx5_fpga_ipsec_set_caps(struct mlx5_core_dev *mdev, u32 flags)
{
 struct mlx5_fpga_ipsec_cmd_context *context;
 struct mlx5_ifc_fpga_ipsec_cmd_cap cmd = {0};
 int err;

 cmd.cmd = htonl(MLX5_FPGA_IPSEC_CMD_OP_SET_CAP);
 cmd.flags = htonl(flags);
 context = mlx5_fpga_ipsec_cmd_exec(mdev, &cmd, sizeof(cmd));
 if (IS_ERR(context))
  return PTR_ERR(context);

 err = mlx5_fpga_ipsec_cmd_wait(context);
 if (err)
  goto out;

 if ((context->resp.flags & cmd.flags) != cmd.flags) {
  mlx5_fpga_err(context->dev, "Failed to set capabilities. cmd 0x%08x vs resp 0x%08x\n",
         cmd.flags,
         context->resp.flags);
  err = -EIO;
 }

out:
 kfree(context);
 return err;
}
