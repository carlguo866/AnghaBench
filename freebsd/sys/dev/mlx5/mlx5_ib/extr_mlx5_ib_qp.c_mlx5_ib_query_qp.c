
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_7__ {int max_gs; int max_post; } ;
struct TYPE_6__ {int max_gs; int wqe_cnt; } ;
struct TYPE_5__ {scalar_t__ qp_type; } ;
struct mlx5_ib_qp {int flags; int sq_signal_bits; int mutex; int max_inline_data; TYPE_3__ sq; TYPE_2__ rq; int state; TYPE_1__ ibqp; } ;
struct mlx5_ib_dev {int dummy; } ;
struct TYPE_8__ {int max_inline_data; int max_send_sge; int max_send_wr; int max_recv_sge; int max_recv_wr; } ;
struct ib_qp_init_attr {scalar_t__ qp_type; int sq_sig_type; int create_flags; TYPE_4__ cap; int srq; int send_cq; int recv_cq; int qp_context; } ;
struct ib_qp_attr {int port_num; TYPE_4__ cap; int qp_state; int cur_qp_state; } ;
struct ib_qp {scalar_t__ qp_type; int srq; int send_cq; int recv_cq; int qp_context; int uobject; scalar_t__ rwq_ind_tbl; int device; } ;


 int ENOSYS ;
 scalar_t__ IB_QPT_GSI ;
 scalar_t__ IB_QPT_RAW_PACKET ;
 int IB_QP_CREATE_BLOCK_MULTICAST_LOOPBACK ;
 int IB_QP_CREATE_CROSS_CHANNEL ;
 int IB_QP_CREATE_MANAGED_RECV ;
 int IB_QP_CREATE_MANAGED_SEND ;
 int IB_SIGNAL_ALL_WR ;
 int IB_SIGNAL_REQ_WR ;
 int MLX5_IB_QP_BLOCK_MULTICAST_LOOPBACK ;
 int MLX5_IB_QP_CROSS_CHANNEL ;
 int MLX5_IB_QP_MANAGED_RECV ;
 int MLX5_IB_QP_MANAGED_SEND ;
 int MLX5_IB_QP_SQPN_QP1 ;
 int MLX5_WQE_CTRL_CQ_UPDATE ;
 int flush_workqueue (int ) ;
 int mlx5_ib_create_qp_sqpn_qp1 () ;
 int mlx5_ib_gsi_query_qp (struct ib_qp*,struct ib_qp_attr*,int,struct ib_qp_init_attr*) ;
 int mlx5_ib_page_fault_wq ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int query_qp_attr (struct mlx5_ib_dev*,struct mlx5_ib_qp*,struct ib_qp_attr*) ;
 int query_raw_packet_qp_state (struct mlx5_ib_dev*,struct mlx5_ib_qp*,int *) ;
 struct mlx5_ib_dev* to_mdev (int ) ;
 struct mlx5_ib_qp* to_mqp (struct ib_qp*) ;
 scalar_t__ unlikely (int) ;

int mlx5_ib_query_qp(struct ib_qp *ibqp, struct ib_qp_attr *qp_attr,
       int qp_attr_mask, struct ib_qp_init_attr *qp_init_attr)
{
 struct mlx5_ib_dev *dev = to_mdev(ibqp->device);
 struct mlx5_ib_qp *qp = to_mqp(ibqp);
 int err = 0;
 u8 raw_packet_qp_state;

 if (ibqp->rwq_ind_tbl)
  return -ENOSYS;

 if (unlikely(ibqp->qp_type == IB_QPT_GSI))
  return mlx5_ib_gsi_query_qp(ibqp, qp_attr, qp_attr_mask,
         qp_init_attr);
 mutex_lock(&qp->mutex);

 if (qp->ibqp.qp_type == IB_QPT_RAW_PACKET) {
  err = query_raw_packet_qp_state(dev, qp, &raw_packet_qp_state);
  if (err)
   goto out;
  qp->state = raw_packet_qp_state;
  qp_attr->port_num = 1;
 } else {
  err = query_qp_attr(dev, qp, qp_attr);
  if (err)
   goto out;
 }

 qp_attr->qp_state = qp->state;
 qp_attr->cur_qp_state = qp_attr->qp_state;
 qp_attr->cap.max_recv_wr = qp->rq.wqe_cnt;
 qp_attr->cap.max_recv_sge = qp->rq.max_gs;

 if (!ibqp->uobject) {
  qp_attr->cap.max_send_wr = qp->sq.max_post;
  qp_attr->cap.max_send_sge = qp->sq.max_gs;
  qp_init_attr->qp_context = ibqp->qp_context;
 } else {
  qp_attr->cap.max_send_wr = 0;
  qp_attr->cap.max_send_sge = 0;
 }

 qp_init_attr->qp_type = ibqp->qp_type;
 qp_init_attr->recv_cq = ibqp->recv_cq;
 qp_init_attr->send_cq = ibqp->send_cq;
 qp_init_attr->srq = ibqp->srq;
 qp_attr->cap.max_inline_data = qp->max_inline_data;

 qp_init_attr->cap = qp_attr->cap;

 qp_init_attr->create_flags = 0;
 if (qp->flags & MLX5_IB_QP_BLOCK_MULTICAST_LOOPBACK)
  qp_init_attr->create_flags |= IB_QP_CREATE_BLOCK_MULTICAST_LOOPBACK;

 if (qp->flags & MLX5_IB_QP_CROSS_CHANNEL)
  qp_init_attr->create_flags |= IB_QP_CREATE_CROSS_CHANNEL;
 if (qp->flags & MLX5_IB_QP_MANAGED_SEND)
  qp_init_attr->create_flags |= IB_QP_CREATE_MANAGED_SEND;
 if (qp->flags & MLX5_IB_QP_MANAGED_RECV)
  qp_init_attr->create_flags |= IB_QP_CREATE_MANAGED_RECV;
 if (qp->flags & MLX5_IB_QP_SQPN_QP1)
  qp_init_attr->create_flags |= mlx5_ib_create_qp_sqpn_qp1();

 qp_init_attr->sq_sig_type = qp->sq_signal_bits & MLX5_WQE_CTRL_CQ_UPDATE ?
  IB_SIGNAL_ALL_WR : IB_SIGNAL_REQ_WR;

out:
 mutex_unlock(&qp->mutex);
 return err;
}
