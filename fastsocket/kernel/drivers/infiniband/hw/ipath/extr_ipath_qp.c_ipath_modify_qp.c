
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int qp_context; int (* event_handler ) (struct ib_event*,int ) ;int device; int qp_type; } ;
struct TYPE_7__ {int sgid_index; } ;
struct TYPE_9__ {scalar_t__ dlid; int ah_flags; int static_rate; TYPE_2__ grh; } ;
struct ipath_qp {int state; int s_draining; scalar_t__ s_pkey_index; scalar_t__ path_mtu; int s_rnr_retry; int s_rnr_retry_cnt; int r_min_rnr_timer; scalar_t__ r_max_rd_atomic; int s_lock; TYPE_3__ ibqp; int s_max_rd_atomic; int qkey; int timeout; int s_retry_cnt; int s_retry; int s_dmult; TYPE_4__ remote_ah_attr; int qp_access_flags; int r_psn; scalar_t__ s_next_psn; scalar_t__ s_last_psn; scalar_t__ s_psn; int remote_qpn; int s_cur; int s_last; int s_dma_busy; int wait_dma; int s_task; int s_flags; int piowait; int timerwait; } ;
struct ipath_ibdev {int pending_lock; int dd; } ;
struct ib_udata {int dummy; } ;
struct ib_qp_attr {int cur_qp_state; int qp_state; scalar_t__ pkey_index; int min_rnr_timer; scalar_t__ port_num; scalar_t__ path_mtu; scalar_t__ path_mig_state; scalar_t__ max_dest_rd_atomic; int rnr_retry; int max_rd_atomic; int qkey; int timeout; int retry_cnt; TYPE_4__ ah_attr; int qp_access_flags; int rq_psn; scalar_t__ sq_psn; int dest_qp_num; } ;
struct ib_qp {int qp_type; TYPE_5__* device; } ;
struct TYPE_6__ {TYPE_3__* qp; } ;
struct ib_event {int event; TYPE_1__ element; int device; } ;
typedef enum ib_qp_state { ____Placeholder_ib_qp_state } ib_qp_state ;
struct TYPE_10__ {scalar_t__ phys_port_cnt; } ;


 int EINVAL ;
 int IB_AH_GRH ;
 int IB_EVENT_QP_LAST_WQE_REACHED ;
 scalar_t__ IB_MIG_MIGRATED ;
 scalar_t__ IB_MIG_REARM ;
 scalar_t__ IB_MTU_2048 ;




 int IB_QPT_RC ;
 int IB_QP_ACCESS_FLAGS ;
 int IB_QP_AV ;
 int IB_QP_CUR_STATE ;
 int IB_QP_DEST_QPN ;
 int IB_QP_MAX_DEST_RD_ATOMIC ;
 int IB_QP_MAX_QP_RD_ATOMIC ;
 int IB_QP_MIN_RNR_TIMER ;
 int IB_QP_PATH_MIG_STATE ;
 int IB_QP_PATH_MTU ;
 int IB_QP_PKEY_INDEX ;
 int IB_QP_PORT ;
 int IB_QP_QKEY ;
 int IB_QP_RETRY_CNT ;
 int IB_QP_RNR_RETRY ;
 int IB_QP_RQ_PSN ;
 int IB_QP_SQ_PSN ;
 int IB_QP_STATE ;
 int IB_QP_TIMEOUT ;
 int IB_WC_WR_FLUSH_ERR ;
 scalar_t__ IPATH_MAX_RDMA_ATOMIC ;
 scalar_t__ IPATH_MULTICAST_LID_BASE ;
 int IPATH_S_ANY_WAIT ;
 int atomic_read (int *) ;
 int ib_modify_qp_is_ok (int,int,int ,int) ;
 int ib_mtu_enum_to_int (scalar_t__) ;
 int ipath_error_qp (struct ipath_qp*,int ) ;
 scalar_t__ ipath_get_npkeys (int ) ;
 int ipath_ib_rate_to_mult (int ) ;
 int ipath_mtu4096 ;
 int ipath_reset_qp (struct ipath_qp*,int ) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct ib_event*,int ) ;
 int tasklet_kill (int *) ;
 struct ipath_ibdev* to_idev (TYPE_5__*) ;
 struct ipath_qp* to_iqp (struct ib_qp*) ;
 int wait_event (int ,int) ;

