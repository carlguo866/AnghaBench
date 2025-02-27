
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct rdma_conn_param {int flow_control; int retry_count; int rnr_retry_count; int private_data_len; struct nvme_rdma_cm_req* private_data; int responder_resources; int qp_num; } ;
struct nvme_rdma_queue {int cm_id; struct nvme_rdma_ctrl* ctrl; scalar_t__ queue_size; TYPE_4__* device; TYPE_1__* qp; } ;
struct TYPE_10__ {int device; scalar_t__ sqsize; } ;
struct nvme_rdma_ctrl {TYPE_5__ ctrl; } ;
struct nvme_rdma_cm_req {scalar_t__ qid; void* hsqsize; void* hrqsize; void* recfmt; } ;
typedef int priv ;
struct TYPE_9__ {TYPE_3__* dev; } ;
struct TYPE_7__ {int max_qp_rd_atom; } ;
struct TYPE_8__ {TYPE_2__ attrs; } ;
struct TYPE_6__ {int qp_num; } ;


 scalar_t__ NVME_AQ_DEPTH ;
 scalar_t__ NVME_RDMA_CM_FMT_1_0 ;
 void* cpu_to_le16 (scalar_t__) ;
 int dev_err (int ,char*,int) ;
 int nvme_rdma_destroy_queue_ib (struct nvme_rdma_queue*) ;
 scalar_t__ nvme_rdma_queue_idx (struct nvme_rdma_queue*) ;
 int rdma_connect (int ,struct rdma_conn_param*) ;

__attribute__((used)) static int nvme_rdma_route_resolved(struct nvme_rdma_queue *queue)
{
 struct nvme_rdma_ctrl *ctrl = queue->ctrl;
 struct rdma_conn_param param = { };
 struct nvme_rdma_cm_req priv = { };
 int ret;

 param.qp_num = queue->qp->qp_num;
 param.flow_control = 1;

 param.responder_resources = queue->device->dev->attrs.max_qp_rd_atom;

 param.retry_count = 7;
 param.rnr_retry_count = 7;
 param.private_data = &priv;
 param.private_data_len = sizeof(priv);

 priv.recfmt = cpu_to_le16(NVME_RDMA_CM_FMT_1_0);
 priv.qid = cpu_to_le16(nvme_rdma_queue_idx(queue));




 if (priv.qid == 0) {
  priv.hrqsize = cpu_to_le16(NVME_AQ_DEPTH);
  priv.hsqsize = cpu_to_le16(NVME_AQ_DEPTH - 1);
 } else {





  priv.hrqsize = cpu_to_le16(queue->queue_size);
  priv.hsqsize = cpu_to_le16(queue->ctrl->ctrl.sqsize);
 }

 ret = rdma_connect(queue->cm_id, &param);
 if (ret) {
  dev_err(ctrl->ctrl.device,
   "rdma_connect failed (%d).\n", ret);
  goto out_destroy_queue_ib;
 }

 return 0;

out_destroy_queue_ib:
 nvme_rdma_destroy_queue_ib(queue);
 return ret;
}
