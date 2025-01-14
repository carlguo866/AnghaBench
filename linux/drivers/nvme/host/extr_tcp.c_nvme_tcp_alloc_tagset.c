
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_tcp_request {int dummy; } ;
struct blk_mq_tag_set {int reserved_tags; int cmd_size; int nr_hw_queues; int nr_maps; int timeout; struct nvme_tcp_ctrl* driver_data; int flags; void* numa_node; scalar_t__ queue_depth; int * ops; } ;
struct nvme_tcp_ctrl {struct blk_mq_tag_set tag_set; struct blk_mq_tag_set admin_tag_set; } ;
struct nvme_ctrl {int queue_count; TYPE_1__* opts; scalar_t__ sqsize; } ;
struct TYPE_2__ {scalar_t__ nr_poll_queues; } ;


 int ADMIN_TIMEOUT ;
 int BLK_MQ_F_SHOULD_MERGE ;
 struct blk_mq_tag_set* ERR_PTR (int) ;
 int HCTX_MAX_TYPES ;
 void* NUMA_NO_NODE ;
 scalar_t__ NVME_AQ_MQ_TAG_DEPTH ;
 int NVME_IO_TIMEOUT ;
 int blk_mq_alloc_tag_set (struct blk_mq_tag_set*) ;
 int memset (struct blk_mq_tag_set*,int ,int) ;
 int nvme_tcp_admin_mq_ops ;
 int nvme_tcp_mq_ops ;
 struct nvme_tcp_ctrl* to_tcp_ctrl (struct nvme_ctrl*) ;

__attribute__((used)) static struct blk_mq_tag_set *nvme_tcp_alloc_tagset(struct nvme_ctrl *nctrl,
  bool admin)
{
 struct nvme_tcp_ctrl *ctrl = to_tcp_ctrl(nctrl);
 struct blk_mq_tag_set *set;
 int ret;

 if (admin) {
  set = &ctrl->admin_tag_set;
  memset(set, 0, sizeof(*set));
  set->ops = &nvme_tcp_admin_mq_ops;
  set->queue_depth = NVME_AQ_MQ_TAG_DEPTH;
  set->reserved_tags = 2;
  set->numa_node = NUMA_NO_NODE;
  set->cmd_size = sizeof(struct nvme_tcp_request);
  set->driver_data = ctrl;
  set->nr_hw_queues = 1;
  set->timeout = ADMIN_TIMEOUT;
 } else {
  set = &ctrl->tag_set;
  memset(set, 0, sizeof(*set));
  set->ops = &nvme_tcp_mq_ops;
  set->queue_depth = nctrl->sqsize + 1;
  set->reserved_tags = 1;
  set->numa_node = NUMA_NO_NODE;
  set->flags = BLK_MQ_F_SHOULD_MERGE;
  set->cmd_size = sizeof(struct nvme_tcp_request);
  set->driver_data = ctrl;
  set->nr_hw_queues = nctrl->queue_count - 1;
  set->timeout = NVME_IO_TIMEOUT;
  set->nr_maps = nctrl->opts->nr_poll_queues ? HCTX_MAX_TYPES : 2;
 }

 ret = blk_mq_alloc_tag_set(set);
 if (ret)
  return ERR_PTR(ret);

 return set;
}
