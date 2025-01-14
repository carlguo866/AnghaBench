
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct mlx5_wqe_ctrl_seg {int fm_ce_se; int imm; } ;
struct TYPE_4__ {int cur_post; int wqe_cnt; } ;
struct TYPE_3__ {int send_cq; } ;
struct mlx5_ib_qp {int sq_signal_bits; TYPE_2__ sq; TYPE_1__ ibqp; } ;
struct ib_send_wr {int send_flags; } ;


 int ENOMEM ;
 int IB_SEND_SIGNALED ;
 int IB_SEND_SOLICITED ;
 int MLX5_WQE_CTRL_CQ_UPDATE ;
 int MLX5_WQE_CTRL_SOLICITED ;
 void* mlx5_get_send_wqe (struct mlx5_ib_qp*,unsigned int) ;
 int mlx5_wq_overflow (TYPE_2__*,int,int ) ;
 int send_ieth (struct ib_send_wr*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int begin_wqe(struct mlx5_ib_qp *qp, void **seg,
       struct mlx5_wqe_ctrl_seg **ctrl,
       struct ib_send_wr *wr, unsigned *idx,
       int *size, int nreq)
{
 if (unlikely(mlx5_wq_overflow(&qp->sq, nreq, qp->ibqp.send_cq)))
  return -ENOMEM;

 *idx = qp->sq.cur_post & (qp->sq.wqe_cnt - 1);
 *seg = mlx5_get_send_wqe(qp, *idx);
 *ctrl = *seg;
 *(uint32_t *)(*seg + 8) = 0;
 (*ctrl)->imm = send_ieth(wr);
 (*ctrl)->fm_ce_se = qp->sq_signal_bits |
  (wr->send_flags & IB_SEND_SIGNALED ?
   MLX5_WQE_CTRL_CQ_UPDATE : 0) |
  (wr->send_flags & IB_SEND_SOLICITED ?
   MLX5_WQE_CTRL_SOLICITED : 0);

 *seg += sizeof(**ctrl);
 *size = sizeof(**ctrl) / 16;

 return 0;
}
