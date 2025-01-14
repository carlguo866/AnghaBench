
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct TYPE_18__ {scalar_t__ remote_qkey; int pkey_index; int ah; int remote_qpn; } ;
struct TYPE_19__ {TYPE_7__ ud; } ;
struct TYPE_13__ {int imm_data; } ;
struct TYPE_20__ {scalar_t__ opcode; int send_flags; TYPE_8__ wr; scalar_t__ num_sge; TYPE_2__ ex; } ;
struct qib_swqe {scalar_t__ length; TYPE_9__ wr; struct qib_sge* sg_list; } ;
struct qib_sge {scalar_t__ length; scalar_t__ sge_length; scalar_t__ n; scalar_t__ m; TYPE_5__* mr; int * vaddr; } ;
struct qib_sge_state {struct qib_sge* sg_list; scalar_t__ num_sge; struct qib_sge sge; } ;
struct TYPE_17__ {scalar_t__ qp_type; int qp_num; int recv_cq; int device; } ;
struct qib_qp {size_t state; scalar_t__ qkey; int r_flags; scalar_t__ r_len; int wait; int refcount; int r_lock; TYPE_6__ ibqp; int port_num; int r_wr_id; int r_aflags; int r_sge; int s_pkey_index; } ;
struct qib_pportdata {int lid; int lmc; } ;
struct qib_ibport {int n_loop_pkts; int n_pkt_drops; int n_vl15_dropped; } ;
struct TYPE_12__ {int imm_data; } ;
struct ib_wc {scalar_t__ byte_len; int src_qp; int slid; int dlid_path_bits; int port_num; int sl; int pkey_index; TYPE_6__* qp; int opcode; int status; int wr_id; int wc_flags; TYPE_1__ ex; } ;
struct ib_grh {int dummy; } ;
struct ib_ah_attr {int src_path_bits; scalar_t__ dlid; int ah_flags; int sl; int grh; } ;
struct TYPE_16__ {scalar_t__ mapsz; TYPE_4__** map; scalar_t__ lkey; } ;
struct TYPE_15__ {TYPE_3__* segs; } ;
struct TYPE_14__ {scalar_t__ length; int * vaddr; } ;
struct TYPE_11__ {struct ib_ah_attr attr; } ;


 int BUG_ON (int) ;
 int IB_AH_GRH ;
 int IB_NOTICE_TRAP_BAD_PKEY ;
 int IB_NOTICE_TRAP_BAD_QKEY ;
 scalar_t__ IB_QPT_GSI ;
 int IB_SEND_SOLICITED ;
 int IB_WC_GRH ;
 int IB_WC_LOC_QP_OP_ERR ;
 int IB_WC_RECV ;
 int IB_WC_SUCCESS ;
 int IB_WC_WITH_IMM ;
 scalar_t__ IB_WR_SEND_WITH_IMM ;
 int QIB_PROCESS_RECV_OK ;
 int QIB_R_REUSE_SGE ;
 int QIB_R_WRID_VALID ;
 scalar_t__ QIB_SEGSZ ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int cpu_to_be16 (scalar_t__) ;
 int* ib_qib_state_ops ;
 int memset (struct ib_wc*,int ,int) ;
 struct qib_pportdata* ppd_from_ibp (struct qib_ibport*) ;
 int qib_bad_pqkey (struct qib_ibport*,int ,scalar_t__,int ,int,int,int ,int ) ;
 int qib_copy_sge (int *,int *,scalar_t__,int) ;
 int qib_cq_enter (int ,struct ib_wc*,int) ;
 scalar_t__ qib_get_pkey (struct qib_ibport*,int ) ;
 int qib_get_rwqe (struct qib_qp*,int ) ;
 struct qib_qp* qib_lookup_qpn (struct qib_ibport*,int ) ;
 int qib_pkey_ok (scalar_t__,scalar_t__) ;
 int qib_put_ss (int *) ;
 int qib_rc_error (struct qib_qp*,int ) ;
 int qib_skip_sge (int *,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_and_clear_bit (int ,int *) ;
 TYPE_10__* to_iah (int ) ;
 int to_icq (int ) ;
 struct qib_ibport* to_iport (int ,int ) ;
 scalar_t__ unlikely (int) ;
 int wake_up (int *) ;

__attribute__((used)) static void qib_ud_loopback(struct qib_qp *sqp, struct qib_swqe *swqe)
{
 struct qib_ibport *ibp = to_iport(sqp->ibqp.device, sqp->port_num);
 struct qib_pportdata *ppd;
 struct qib_qp *qp;
 struct ib_ah_attr *ah_attr;
 unsigned long flags;
 struct qib_sge_state ssge;
 struct qib_sge *sge;
 struct ib_wc wc;
 u32 length;

 qp = qib_lookup_qpn(ibp, swqe->wr.wr.ud.remote_qpn);
 if (!qp) {
  ibp->n_pkt_drops++;
  return;
 }
 if (qp->ibqp.qp_type != sqp->ibqp.qp_type ||
     !(ib_qib_state_ops[qp->state] & QIB_PROCESS_RECV_OK)) {
  ibp->n_pkt_drops++;
  goto drop;
 }

 ah_attr = &to_iah(swqe->wr.wr.ud.ah)->attr;
 ppd = ppd_from_ibp(ibp);

 if (qp->ibqp.qp_num > 1) {
  u16 pkey1;
  u16 pkey2;
  u16 lid;

  pkey1 = qib_get_pkey(ibp, sqp->s_pkey_index);
  pkey2 = qib_get_pkey(ibp, qp->s_pkey_index);
  if (unlikely(!qib_pkey_ok(pkey1, pkey2))) {
   lid = ppd->lid | (ah_attr->src_path_bits &
       ((1 << ppd->lmc) - 1));
   qib_bad_pqkey(ibp, IB_NOTICE_TRAP_BAD_PKEY, pkey1,
          ah_attr->sl,
          sqp->ibqp.qp_num, qp->ibqp.qp_num,
          cpu_to_be16(lid),
          cpu_to_be16(ah_attr->dlid));
   goto drop;
  }
 }






 if (qp->ibqp.qp_num) {
  u32 qkey;

  qkey = (int)swqe->wr.wr.ud.remote_qkey < 0 ?
   sqp->qkey : swqe->wr.wr.ud.remote_qkey;
  if (unlikely(qkey != qp->qkey)) {
   u16 lid;

   lid = ppd->lid | (ah_attr->src_path_bits &
       ((1 << ppd->lmc) - 1));
   qib_bad_pqkey(ibp, IB_NOTICE_TRAP_BAD_QKEY, qkey,
          ah_attr->sl,
          sqp->ibqp.qp_num, qp->ibqp.qp_num,
          cpu_to_be16(lid),
          cpu_to_be16(ah_attr->dlid));
   goto drop;
  }
 }





 length = swqe->length;
 memset(&wc, 0, sizeof wc);
 wc.byte_len = length + sizeof(struct ib_grh);

 if (swqe->wr.opcode == IB_WR_SEND_WITH_IMM) {
  wc.wc_flags = IB_WC_WITH_IMM;
  wc.ex.imm_data = swqe->wr.ex.imm_data;
 }

 spin_lock_irqsave(&qp->r_lock, flags);




 if (qp->r_flags & QIB_R_REUSE_SGE)
  qp->r_flags &= ~QIB_R_REUSE_SGE;
 else {
  int ret;

  ret = qib_get_rwqe(qp, 0);
  if (ret < 0) {
   qib_rc_error(qp, IB_WC_LOC_QP_OP_ERR);
   goto bail_unlock;
  }
  if (!ret) {
   if (qp->ibqp.qp_num == 0)
    ibp->n_vl15_dropped++;
   goto bail_unlock;
  }
 }

 if (unlikely(wc.byte_len > qp->r_len)) {
  qp->r_flags |= QIB_R_REUSE_SGE;
  ibp->n_pkt_drops++;
  goto bail_unlock;
 }

 if (ah_attr->ah_flags & IB_AH_GRH) {
  qib_copy_sge(&qp->r_sge, &ah_attr->grh,
        sizeof(struct ib_grh), 1);
  wc.wc_flags |= IB_WC_GRH;
 } else
  qib_skip_sge(&qp->r_sge, sizeof(struct ib_grh), 1);
 ssge.sg_list = swqe->sg_list + 1;
 ssge.sge = *swqe->sg_list;
 ssge.num_sge = swqe->wr.num_sge;
 sge = &ssge.sge;
 while (length) {
  u32 len = sge->length;

  if (len > length)
   len = length;
  if (len > sge->sge_length)
   len = sge->sge_length;
  BUG_ON(len == 0);
  qib_copy_sge(&qp->r_sge, sge->vaddr, len, 1);
  sge->vaddr += len;
  sge->length -= len;
  sge->sge_length -= len;
  if (sge->sge_length == 0) {
   if (--ssge.num_sge)
    *sge = *ssge.sg_list++;
  } else if (sge->length == 0 && sge->mr->lkey) {
   if (++sge->n >= QIB_SEGSZ) {
    if (++sge->m >= sge->mr->mapsz)
     break;
    sge->n = 0;
   }
   sge->vaddr =
    sge->mr->map[sge->m]->segs[sge->n].vaddr;
   sge->length =
    sge->mr->map[sge->m]->segs[sge->n].length;
  }
  length -= len;
 }
 qib_put_ss(&qp->r_sge);
 if (!test_and_clear_bit(QIB_R_WRID_VALID, &qp->r_aflags))
  goto bail_unlock;
 wc.wr_id = qp->r_wr_id;
 wc.status = IB_WC_SUCCESS;
 wc.opcode = IB_WC_RECV;
 wc.qp = &qp->ibqp;
 wc.src_qp = sqp->ibqp.qp_num;
 wc.pkey_index = qp->ibqp.qp_type == IB_QPT_GSI ?
  swqe->wr.wr.ud.pkey_index : 0;
 wc.slid = ppd->lid | (ah_attr->src_path_bits & ((1 << ppd->lmc) - 1));
 wc.sl = ah_attr->sl;
 wc.dlid_path_bits = ah_attr->dlid & ((1 << ppd->lmc) - 1);
 wc.port_num = qp->port_num;

 qib_cq_enter(to_icq(qp->ibqp.recv_cq), &wc,
       swqe->wr.send_flags & IB_SEND_SOLICITED);
 ibp->n_loop_pkts++;
bail_unlock:
 spin_unlock_irqrestore(&qp->r_lock, flags);
drop:
 if (atomic_dec_and_test(&qp->refcount))
  wake_up(&qp->wait);
}
