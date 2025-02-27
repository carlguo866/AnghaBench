
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ num_sge; TYPE_4__* wr_cqe; int opcode; } ;
struct TYPE_18__ {int access; int key; TYPE_7__* mr; TYPE_5__ wr; } ;
struct TYPE_16__ {int done; } ;
struct TYPE_15__ {int sgl; } ;
struct nvme_rdma_request {TYPE_7__* mr; TYPE_6__ reg_wr; TYPE_4__ reg_cqe; TYPE_3__ sg_table; } ;
struct nvme_rdma_queue {TYPE_8__* qp; } ;
struct nvme_keyed_sgl_desc {int type; int key; int length; int addr; } ;
struct TYPE_13__ {struct nvme_keyed_sgl_desc ksgl; } ;
struct TYPE_14__ {TYPE_1__ dptr; } ;
struct nvme_command {TYPE_2__ common; } ;
struct TYPE_20__ {int rdma_mrs; } ;
struct TYPE_19__ {int rkey; int length; int iova; } ;


 int EAGAIN ;
 int EINVAL ;
 int IB_ACCESS_LOCAL_WRITE ;
 int IB_ACCESS_REMOTE_READ ;
 int IB_ACCESS_REMOTE_WRITE ;
 int IB_WR_REG_MR ;
 int NVME_KEY_SGL_FMT_DATA_DESC ;
 int NVME_SGL_FMT_INVALIDATE ;
 int SZ_4K ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int cpu_to_le64 (int ) ;
 int ib_inc_rkey (int ) ;
 int ib_map_mr_sg (TYPE_7__*,int ,int,int *,int ) ;
 TYPE_7__* ib_mr_pool_get (TYPE_8__*,int *) ;
 int ib_mr_pool_put (TYPE_8__*,int *,TYPE_7__*) ;
 int ib_update_fast_reg_key (TYPE_7__*,int ) ;
 int memset (TYPE_6__*,int ,int) ;
 int nvme_rdma_memreg_done ;
 int put_unaligned_le24 (int ,int ) ;
 int put_unaligned_le32 (int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int nvme_rdma_map_sg_fr(struct nvme_rdma_queue *queue,
  struct nvme_rdma_request *req, struct nvme_command *c,
  int count)
{
 struct nvme_keyed_sgl_desc *sg = &c->common.dptr.ksgl;
 int nr;

 req->mr = ib_mr_pool_get(queue->qp, &queue->qp->rdma_mrs);
 if (WARN_ON_ONCE(!req->mr))
  return -EAGAIN;





 nr = ib_map_mr_sg(req->mr, req->sg_table.sgl, count, ((void*)0), SZ_4K);
 if (unlikely(nr < count)) {
  ib_mr_pool_put(queue->qp, &queue->qp->rdma_mrs, req->mr);
  req->mr = ((void*)0);
  if (nr < 0)
   return nr;
  return -EINVAL;
 }

 ib_update_fast_reg_key(req->mr, ib_inc_rkey(req->mr->rkey));

 req->reg_cqe.done = nvme_rdma_memreg_done;
 memset(&req->reg_wr, 0, sizeof(req->reg_wr));
 req->reg_wr.wr.opcode = IB_WR_REG_MR;
 req->reg_wr.wr.wr_cqe = &req->reg_cqe;
 req->reg_wr.wr.num_sge = 0;
 req->reg_wr.mr = req->mr;
 req->reg_wr.key = req->mr->rkey;
 req->reg_wr.access = IB_ACCESS_LOCAL_WRITE |
        IB_ACCESS_REMOTE_READ |
        IB_ACCESS_REMOTE_WRITE;

 sg->addr = cpu_to_le64(req->mr->iova);
 put_unaligned_le24(req->mr->length, sg->length);
 put_unaligned_le32(req->mr->rkey, sg->key);
 sg->type = (NVME_KEY_SGL_FMT_DATA_DESC << 4) |
   NVME_SGL_FMT_INVALIDATE;

 return 0;
}
