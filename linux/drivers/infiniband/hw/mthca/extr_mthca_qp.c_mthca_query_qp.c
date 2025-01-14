
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int ackto; int rnr_retry; int port_pkey; } ;
struct mthca_qp_context {int mtu_msgmax; TYPE_4__ alt_path; TYPE_4__ pri_path; int params1; int rnr_nextrecvpsn; int params2; int remote_qpn; int next_send_psn; int qkey; int flags; } ;
struct mthca_qp_param {struct mthca_qp_context context; } ;
struct TYPE_6__ {int max_gs; int max; } ;
struct TYPE_5__ {int max_gs; int max; } ;
struct mthca_qp {scalar_t__ state; scalar_t__ transport; int mutex; int sq_policy; int max_inline_data; TYPE_2__ rq; TYPE_1__ sq; int qpn; } ;
struct mthca_mailbox {struct mthca_qp_param* buf; } ;
struct mthca_dev {int dummy; } ;
struct TYPE_7__ {int max_inline_data; int max_recv_sge; int max_send_sge; int max_recv_wr; int max_send_wr; } ;
struct ib_qp_init_attr {int sq_sig_type; TYPE_3__ cap; } ;
struct ib_qp_attr {scalar_t__ qp_state; int path_mtu; int qkey; int rq_psn; int sq_psn; int dest_qp_num; int alt_pkey_index; int pkey_index; int port_num; int sq_draining; int max_rd_atomic; int max_dest_rd_atomic; int min_rnr_timer; int timeout; int retry_cnt; int rnr_retry; int alt_timeout; scalar_t__ cur_qp_state; TYPE_3__ cap; int alt_ah_attr; int alt_port_num; int ah_attr; int qp_access_flags; int path_mig_state; } ;
struct ib_qp {int device; } ;


 int GFP_KERNEL ;
 scalar_t__ IB_QPS_RESET ;
 scalar_t__ IS_ERR (struct mthca_mailbox*) ;
 int MTHCA_QP_STATE_DRAINING ;
 int PTR_ERR (struct mthca_mailbox*) ;
 scalar_t__ RC ;
 scalar_t__ UC ;
 int be32_to_cpu (int ) ;
 int mthca_QUERY_QP (struct mthca_dev*,int ,int ,struct mthca_mailbox*) ;
 struct mthca_mailbox* mthca_alloc_mailbox (struct mthca_dev*,int ) ;
 int mthca_free_mailbox (struct mthca_dev*,struct mthca_mailbox*) ;
 int mthca_warn (struct mthca_dev*,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rdma_ah_get_port_num (int *) ;
 int to_ib_mig_state (int) ;
 int to_ib_qp_access_flags (int) ;
 scalar_t__ to_ib_qp_state (int) ;
 struct mthca_dev* to_mdev (int ) ;
 struct mthca_qp* to_mqp (struct ib_qp*) ;
 int to_rdma_ah_attr (struct mthca_dev*,int *,TYPE_4__*) ;

int mthca_query_qp(struct ib_qp *ibqp, struct ib_qp_attr *qp_attr, int qp_attr_mask,
     struct ib_qp_init_attr *qp_init_attr)
{
 struct mthca_dev *dev = to_mdev(ibqp->device);
 struct mthca_qp *qp = to_mqp(ibqp);
 int err = 0;
 struct mthca_mailbox *mailbox = ((void*)0);
 struct mthca_qp_param *qp_param;
 struct mthca_qp_context *context;
 int mthca_state;

 mutex_lock(&qp->mutex);

 if (qp->state == IB_QPS_RESET) {
  qp_attr->qp_state = IB_QPS_RESET;
  goto done;
 }

 mailbox = mthca_alloc_mailbox(dev, GFP_KERNEL);
 if (IS_ERR(mailbox)) {
  err = PTR_ERR(mailbox);
  goto out;
 }

 err = mthca_QUERY_QP(dev, qp->qpn, 0, mailbox);
 if (err) {
  mthca_warn(dev, "QUERY_QP failed (%d)\n", err);
  goto out_mailbox;
 }

 qp_param = mailbox->buf;
 context = &qp_param->context;
 mthca_state = be32_to_cpu(context->flags) >> 28;

 qp->state = to_ib_qp_state(mthca_state);
 qp_attr->qp_state = qp->state;
 qp_attr->path_mtu = context->mtu_msgmax >> 5;
 qp_attr->path_mig_state =
  to_ib_mig_state((be32_to_cpu(context->flags) >> 11) & 0x3);
 qp_attr->qkey = be32_to_cpu(context->qkey);
 qp_attr->rq_psn = be32_to_cpu(context->rnr_nextrecvpsn) & 0xffffff;
 qp_attr->sq_psn = be32_to_cpu(context->next_send_psn) & 0xffffff;
 qp_attr->dest_qp_num = be32_to_cpu(context->remote_qpn) & 0xffffff;
 qp_attr->qp_access_flags =
  to_ib_qp_access_flags(be32_to_cpu(context->params2));

 if (qp->transport == RC || qp->transport == UC) {
  to_rdma_ah_attr(dev, &qp_attr->ah_attr, &context->pri_path);
  to_rdma_ah_attr(dev, &qp_attr->alt_ah_attr, &context->alt_path);
  qp_attr->alt_pkey_index =
   be32_to_cpu(context->alt_path.port_pkey) & 0x7f;
  qp_attr->alt_port_num =
   rdma_ah_get_port_num(&qp_attr->alt_ah_attr);
 }

 qp_attr->pkey_index = be32_to_cpu(context->pri_path.port_pkey) & 0x7f;
 qp_attr->port_num =
  (be32_to_cpu(context->pri_path.port_pkey) >> 24) & 0x3;


 qp_attr->sq_draining = mthca_state == MTHCA_QP_STATE_DRAINING;

 qp_attr->max_rd_atomic = 1 << ((be32_to_cpu(context->params1) >> 21) & 0x7);

 qp_attr->max_dest_rd_atomic =
  1 << ((be32_to_cpu(context->params2) >> 21) & 0x7);
 qp_attr->min_rnr_timer =
  (be32_to_cpu(context->rnr_nextrecvpsn) >> 24) & 0x1f;
 qp_attr->timeout = context->pri_path.ackto >> 3;
 qp_attr->retry_cnt = (be32_to_cpu(context->params1) >> 16) & 0x7;
 qp_attr->rnr_retry = context->pri_path.rnr_retry >> 5;
 qp_attr->alt_timeout = context->alt_path.ackto >> 3;

done:
 qp_attr->cur_qp_state = qp_attr->qp_state;
 qp_attr->cap.max_send_wr = qp->sq.max;
 qp_attr->cap.max_recv_wr = qp->rq.max;
 qp_attr->cap.max_send_sge = qp->sq.max_gs;
 qp_attr->cap.max_recv_sge = qp->rq.max_gs;
 qp_attr->cap.max_inline_data = qp->max_inline_data;

 qp_init_attr->cap = qp_attr->cap;
 qp_init_attr->sq_sig_type = qp->sq_policy;

out_mailbox:
 mthca_free_mailbox(dev, mailbox);

out:
 mutex_unlock(&qp->mutex);
 return err;
}
