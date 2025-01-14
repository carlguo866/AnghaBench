
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct mlx5_wqe_ctrl_seg {int fm_ce_se; int imm; } ;
struct TYPE_4__ {int cur_post; int wqe_cnt; void* cur_edge; int fbc; } ;
struct TYPE_3__ {int send_cq; } ;
struct mlx5_ib_qp {int sq_signal_bits; TYPE_2__ sq; TYPE_1__ ibqp; } ;
struct ib_send_wr {int dummy; } ;


 int ENOMEM ;
 int MLX5_WQE_CTRL_CQ_UPDATE ;
 int MLX5_WQE_CTRL_SOLICITED ;
 void* mlx5_frag_buf_get_wqe (int *,unsigned int) ;
 int mlx5_wq_overflow (TYPE_2__*,int,int ) ;
 int send_ieth (struct ib_send_wr const*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int __begin_wqe(struct mlx5_ib_qp *qp, void **seg,
         struct mlx5_wqe_ctrl_seg **ctrl,
         const struct ib_send_wr *wr, unsigned int *idx,
         int *size, void **cur_edge, int nreq,
         bool send_signaled, bool solicited)
{
 if (unlikely(mlx5_wq_overflow(&qp->sq, nreq, qp->ibqp.send_cq)))
  return -ENOMEM;

 *idx = qp->sq.cur_post & (qp->sq.wqe_cnt - 1);
 *seg = mlx5_frag_buf_get_wqe(&qp->sq.fbc, *idx);
 *ctrl = *seg;
 *(uint32_t *)(*seg + 8) = 0;
 (*ctrl)->imm = send_ieth(wr);
 (*ctrl)->fm_ce_se = qp->sq_signal_bits |
  (send_signaled ? MLX5_WQE_CTRL_CQ_UPDATE : 0) |
  (solicited ? MLX5_WQE_CTRL_SOLICITED : 0);

 *seg += sizeof(**ctrl);
 *size = sizeof(**ctrl) / 16;
 *cur_edge = qp->sq.cur_edge;

 return 0;
}
