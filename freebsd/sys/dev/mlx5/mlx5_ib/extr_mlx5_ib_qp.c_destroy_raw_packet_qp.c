
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_ib_sq {int dummy; } ;
struct mlx5_ib_rq {int dummy; } ;
struct mlx5_ib_raw_packet_qp {struct mlx5_ib_rq rq; struct mlx5_ib_sq sq; } ;
struct TYPE_4__ {scalar_t__ wqe_cnt; } ;
struct TYPE_3__ {scalar_t__ wqe_cnt; } ;
struct mlx5_ib_qp {TYPE_2__ sq; TYPE_1__ rq; struct mlx5_ib_raw_packet_qp raw_packet_qp; } ;
struct mlx5_ib_dev {int dummy; } ;


 int destroy_raw_packet_qp_rq (struct mlx5_ib_dev*,struct mlx5_ib_rq*) ;
 int destroy_raw_packet_qp_sq (struct mlx5_ib_dev*,struct mlx5_ib_sq*) ;
 int destroy_raw_packet_qp_tir (struct mlx5_ib_dev*,struct mlx5_ib_rq*) ;
 int destroy_raw_packet_qp_tis (struct mlx5_ib_dev*,struct mlx5_ib_sq*) ;

__attribute__((used)) static void destroy_raw_packet_qp(struct mlx5_ib_dev *dev,
      struct mlx5_ib_qp *qp)
{
 struct mlx5_ib_raw_packet_qp *raw_packet_qp = &qp->raw_packet_qp;
 struct mlx5_ib_sq *sq = &raw_packet_qp->sq;
 struct mlx5_ib_rq *rq = &raw_packet_qp->rq;

 if (qp->rq.wqe_cnt) {
  destroy_raw_packet_qp_tir(dev, rq);
  destroy_raw_packet_qp_rq(dev, rq);
 }

 if (qp->sq.wqe_cnt) {
  destroy_raw_packet_qp_sq(dev, sq);
  destroy_raw_packet_qp_tis(dev, sq);
 }
}
