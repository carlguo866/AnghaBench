
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kfd_dev {TYPE_1__* device_info; } ;
struct TYPE_4__ {int (* initialize ) (struct device_queue_manager*) ;void* get_wave_state; int restore_process_queues; int evict_process_queues; int process_termination; void* set_trap_handler; void* set_cache_memory_policy; void* uninitialize; void* unregister_process; void* register_process; void* update_queue; int destroy_queue; int create_queue; int stop; int start; int destroy_kernel_queue; int create_kernel_queue; } ;
struct device_queue_manager {int sched_policy; TYPE_2__ ops; int asic_ops; struct kfd_dev* dev; } ;
struct TYPE_3__ {int asic_family; } ;
 int GFP_KERNEL ;



 int WARN (int,char*,int) ;
 scalar_t__ allocate_hiq_sdma_mqd (struct device_queue_manager*) ;
 int create_kernel_queue_cpsch ;
 int create_queue_cpsch ;
 int create_queue_nocpsch ;
 int destroy_kernel_queue_cpsch ;
 int destroy_queue_cpsch ;
 int destroy_queue_nocpsch ;
 int device_queue_manager_init_cik (int *) ;
 int device_queue_manager_init_cik_hawaii (int *) ;
 int device_queue_manager_init_v10_navi10 (int *) ;
 int device_queue_manager_init_v9 (int *) ;
 int device_queue_manager_init_vi (int *) ;
 int device_queue_manager_init_vi_tonga (int *) ;
 int evict_process_queues_cpsch ;
 int evict_process_queues_nocpsch ;
 void* get_wave_state ;
 scalar_t__ init_mqd_managers (struct device_queue_manager*) ;
 int initialize_cpsch (struct device_queue_manager*) ;
 int initialize_nocpsch (struct device_queue_manager*) ;
 int kfree (struct device_queue_manager*) ;
 struct device_queue_manager* kzalloc (int,int ) ;
 int pr_debug (char*) ;
 int pr_err (char*,...) ;
 int process_termination_cpsch ;
 int process_termination_nocpsch ;
 void* register_process ;
 int restore_process_queues_cpsch ;
 int restore_process_queues_nocpsch ;
 int sched_policy ;
 void* set_cache_memory_policy ;
 void* set_trap_handler ;
 int start_cpsch ;
 int start_nocpsch ;
 int stop_cpsch ;
 int stop_nocpsch ;
 int stub1 (struct device_queue_manager*) ;
 void* uninitialize ;
 void* unregister_process ;
 void* update_queue ;

struct device_queue_manager *device_queue_manager_init(struct kfd_dev *dev)
{
 struct device_queue_manager *dqm;

 pr_debug("Loading device queue manager\n");

 dqm = kzalloc(sizeof(*dqm), GFP_KERNEL);
 if (!dqm)
  return ((void*)0);

 switch (dev->device_info->asic_family) {

 case 142:





 case 135:
  dqm->sched_policy = 128;
  break;
 default:
  dqm->sched_policy = sched_policy;
  break;
 }

 dqm->dev = dev;
 switch (dqm->sched_policy) {
 case 130:
 case 129:

  dqm->ops.create_queue = create_queue_cpsch;
  dqm->ops.initialize = initialize_cpsch;
  dqm->ops.start = start_cpsch;
  dqm->ops.stop = stop_cpsch;
  dqm->ops.destroy_queue = destroy_queue_cpsch;
  dqm->ops.update_queue = update_queue;
  dqm->ops.register_process = register_process;
  dqm->ops.unregister_process = unregister_process;
  dqm->ops.uninitialize = uninitialize;
  dqm->ops.create_kernel_queue = create_kernel_queue_cpsch;
  dqm->ops.destroy_kernel_queue = destroy_kernel_queue_cpsch;
  dqm->ops.set_cache_memory_policy = set_cache_memory_policy;
  dqm->ops.set_trap_handler = set_trap_handler;
  dqm->ops.process_termination = process_termination_cpsch;
  dqm->ops.evict_process_queues = evict_process_queues_cpsch;
  dqm->ops.restore_process_queues = restore_process_queues_cpsch;
  dqm->ops.get_wave_state = get_wave_state;
  break;
 case 128:

  dqm->ops.start = start_nocpsch;
  dqm->ops.stop = stop_nocpsch;
  dqm->ops.create_queue = create_queue_nocpsch;
  dqm->ops.destroy_queue = destroy_queue_nocpsch;
  dqm->ops.update_queue = update_queue;
  dqm->ops.register_process = register_process;
  dqm->ops.unregister_process = unregister_process;
  dqm->ops.initialize = initialize_nocpsch;
  dqm->ops.uninitialize = uninitialize;
  dqm->ops.set_cache_memory_policy = set_cache_memory_policy;
  dqm->ops.set_trap_handler = set_trap_handler;
  dqm->ops.process_termination = process_termination_nocpsch;
  dqm->ops.evict_process_queues = evict_process_queues_nocpsch;
  dqm->ops.restore_process_queues =
   restore_process_queues_nocpsch;
  dqm->ops.get_wave_state = get_wave_state;
  break;
 default:
  pr_err("Invalid scheduling policy %d\n", dqm->sched_policy);
  goto out_free;
 }

 switch (dev->device_info->asic_family) {
 case 144:
  device_queue_manager_init_vi(&dqm->asic_ops);
  break;

 case 141:
  device_queue_manager_init_cik(&dqm->asic_ops);
  break;

 case 142:
  device_queue_manager_init_cik_hawaii(&dqm->asic_ops);
  break;

 case 135:
 case 143:
 case 139:
 case 138:
 case 137:
 case 131:
  device_queue_manager_init_vi_tonga(&dqm->asic_ops);
  break;

 case 134:
 case 133:
 case 132:
 case 136:
 case 145:
  device_queue_manager_init_v9(&dqm->asic_ops);
  break;
 case 140:
  device_queue_manager_init_v10_navi10(&dqm->asic_ops);
  break;
 default:
  WARN(1, "Unexpected ASIC family %u",
       dev->device_info->asic_family);
  goto out_free;
 }

 if (init_mqd_managers(dqm))
  goto out_free;

 if (allocate_hiq_sdma_mqd(dqm)) {
  pr_err("Failed to allocate hiq sdma mqd trunk buffer\n");
  goto out_free;
 }

 if (!dqm->ops.initialize(dqm))
  return dqm;

out_free:
 kfree(dqm);
 return ((void*)0);
}
