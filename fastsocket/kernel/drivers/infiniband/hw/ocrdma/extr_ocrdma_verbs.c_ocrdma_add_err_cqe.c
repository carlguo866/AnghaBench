
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t tail; } ;
struct ocrdma_qp {TYPE_1__ rq; int * rqe_wr_id_tbl; struct ocrdma_cq* rq_cq; TYPE_1__ sq; struct ocrdma_cq* sq_cq; } ;
struct ocrdma_cq {int dummy; } ;
struct ib_wc {int status; scalar_t__ byte_len; int wr_id; } ;


 int IB_WC_WR_FLUSH_ERR ;
 scalar_t__ is_hw_rq_empty (struct ocrdma_qp*) ;
 scalar_t__ is_hw_sq_empty (struct ocrdma_qp*) ;
 int ocrdma_hwq_inc_tail (TYPE_1__*) ;
 int ocrdma_update_wc (struct ocrdma_qp*,struct ib_wc*,size_t) ;

__attribute__((used)) static int ocrdma_add_err_cqe(struct ocrdma_cq *cq, int num_entries,
         struct ocrdma_qp *qp, struct ib_wc *ibwc)
{
 int err_cqes = 0;

 while (num_entries) {
  if (is_hw_sq_empty(qp) && is_hw_rq_empty(qp))
   break;
  if (!is_hw_sq_empty(qp) && qp->sq_cq == cq) {
   ocrdma_update_wc(qp, ibwc, qp->sq.tail);
   ocrdma_hwq_inc_tail(&qp->sq);
  } else if (!is_hw_rq_empty(qp) && qp->rq_cq == cq) {
   ibwc->wr_id = qp->rqe_wr_id_tbl[qp->rq.tail];
   ocrdma_hwq_inc_tail(&qp->rq);
  } else
   return err_cqes;
  ibwc->byte_len = 0;
  ibwc->status = IB_WC_WR_FLUSH_ERR;
  ibwc = ibwc + 1;
  err_cqes += 1;
  num_entries -= 1;
 }
 return err_cqes;
}
