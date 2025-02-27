
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmf_ctrl_options {int mask; int subsysnqn; int duplicate_connect; int host_traddr; int * trsvcid; int traddr; int kato; scalar_t__ queue_size; scalar_t__ nr_poll_queues; scalar_t__ nr_write_queues; scalar_t__ nr_io_queues; } ;
struct nvme_ctrl {struct nvmf_ctrl_options* opts; int device; scalar_t__ queue_count; int reset_work; int kato; scalar_t__ sqsize; } ;
struct nvme_tcp_ctrl {struct nvme_tcp_ctrl* queues; struct nvme_ctrl ctrl; int list; int addr; int src_addr; int err_work; int connect_work; } ;
struct device {int dummy; } ;


 int AF_UNSPEC ;
 int EALREADY ;
 int EINTR ;
 int EIO ;
 int ENOMEM ;
 struct nvme_ctrl* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int NVME_CTRL_CONNECTING ;
 int NVME_TCP_DISC_PORT ;
 int NVMF_OPT_HOST_TRADDR ;
 int NVMF_OPT_TRSVCID ;
 int WARN_ON_ONCE (int) ;
 int __stringify (int ) ;
 int dev_info (int ,char*,int ,int *) ;
 int inet_pton_with_scope (int *,int ,int ,int *,int *) ;
 int init_net ;
 struct nvme_tcp_ctrl* kcalloc (scalar_t__,int,int ) ;
 int kfree (struct nvme_tcp_ctrl*) ;
 int * kstrdup (int ,int ) ;
 struct nvme_tcp_ctrl* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvme_change_ctrl_state (struct nvme_ctrl*,int ) ;
 int nvme_get_ctrl (struct nvme_ctrl*) ;
 int nvme_init_ctrl (struct nvme_ctrl*,struct device*,int *,int ) ;
 int nvme_put_ctrl (struct nvme_ctrl*) ;
 int nvme_reset_ctrl_work ;
 int nvme_tcp_ctrl_list ;
 int nvme_tcp_ctrl_mutex ;
 int nvme_tcp_ctrl_ops ;
 int nvme_tcp_error_recovery_work ;
 scalar_t__ nvme_tcp_existing_controller (struct nvmf_ctrl_options*) ;
 int nvme_tcp_reconnect_ctrl_work ;
 int nvme_tcp_setup_ctrl (struct nvme_ctrl*,int) ;
 int nvme_uninit_ctrl (struct nvme_ctrl*) ;
 int pr_err (char*,int ,...) ;

__attribute__((used)) static struct nvme_ctrl *nvme_tcp_create_ctrl(struct device *dev,
  struct nvmf_ctrl_options *opts)
{
 struct nvme_tcp_ctrl *ctrl;
 int ret;

 ctrl = kzalloc(sizeof(*ctrl), GFP_KERNEL);
 if (!ctrl)
  return ERR_PTR(-ENOMEM);

 INIT_LIST_HEAD(&ctrl->list);
 ctrl->ctrl.opts = opts;
 ctrl->ctrl.queue_count = opts->nr_io_queues + opts->nr_write_queues +
    opts->nr_poll_queues + 1;
 ctrl->ctrl.sqsize = opts->queue_size - 1;
 ctrl->ctrl.kato = opts->kato;

 INIT_DELAYED_WORK(&ctrl->connect_work,
   nvme_tcp_reconnect_ctrl_work);
 INIT_WORK(&ctrl->err_work, nvme_tcp_error_recovery_work);
 INIT_WORK(&ctrl->ctrl.reset_work, nvme_reset_ctrl_work);

 if (!(opts->mask & NVMF_OPT_TRSVCID)) {
  opts->trsvcid =
   kstrdup(__stringify(NVME_TCP_DISC_PORT), GFP_KERNEL);
  if (!opts->trsvcid) {
   ret = -ENOMEM;
   goto out_free_ctrl;
  }
  opts->mask |= NVMF_OPT_TRSVCID;
 }

 ret = inet_pton_with_scope(&init_net, AF_UNSPEC,
   opts->traddr, opts->trsvcid, &ctrl->addr);
 if (ret) {
  pr_err("malformed address passed: %s:%s\n",
   opts->traddr, opts->trsvcid);
  goto out_free_ctrl;
 }

 if (opts->mask & NVMF_OPT_HOST_TRADDR) {
  ret = inet_pton_with_scope(&init_net, AF_UNSPEC,
   opts->host_traddr, ((void*)0), &ctrl->src_addr);
  if (ret) {
   pr_err("malformed src address passed: %s\n",
          opts->host_traddr);
   goto out_free_ctrl;
  }
 }

 if (!opts->duplicate_connect && nvme_tcp_existing_controller(opts)) {
  ret = -EALREADY;
  goto out_free_ctrl;
 }

 ctrl->queues = kcalloc(ctrl->ctrl.queue_count, sizeof(*ctrl->queues),
    GFP_KERNEL);
 if (!ctrl->queues) {
  ret = -ENOMEM;
  goto out_free_ctrl;
 }

 ret = nvme_init_ctrl(&ctrl->ctrl, dev, &nvme_tcp_ctrl_ops, 0);
 if (ret)
  goto out_kfree_queues;

 if (!nvme_change_ctrl_state(&ctrl->ctrl, NVME_CTRL_CONNECTING)) {
  WARN_ON_ONCE(1);
  ret = -EINTR;
  goto out_uninit_ctrl;
 }

 ret = nvme_tcp_setup_ctrl(&ctrl->ctrl, 1);
 if (ret)
  goto out_uninit_ctrl;

 dev_info(ctrl->ctrl.device, "new ctrl: NQN \"%s\", addr %pISp\n",
  ctrl->ctrl.opts->subsysnqn, &ctrl->addr);

 nvme_get_ctrl(&ctrl->ctrl);

 mutex_lock(&nvme_tcp_ctrl_mutex);
 list_add_tail(&ctrl->list, &nvme_tcp_ctrl_list);
 mutex_unlock(&nvme_tcp_ctrl_mutex);

 return &ctrl->ctrl;

out_uninit_ctrl:
 nvme_uninit_ctrl(&ctrl->ctrl);
 nvme_put_ctrl(&ctrl->ctrl);
 if (ret > 0)
  ret = -EIO;
 return ERR_PTR(ret);
out_kfree_queues:
 kfree(ctrl->queues);
out_free_ctrl:
 kfree(ctrl);
 return ERR_PTR(ret);
}