int ipath_modify_qp(struct ib_qp *ibqp, struct ib_qp_attr *attr,
      int attr_mask, struct ib_udata *udata)
{
 struct ipath_ibdev *dev = to_idev(ibqp->device);
 struct ipath_qp *qp = to_iqp(ibqp);
 enum ib_qp_state cur_state, new_state;
 int lastwqe = 0;
 int ret;

 spin_lock_irq(&qp->s_lock);

 cur_state = attr_mask & IB_QP_CUR_STATE ?
  attr->cur_qp_state : qp->state;
 new_state = attr_mask & IB_QP_STATE ? attr->qp_state : cur_state;

 if (!ib_modify_qp_is_ok(cur_state, new_state, ibqp->qp_type,
    attr_mask))
  goto inval;

 if (attr_mask & IB_QP_AV) {
  if (attr->ah_attr.dlid == 0 ||
      attr->ah_attr.dlid >= IPATH_MULTICAST_LID_BASE)
   goto inval;

  if ((attr->ah_attr.ah_flags & IB_AH_GRH) &&
      (attr->ah_attr.grh.sgid_index > 1))
   goto inval;
 }

 if (attr_mask & IB_QP_PKEY_INDEX)
  if (attr->pkey_index >= ipath_get_npkeys(dev->dd))
   goto inval;

 if (attr_mask & IB_QP_MIN_RNR_TIMER)
  if (attr->min_rnr_timer > 31)
   goto inval;

 if (attr_mask & IB_QP_PORT)
  if (attr->port_num == 0 ||
      attr->port_num > ibqp->device->phys_port_cnt)
   goto inval;





 if ((attr_mask & IB_QP_PATH_MTU) &&
  (ib_mtu_enum_to_int(attr->path_mtu) == -1 ||
  (attr->path_mtu > IB_MTU_2048 && !ipath_mtu4096)))
  goto inval;

 if (attr_mask & IB_QP_PATH_MIG_STATE)
  if (attr->path_mig_state != IB_MIG_MIGRATED &&
      attr->path_mig_state != IB_MIG_REARM)
   goto inval;

 if (attr_mask & IB_QP_MAX_DEST_RD_ATOMIC)
  if (attr->max_dest_rd_atomic > IPATH_MAX_RDMA_ATOMIC)
   goto inval;

 switch (new_state) {
 case 130:
  if (qp->state != 130) {
   qp->state = 130;
   spin_lock(&dev->pending_lock);
   if (!list_empty(&qp->timerwait))
    list_del_init(&qp->timerwait);
   if (!list_empty(&qp->piowait))
    list_del_init(&qp->piowait);
   spin_unlock(&dev->pending_lock);
   qp->s_flags &= ~IPATH_S_ANY_WAIT;
   spin_unlock_irq(&qp->s_lock);

   tasklet_kill(&qp->s_task);
   wait_event(qp->wait_dma, !atomic_read(&qp->s_dma_busy));
   spin_lock_irq(&qp->s_lock);
  }
  ipath_reset_qp(qp, ibqp->qp_type);
  break;

 case 129:
  qp->s_draining = qp->s_last != qp->s_cur;
  qp->state = new_state;
  break;

 case 128:
  if (qp->ibqp.qp_type == IB_QPT_RC)
   goto inval;
  qp->state = new_state;
  break;

 case 131:
  lastwqe = ipath_error_qp(qp, IB_WC_WR_FLUSH_ERR);
  break;

 default:
  qp->state = new_state;
  break;
 }

 if (attr_mask & IB_QP_PKEY_INDEX)
  qp->s_pkey_index = attr->pkey_index;

 if (attr_mask & IB_QP_DEST_QPN)
  qp->remote_qpn = attr->dest_qp_num;

 if (attr_mask & IB_QP_SQ_PSN) {
  qp->s_psn = qp->s_next_psn = attr->sq_psn;
  qp->s_last_psn = qp->s_next_psn - 1;
 }

 if (attr_mask & IB_QP_RQ_PSN)
  qp->r_psn = attr->rq_psn;

 if (attr_mask & IB_QP_ACCESS_FLAGS)
  qp->qp_access_flags = attr->qp_access_flags;

 if (attr_mask & IB_QP_AV) {
  qp->remote_ah_attr = attr->ah_attr;
  qp->s_dmult = ipath_ib_rate_to_mult(attr->ah_attr.static_rate);
 }

 if (attr_mask & IB_QP_PATH_MTU)
  qp->path_mtu = attr->path_mtu;

 if (attr_mask & IB_QP_RETRY_CNT)
  qp->s_retry = qp->s_retry_cnt = attr->retry_cnt;

 if (attr_mask & IB_QP_RNR_RETRY) {
  qp->s_rnr_retry = attr->rnr_retry;
  if (qp->s_rnr_retry > 7)
   qp->s_rnr_retry = 7;
  qp->s_rnr_retry_cnt = qp->s_rnr_retry;
 }

 if (attr_mask & IB_QP_MIN_RNR_TIMER)
  qp->r_min_rnr_timer = attr->min_rnr_timer;

 if (attr_mask & IB_QP_TIMEOUT)
  qp->timeout = attr->timeout;

 if (attr_mask & IB_QP_QKEY)
  qp->qkey = attr->qkey;

 if (attr_mask & IB_QP_MAX_DEST_RD_ATOMIC)
  qp->r_max_rd_atomic = attr->max_dest_rd_atomic;

 if (attr_mask & IB_QP_MAX_QP_RD_ATOMIC)
  qp->s_max_rd_atomic = attr->max_rd_atomic;

 spin_unlock_irq(&qp->s_lock);

 if (lastwqe) {
  struct ib_event ev;

  ev.device = qp->ibqp.device;
  ev.element.qp = &qp->ibqp;
  ev.event = IB_EVENT_QP_LAST_WQE_REACHED;
  qp->ibqp.event_handler(&ev, qp->ibqp.qp_context);
 }
 ret = 0;
 goto bail;

inval:
 spin_unlock_irq(&qp->s_lock);
 ret = -EINVAL;

bail:
 return ret;
}
