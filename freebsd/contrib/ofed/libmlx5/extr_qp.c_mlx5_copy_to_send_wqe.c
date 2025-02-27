
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_wqe_raddr_seg {int dummy; } ;
struct mlx5_wqe_data_seg {int dummy; } ;
struct mlx5_wqe_ctrl_seg {int qpn_ds; int opmod_idx_opcode; } ;
struct mlx5_wqe_atomic_seg {int dummy; } ;
struct TYPE_4__ {int wqe_cnt; void* qend; } ;
struct mlx5_qp {TYPE_2__ sq; TYPE_1__* ibv_qp; } ;
struct TYPE_3__ {scalar_t__ qp_type; } ;


 scalar_t__ IBV_QPT_RC ;
 int IBV_WC_GENERAL_ERR ;
 int IBV_WC_REM_INV_REQ_ERR ;
 scalar_t__ IBV_WC_SUCCESS ;



 int be32toh (int ) ;
 int copy_to_scat (struct mlx5_wqe_data_seg*,void*,int*,int) ;
 int fprintf (int ,char*,...) ;
 void* mlx5_get_send_wqe (struct mlx5_qp*,int) ;
 int stderr ;
 scalar_t__ unlikely (int) ;

int mlx5_copy_to_send_wqe(struct mlx5_qp *qp, int idx, void *buf, int size)
{
 struct mlx5_wqe_ctrl_seg *ctrl;
 struct mlx5_wqe_data_seg *scat;
 void *p;
 int max;

 idx &= (qp->sq.wqe_cnt - 1);
 ctrl = mlx5_get_send_wqe(qp, idx);
 if (qp->ibv_qp->qp_type != IBV_QPT_RC) {
  fprintf(stderr, "scatter to CQE is supported only for RC QPs\n");
  return IBV_WC_GENERAL_ERR;
 }
 p = ctrl + 1;

 switch (be32toh(ctrl->opmod_idx_opcode) & 0xff) {
 case 128:
  p = p + sizeof(struct mlx5_wqe_raddr_seg);
  break;

 case 130:
 case 129:
  p = p + sizeof(struct mlx5_wqe_raddr_seg) +
   sizeof(struct mlx5_wqe_atomic_seg);
  break;

 default:
  fprintf(stderr, "scatter to CQE for opcode %d\n",
   be32toh(ctrl->opmod_idx_opcode) & 0xff);
  return IBV_WC_REM_INV_REQ_ERR;
 }

 scat = p;
 max = (be32toh(ctrl->qpn_ds) & 0x3F) - (((void *)scat - (void *)ctrl) >> 4);
 if (unlikely((void *)(scat + max) > qp->sq.qend)) {
  int tmp = ((void *)qp->sq.qend - (void *)scat) >> 4;
  int orig_size = size;

  if (copy_to_scat(scat, buf, &size, tmp) == IBV_WC_SUCCESS)
   return IBV_WC_SUCCESS;
  max = max - tmp;
  buf += orig_size - size;
  scat = mlx5_get_send_wqe(qp, 0);
 }

 return copy_to_scat(scat, buf, &size, max);
}
