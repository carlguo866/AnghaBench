
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct mlx4_wqe_data_seg {scalar_t__ addr; void* lkey; void* byte_count; } ;
struct TYPE_13__ {int max_gs; int head; int wqe_cnt; int lock; int * wrid; } ;
struct TYPE_12__ {void** db; } ;
struct TYPE_10__ {int recv_cq; } ;
struct mlx4_ib_qp {int mlx4_ib_qp_type; TYPE_6__ rq; TYPE_5__ db; TYPE_4__* sqp_proxy_rcv; TYPE_3__ ibqp; } ;
struct mlx4_ib_proxy_sqp_hdr {int dummy; } ;
struct mlx4_ib_dev {TYPE_2__* dev; } ;
struct ib_recv_wr {int num_sge; int wr_id; TYPE_7__* sg_list; struct ib_recv_wr* next; } ;
struct ib_qp {int device; } ;
struct TYPE_14__ {int lkey; } ;
struct TYPE_11__ {int map; } ;
struct TYPE_9__ {TYPE_1__* persist; } ;
struct TYPE_8__ {int state; } ;


 int DMA_FROM_DEVICE ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int MLX4_DEVICE_STATE_INTERNAL_ERROR ;
 int MLX4_IB_QPT_PROXY_GSI ;
 int MLX4_IB_QPT_PROXY_SMI ;
 int MLX4_IB_QPT_PROXY_SMI_OWNER ;
 int MLX4_INVALID_LKEY ;
 int __set_data_seg (struct mlx4_wqe_data_seg*,TYPE_7__*) ;
 void* cpu_to_be32 (int) ;
 scalar_t__ cpu_to_be64 (int ) ;
 struct mlx4_wqe_data_seg* get_recv_wqe (struct mlx4_ib_qp*,int) ;
 int ib_dma_sync_single_for_device (int ,int ,int,int ) ;
 scalar_t__ likely (int) ;
 scalar_t__ mlx4_wq_overflow (TYPE_6__*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct mlx4_ib_dev* to_mdev (int ) ;
 struct mlx4_ib_qp* to_mqp (struct ib_qp*) ;
 scalar_t__ unlikely (int) ;
 int wmb () ;

int mlx4_ib_post_recv(struct ib_qp *ibqp, struct ib_recv_wr *wr,
        struct ib_recv_wr **bad_wr)
{
 struct mlx4_ib_qp *qp = to_mqp(ibqp);
 struct mlx4_wqe_data_seg *scat;
 unsigned long flags;
 int err = 0;
 int nreq;
 int ind;
 int max_gs;
 int i;
 struct mlx4_ib_dev *mdev = to_mdev(ibqp->device);

 max_gs = qp->rq.max_gs;
 spin_lock_irqsave(&qp->rq.lock, flags);

 if (mdev->dev->persist->state & MLX4_DEVICE_STATE_INTERNAL_ERROR) {
  err = -EIO;
  *bad_wr = wr;
  nreq = 0;
  goto out;
 }

 ind = qp->rq.head & (qp->rq.wqe_cnt - 1);

 for (nreq = 0; wr; ++nreq, wr = wr->next) {
  if (mlx4_wq_overflow(&qp->rq, nreq, qp->ibqp.recv_cq)) {
   err = -ENOMEM;
   *bad_wr = wr;
   goto out;
  }

  if (unlikely(wr->num_sge > qp->rq.max_gs)) {
   err = -EINVAL;
   *bad_wr = wr;
   goto out;
  }

  scat = get_recv_wqe(qp, ind);

  if (qp->mlx4_ib_qp_type & (MLX4_IB_QPT_PROXY_SMI_OWNER |
      MLX4_IB_QPT_PROXY_SMI | MLX4_IB_QPT_PROXY_GSI)) {
   ib_dma_sync_single_for_device(ibqp->device,
            qp->sqp_proxy_rcv[ind].map,
            sizeof (struct mlx4_ib_proxy_sqp_hdr),
            DMA_FROM_DEVICE);
   scat->byte_count =
    cpu_to_be32(sizeof (struct mlx4_ib_proxy_sqp_hdr));

   scat->lkey = cpu_to_be32(wr->sg_list->lkey);
   scat->addr = cpu_to_be64(qp->sqp_proxy_rcv[ind].map);
   scat++;
   max_gs--;
  }

  for (i = 0; i < wr->num_sge; ++i)
   __set_data_seg(scat + i, wr->sg_list + i);

  if (i < max_gs) {
   scat[i].byte_count = 0;
   scat[i].lkey = cpu_to_be32(MLX4_INVALID_LKEY);
   scat[i].addr = 0;
  }

  qp->rq.wrid[ind] = wr->wr_id;

  ind = (ind + 1) & (qp->rq.wqe_cnt - 1);
 }

out:
 if (likely(nreq)) {
  qp->rq.head += nreq;





  wmb();

  *qp->db.db = cpu_to_be32(qp->rq.head & 0xffff);
 }

 spin_unlock_irqrestore(&qp->rq.lock, flags);

 return err;
}
