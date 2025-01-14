
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rdma_conn_param {int rnr_retry_count; int flow_control; int private_data_len; struct nvme_rdma_cm_rep* private_data; int initiator_depth; } ;
struct rdma_cm_id {int dummy; } ;
struct nvmet_rdma_queue {int recv_queue_size; TYPE_3__* dev; } ;
struct nvme_rdma_cm_rep {void* crqsize; void* recfmt; } ;
typedef int priv ;
struct TYPE_6__ {TYPE_2__* device; } ;
struct TYPE_4__ {int max_qp_init_rd_atom; } ;
struct TYPE_5__ {TYPE_1__ attrs; } ;


 int ENOMEM ;
 int NVME_RDMA_CM_FMT_1_0 ;
 void* cpu_to_le16 (int ) ;
 int min_t (int ,int ,int ) ;
 int pr_err (char*,int) ;
 int rdma_accept (struct rdma_cm_id*,struct rdma_conn_param*) ;
 int u8 ;

__attribute__((used)) static int nvmet_rdma_cm_accept(struct rdma_cm_id *cm_id,
  struct nvmet_rdma_queue *queue,
  struct rdma_conn_param *p)
{
 struct rdma_conn_param param = { };
 struct nvme_rdma_cm_rep priv = { };
 int ret = -ENOMEM;

 param.rnr_retry_count = 7;
 param.flow_control = 1;
 param.initiator_depth = min_t(u8, p->initiator_depth,
  queue->dev->device->attrs.max_qp_init_rd_atom);
 param.private_data = &priv;
 param.private_data_len = sizeof(priv);
 priv.recfmt = cpu_to_le16(NVME_RDMA_CM_FMT_1_0);
 priv.crqsize = cpu_to_le16(queue->recv_queue_size);

 ret = rdma_accept(cm_id, &param);
 if (ret)
  pr_err("rdma_accept failed (error code = %d)\n", ret);

 return ret;
}
