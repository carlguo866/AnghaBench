
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
typedef int u8 ;
typedef int u64 ;
typedef scalar_t__ u32 ;
struct TYPE_8__ {scalar_t__ msn; size_t cidx; TYPE_3__* sw_rq; } ;
struct TYPE_6__ {size_t cidx; int size; struct t4_swsqe* sw_sq; int in_use; TYPE_1__* oldest_read; } ;
struct t4_wq {TYPE_4__ rq; TYPE_2__ sq; scalar_t__ flushed; } ;
struct t4_cqe {int header; } ;
struct t4_swsqe {int complete; int wr_id; struct t4_cqe cqe; } ;
struct t4_srq {int dummy; } ;
struct t4_cq {int cidx; int cqid; int sw_cidx; } ;
struct TYPE_7__ {int wr_id; } ;
struct TYPE_5__ {int signaled; } ;


 int CQE_DRAIN_COOKIE (struct t4_cqe*) ;
 int CQE_GENBIT (struct t4_cqe*) ;
 int CQE_LEN (struct t4_cqe*) ;
 scalar_t__ CQE_OPCODE (struct t4_cqe*) ;
 int CQE_OVFBIT (struct t4_cqe*) ;
 int CQE_QPID (struct t4_cqe*) ;
 scalar_t__ CQE_STATUS (struct t4_cqe*) ;
 int CQE_STATUS_V (int ) ;
 int CQE_TYPE (struct t4_cqe*) ;
 int CQE_WRID_HI (struct t4_cqe*) ;
 int CQE_WRID_LOW (struct t4_cqe*) ;
 scalar_t__ CQE_WRID_MSN (struct t4_cqe*) ;
 size_t CQE_WRID_SQ_IDX (struct t4_cqe*) ;
 int CQE_WRID_STAG (struct t4_cqe*) ;
 scalar_t__ DRAIN_CQE (struct t4_cqe*) ;
 int EAGAIN ;
 scalar_t__ FW_RI_READ_RESP ;
 scalar_t__ FW_RI_TERMINATE ;
 scalar_t__ RQ_TYPE (struct t4_cqe*) ;
 scalar_t__ SQ_TYPE (struct t4_cqe*) ;
 scalar_t__ SW_CQE (struct t4_cqe*) ;
 int T4_ERR_MSN ;
 scalar_t__ T4_ERR_SWFLUSH ;
 int advance_oldest_read (struct t4_wq*) ;
 int c4iw_log_wr_stats (struct t4_wq*,struct t4_cqe*) ;
 scalar_t__ c4iw_wr_log ;
 int cpu_to_be32 (int ) ;
 int create_read_req_cqe (struct t4_wq*,struct t4_cqe*,struct t4_cqe*) ;
 int flush_completed_wrs (struct t4_wq*,struct t4_cq*) ;
 int pr_debug (char*,...) ;
 int reap_srq_cqe (struct t4_cqe*,struct t4_srq*) ;
 int t4_hwcq_consume (struct t4_cq*) ;
 int t4_next_cqe (struct t4_cq*,struct t4_cqe**) ;
 int t4_rq_consume (struct t4_wq*) ;
 int t4_set_wq_in_error (struct t4_wq*,int ) ;
 int t4_sq_consume (struct t4_wq*) ;
 int t4_swcq_consume (struct t4_cq*) ;
 scalar_t__ t4_wq_in_error (struct t4_wq*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int poll_cq(struct t4_wq *wq, struct t4_cq *cq, struct t4_cqe *cqe,
     u8 *cqe_flushed, u64 *cookie, u32 *credit,
     struct t4_srq *srq)
{
 int ret = 0;
 struct t4_cqe *hw_cqe, read_cqe;

 *cqe_flushed = 0;
 *credit = 0;
 ret = t4_next_cqe(cq, &hw_cqe);
 if (ret)
  return ret;

 pr_debug("CQE OVF %u qpid 0x%0x genbit %u type %u status 0x%0x opcode 0x%0x len 0x%0x wrid_hi_stag 0x%x wrid_low_msn 0x%x\n",
   CQE_OVFBIT(hw_cqe), CQE_QPID(hw_cqe),
   CQE_GENBIT(hw_cqe), CQE_TYPE(hw_cqe), CQE_STATUS(hw_cqe),
   CQE_OPCODE(hw_cqe), CQE_LEN(hw_cqe), CQE_WRID_HI(hw_cqe),
   CQE_WRID_LOW(hw_cqe));




 if (wq == ((void*)0)) {
  ret = -EAGAIN;
  goto skip_cqe;
 }




 if (wq->flushed && !SW_CQE(hw_cqe)) {
  ret = -EAGAIN;
  goto skip_cqe;
 }




 if (CQE_OPCODE(hw_cqe) == FW_RI_TERMINATE) {
  ret = -EAGAIN;
  goto skip_cqe;
 }




 if (DRAIN_CQE(hw_cqe)) {
  *cookie = CQE_DRAIN_COOKIE(hw_cqe);
  *cqe = *hw_cqe;
  goto skip_cqe;
 }
 if (RQ_TYPE(hw_cqe) && (CQE_OPCODE(hw_cqe) == FW_RI_READ_RESP)) {





  if (CQE_TYPE(hw_cqe) == 1) {
   if (CQE_STATUS(hw_cqe))
    t4_set_wq_in_error(wq, 0);
   ret = -EAGAIN;
   goto skip_cqe;
  }





  if (CQE_WRID_STAG(hw_cqe) == 1) {
   if (CQE_STATUS(hw_cqe))
    t4_set_wq_in_error(wq, 0);
   ret = -EAGAIN;
   goto skip_cqe;
  }




  if (!wq->sq.oldest_read->signaled) {
   advance_oldest_read(wq);
   ret = -EAGAIN;
   goto skip_cqe;
  }





  create_read_req_cqe(wq, hw_cqe, &read_cqe);
  hw_cqe = &read_cqe;
  advance_oldest_read(wq);
 }

 if (CQE_STATUS(hw_cqe) || t4_wq_in_error(wq)) {
  *cqe_flushed = (CQE_STATUS(hw_cqe) == T4_ERR_SWFLUSH);
  t4_set_wq_in_error(wq, 0);
 }




 if (RQ_TYPE(hw_cqe)) {







  if (unlikely(!CQE_STATUS(hw_cqe) &&
        CQE_WRID_MSN(hw_cqe) != wq->rq.msn)) {
   t4_set_wq_in_error(wq, 0);
   hw_cqe->header |= cpu_to_be32(CQE_STATUS_V(T4_ERR_MSN));
  }
  goto proc_cqe;
 }
 if (!SW_CQE(hw_cqe) && (CQE_WRID_SQ_IDX(hw_cqe) != wq->sq.cidx)) {
  struct t4_swsqe *swsqe;

  pr_debug("out of order completion going in sw_sq at idx %u\n",
    CQE_WRID_SQ_IDX(hw_cqe));
  swsqe = &wq->sq.sw_sq[CQE_WRID_SQ_IDX(hw_cqe)];
  swsqe->cqe = *hw_cqe;
  swsqe->complete = 1;
  ret = -EAGAIN;
  goto flush_wq;
 }

proc_cqe:
 *cqe = *hw_cqe;





 if (SQ_TYPE(hw_cqe)) {
  int idx = CQE_WRID_SQ_IDX(hw_cqe);
  if (idx < wq->sq.cidx)
   wq->sq.in_use -= wq->sq.size + idx - wq->sq.cidx;
  else
   wq->sq.in_use -= idx - wq->sq.cidx;

  wq->sq.cidx = (uint16_t)idx;
  pr_debug("completing sq idx %u\n", wq->sq.cidx);
  *cookie = wq->sq.sw_sq[wq->sq.cidx].wr_id;
  if (c4iw_wr_log)
   c4iw_log_wr_stats(wq, hw_cqe);
  t4_sq_consume(wq);
 } else {
  if (!srq) {
   pr_debug("completing rq idx %u\n", wq->rq.cidx);
   *cookie = wq->rq.sw_rq[wq->rq.cidx].wr_id;
   if (c4iw_wr_log)
    c4iw_log_wr_stats(wq, hw_cqe);
   t4_rq_consume(wq);
  } else {
   *cookie = reap_srq_cqe(hw_cqe, srq);
  }
  wq->rq.msn++;
  goto skip_cqe;
 }

flush_wq:



 flush_completed_wrs(wq, cq);

skip_cqe:
 if (SW_CQE(hw_cqe)) {
  pr_debug("cq %p cqid 0x%x skip sw cqe cidx %u\n",
    cq, cq->cqid, cq->sw_cidx);
  t4_swcq_consume(cq);
 } else {
  pr_debug("cq %p cqid 0x%x skip hw cqe cidx %u\n",
    cq, cq->cqid, cq->cidx);
  t4_hwcq_consume(cq);
 }
 return ret;
}
