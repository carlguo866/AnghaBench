
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct timer_list {void (* function ) (unsigned long) ;unsigned long data; scalar_t__ expires; } ;
struct xpc_partition_sn2 {int * local_GPs; int local_GPs_base; int * remote_GPs; int remote_GPs_base; int * local_openclose_args; int local_openclose_args_base; int * local_chctl_amo_va; struct timer_list dropped_notify_IRQ_timer; int notify_IRQ_owner; int * remote_chctl_amo_va; scalar_t__ notify_IRQ_phys_cpuid; scalar_t__ notify_IRQ_nasid; scalar_t__ remote_openclose_args_pa; scalar_t__ remote_GPs_pa; } ;
struct TYPE_5__ {struct xpc_partition_sn2 sn2; } ;
struct xpc_partition {int nchannels; TYPE_3__* channels; TYPE_1__ sn; } ;
struct xpc_channel_sn2 {int msg_to_pull_mutex; int * local_openclose_args; int * local_GP; } ;
typedef enum xp_retval { ____Placeholder_xp_retval } xp_retval ;
struct TYPE_8__ {int nchannels; int magic; int notify_IRQ_phys_cpuid; int notify_IRQ_nasid; void* chctl_amo_pa; void* openclose_args_pa; void* GPs_pa; } ;
struct TYPE_6__ {struct xpc_channel_sn2 sn2; } ;
struct TYPE_7__ {TYPE_2__ sn; } ;


 int GFP_KERNEL ;
 int IRQF_SHARED ;
 int SGI_XPC_NOTIFY ;
 scalar_t__ XPC_DROPPED_NOTIFY_IRQ_WAIT_INTERVAL ;
 int XPC_GP_SIZE ;
 int XPC_OPENCLOSE_ARGS_SIZE ;
 short XPC_PARTID (struct xpc_partition*) ;
 int XPC_VP_MAGIC1_SN2 ;
 int add_timer (struct timer_list*) ;
 int cpu_physical_id (int) ;
 int cpuid_to_nasid (int) ;
 int dev_err (int ,char*,...) ;
 int init_timer (struct timer_list*) ;
 scalar_t__ jiffies ;
 int kfree (int ) ;
 int mutex_init (int *) ;
 int raw_smp_processor_id () ;
 int request_irq (int ,int ,int ,int ,void*) ;
 int sprintf (int ,char*,short) ;
 int xpLackOfResources ;
 int xpNoMemory ;
 int xpSuccess ;
 void* xp_pa (int *) ;
 int xpc_chan ;
 scalar_t__ xpc_check_for_dropped_notify_IRQ_sn2 ;
 int xpc_handle_notify_IRQ_sn2 ;
 int * xpc_init_IRQ_amo_sn2 (short) ;
 void* xpc_kzalloc_cacheline_aligned (int ,int ,int *) ;
 TYPE_4__* xpc_vars_part_sn2 ;

__attribute__((used)) static enum xp_retval
xpc_setup_ch_structures_sn2(struct xpc_partition *part)
{
 struct xpc_partition_sn2 *part_sn2 = &part->sn.sn2;
 struct xpc_channel_sn2 *ch_sn2;
 enum xp_retval retval;
 int ret;
 int cpuid;
 int ch_number;
 struct timer_list *timer;
 short partid = XPC_PARTID(part);



 part_sn2->local_GPs =
     xpc_kzalloc_cacheline_aligned(XPC_GP_SIZE, GFP_KERNEL,
       &part_sn2->local_GPs_base);
 if (part_sn2->local_GPs == ((void*)0)) {
  dev_err(xpc_chan, "can't get memory for local get/put "
   "values\n");
  return xpNoMemory;
 }

 part_sn2->remote_GPs =
     xpc_kzalloc_cacheline_aligned(XPC_GP_SIZE, GFP_KERNEL,
       &part_sn2->remote_GPs_base);
 if (part_sn2->remote_GPs == ((void*)0)) {
  dev_err(xpc_chan, "can't get memory for remote get/put "
   "values\n");
  retval = xpNoMemory;
  goto out_1;
 }

 part_sn2->remote_GPs_pa = 0;



 part_sn2->local_openclose_args =
     xpc_kzalloc_cacheline_aligned(XPC_OPENCLOSE_ARGS_SIZE,
       GFP_KERNEL, &part_sn2->
       local_openclose_args_base);
 if (part_sn2->local_openclose_args == ((void*)0)) {
  dev_err(xpc_chan, "can't get memory for local connect args\n");
  retval = xpNoMemory;
  goto out_2;
 }

 part_sn2->remote_openclose_args_pa = 0;

 part_sn2->local_chctl_amo_va = xpc_init_IRQ_amo_sn2(partid);

 part_sn2->notify_IRQ_nasid = 0;
 part_sn2->notify_IRQ_phys_cpuid = 0;
 part_sn2->remote_chctl_amo_va = ((void*)0);

 sprintf(part_sn2->notify_IRQ_owner, "xpc%02d", partid);
 ret = request_irq(SGI_XPC_NOTIFY, xpc_handle_notify_IRQ_sn2,
     IRQF_SHARED, part_sn2->notify_IRQ_owner,
     (void *)(u64)partid);
 if (ret != 0) {
  dev_err(xpc_chan, "can't register NOTIFY IRQ handler, "
   "errno=%d\n", -ret);
  retval = xpLackOfResources;
  goto out_3;
 }


 timer = &part_sn2->dropped_notify_IRQ_timer;
 init_timer(timer);
 timer->function =
     (void (*)(unsigned long))xpc_check_for_dropped_notify_IRQ_sn2;
 timer->data = (unsigned long)part;
 timer->expires = jiffies + XPC_DROPPED_NOTIFY_IRQ_WAIT_INTERVAL;
 add_timer(timer);

 for (ch_number = 0; ch_number < part->nchannels; ch_number++) {
  ch_sn2 = &part->channels[ch_number].sn.sn2;

  ch_sn2->local_GP = &part_sn2->local_GPs[ch_number];
  ch_sn2->local_openclose_args =
      &part_sn2->local_openclose_args[ch_number];

  mutex_init(&ch_sn2->msg_to_pull_mutex);
 }
 xpc_vars_part_sn2[partid].GPs_pa = xp_pa(part_sn2->local_GPs);
 xpc_vars_part_sn2[partid].openclose_args_pa =
     xp_pa(part_sn2->local_openclose_args);
 xpc_vars_part_sn2[partid].chctl_amo_pa =
     xp_pa(part_sn2->local_chctl_amo_va);
 cpuid = raw_smp_processor_id();
 xpc_vars_part_sn2[partid].notify_IRQ_nasid = cpuid_to_nasid(cpuid);
 xpc_vars_part_sn2[partid].notify_IRQ_phys_cpuid =
     cpu_physical_id(cpuid);
 xpc_vars_part_sn2[partid].nchannels = part->nchannels;
 xpc_vars_part_sn2[partid].magic = XPC_VP_MAGIC1_SN2;

 return xpSuccess;


out_3:
 kfree(part_sn2->local_openclose_args_base);
 part_sn2->local_openclose_args = ((void*)0);
out_2:
 kfree(part_sn2->remote_GPs_base);
 part_sn2->remote_GPs = ((void*)0);
out_1:
 kfree(part_sn2->local_GPs_base);
 part_sn2->local_GPs = ((void*)0);
 return retval;
}
