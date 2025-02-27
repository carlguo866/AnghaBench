
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_6__ {scalar_t__ wqe_cons; size_t cons; int pbl; } ;
struct qlnxr_qp {TYPE_3__ rq; TYPE_2__* rqe_wr_id; int ibqp; int id; TYPE_1__* dev; } ;
struct ib_wc {int * qp; int wr_id; scalar_t__ byte_len; int src_qp; scalar_t__ wc_flags; scalar_t__ vendor_err; int status; } ;
typedef int qlnx_host_t ;
struct TYPE_5__ {int wqe_size; int wr_id; } ;
struct TYPE_4__ {int * ha; } ;


 int IB_WC_WR_FLUSH_ERR ;
 int QL_DPRINT12 (int *,char*,...) ;
 int ecore_chain_consume (int *) ;
 int qlnxr_inc_sw_cons (TYPE_3__*) ;

__attribute__((used)) static int
process_resp_flush(struct qlnxr_qp *qp,
 int num_entries,
 struct ib_wc *wc,
 u16 hw_cons)
{
 u16 cnt = 0;
 qlnx_host_t *ha = qp->dev->ha;

 QL_DPRINT12(ha, "enter\n");

 while (num_entries && qp->rq.wqe_cons != hw_cons) {

  wc->status = IB_WC_WR_FLUSH_ERR;
  wc->vendor_err = 0;
  wc->wc_flags = 0;
  wc->src_qp = qp->id;
  wc->byte_len = 0;
  wc->wr_id = qp->rqe_wr_id[qp->rq.cons].wr_id;
  wc->qp = &qp->ibqp;
  num_entries--;
  wc++;
  cnt++;
  while (qp->rqe_wr_id[qp->rq.cons].wqe_size--)
   ecore_chain_consume(&qp->rq.pbl);
  qlnxr_inc_sw_cons(&qp->rq);
 }

 QL_DPRINT12(ha, "exit cnt = 0x%x\n", cnt);
 return cnt;
}
