
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned int u32 ;
struct nvmf_ctrl_options {unsigned int nr_io_queues; } ;
struct TYPE_6__ {int queue_count; int device; scalar_t__ sqsize; struct nvmf_ctrl_options* opts; } ;
struct nvme_fc_ctrl {int tag_set; TYPE_3__ ctrl; TYPE_2__* lport; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int max_hw_queues; } ;


 int ENOSPC ;
 int blk_mq_update_nr_hw_queues (int *,unsigned int) ;
 int dev_info (int ,char*,unsigned int,...) ;
 unsigned int min (unsigned int,int ) ;
 int num_online_cpus () ;
 int nvme_fc_connect_io_queues (struct nvme_fc_ctrl*,scalar_t__) ;
 int nvme_fc_create_hw_io_queues (struct nvme_fc_ctrl*,scalar_t__) ;
 int nvme_fc_delete_hw_io_queues (struct nvme_fc_ctrl*) ;
 int nvme_fc_free_io_queues (struct nvme_fc_ctrl*) ;
 int nvme_set_queue_count (TYPE_3__*,unsigned int*) ;

__attribute__((used)) static int
nvme_fc_recreate_io_queues(struct nvme_fc_ctrl *ctrl)
{
 struct nvmf_ctrl_options *opts = ctrl->ctrl.opts;
 u32 prior_ioq_cnt = ctrl->ctrl.queue_count - 1;
 unsigned int nr_io_queues;
 int ret;

 nr_io_queues = min(min(opts->nr_io_queues, num_online_cpus()),
    ctrl->lport->ops->max_hw_queues);
 ret = nvme_set_queue_count(&ctrl->ctrl, &nr_io_queues);
 if (ret) {
  dev_info(ctrl->ctrl.device,
   "set_queue_count failed: %d\n", ret);
  return ret;
 }

 if (!nr_io_queues && prior_ioq_cnt) {
  dev_info(ctrl->ctrl.device,
   "Fail Reconnect: At least 1 io queue "
   "required (was %d)\n", prior_ioq_cnt);
  return -ENOSPC;
 }

 ctrl->ctrl.queue_count = nr_io_queues + 1;

 if (ctrl->ctrl.queue_count == 1)
  return 0;

 ret = nvme_fc_create_hw_io_queues(ctrl, ctrl->ctrl.sqsize + 1);
 if (ret)
  goto out_free_io_queues;

 ret = nvme_fc_connect_io_queues(ctrl, ctrl->ctrl.sqsize + 1);
 if (ret)
  goto out_delete_hw_queues;

 if (prior_ioq_cnt != nr_io_queues)
  dev_info(ctrl->ctrl.device,
   "reconnect: revising io queue count from %d to %d\n",
   prior_ioq_cnt, nr_io_queues);
 blk_mq_update_nr_hw_queues(&ctrl->tag_set, nr_io_queues);

 return 0;

out_delete_hw_queues:
 nvme_fc_delete_hw_io_queues(ctrl);
out_free_io_queues:
 nvme_fc_free_io_queues(ctrl);
 return ret;
}
