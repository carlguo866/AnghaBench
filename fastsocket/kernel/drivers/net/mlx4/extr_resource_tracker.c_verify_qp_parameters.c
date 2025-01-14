
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {int mgid_index; } ;
struct TYPE_3__ {int mgid_index; } ;
struct mlx4_qp_context {TYPE_2__ alt_path; TYPE_1__ pri_path; int flags; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {struct mlx4_qp_context* buf; } ;
typedef enum qp_transition { ____Placeholder_qp_transition } qp_transition ;
typedef enum mlx4_qp_optpar { ____Placeholder_mlx4_qp_optpar } mlx4_qp_optpar ;
typedef int __be32 ;


 int EINVAL ;
 int MLX4_QP_OPTPAR_ALT_ADDR_PATH ;
 int MLX4_QP_OPTPAR_PRIMARY_ADDR_PATH ;







 int be32_to_cpu (int ) ;
 int mlx4_master_func_num (struct mlx4_dev*) ;

__attribute__((used)) static int verify_qp_parameters(struct mlx4_dev *dev,
    struct mlx4_cmd_mailbox *inbox,
    enum qp_transition transition, u8 slave)
{
 u32 qp_type;
 struct mlx4_qp_context *qp_ctx;
 enum mlx4_qp_optpar optpar;

 qp_ctx = inbox->buf + 8;
 qp_type = (be32_to_cpu(qp_ctx->flags) >> 16) & 0xff;
 optpar = be32_to_cpu(*(__be32 *) inbox->buf);

 switch (qp_type) {
 case 134:
 case 133:
  switch (transition) {
  case 132:
  case 131:
  case 130:
  case 128:
  case 129:
   if (slave != mlx4_master_func_num(dev))

    if (optpar & MLX4_QP_OPTPAR_PRIMARY_ADDR_PATH)
     if (qp_ctx->pri_path.mgid_index)
      return -EINVAL;
    if (optpar & MLX4_QP_OPTPAR_ALT_ADDR_PATH)
     if (qp_ctx->alt_path.mgid_index)
      return -EINVAL;
   break;
  default:
   break;
  }

  break;
 default:
  break;
 }

 return 0;
}
