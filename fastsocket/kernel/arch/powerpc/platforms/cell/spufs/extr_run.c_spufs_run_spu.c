
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int libassist; } ;
struct spu_context {int event_return; int run_mutex; TYPE_1__ stats; int sched_flags; struct spu* spu; int state_mutex; int stop_wq; } ;
struct spu {int dummy; } ;


 long ERESTARTSYS ;
 int SIGTRAP ;
 int SPU_SCHED_NOTIFY_ACTIVE ;
 int SPU_STATUS_SINGLE_STEP ;
 int SPU_STATUS_STOPPED_BY_HALT ;
 int SPU_STATUS_STOPPED_BY_STOP ;
 int SPU_STOP_STATUS_SHIFT ;
 int SPU_UTIL_SYSTEM ;
 int current ;
 int force_sig (int ,int ) ;
 int mutex_lock (int *) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ signal_pending (int ) ;
 int spu_acquire (struct spu_context*) ;
 int spu_disable_spu (struct spu_context*) ;
 int spu_enable_spu (struct spu_context*) ;
 int spu_process_callback (struct spu_context*) ;
 int spu_release (struct spu_context*) ;
 int spu_run_fini (struct spu_context*,int*,int*) ;
 int spu_run_init (struct spu_context*,int*) ;
 int spu_stopped (struct spu_context*,int*) ;
 int spu_switch_notify (struct spu*,struct spu_context*) ;
 int spu_update_sched_info (struct spu_context*) ;
 int spu_yield (struct spu_context*) ;
 int spuctx_switch_state (struct spu_context*,int ) ;
 int spufs_handle_class0 (struct spu_context*) ;
 int spufs_handle_class1 (struct spu_context*) ;
 int spufs_wait (int ,int ) ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

long spufs_run_spu(struct spu_context *ctx, u32 *npc, u32 *event)
{
 int ret;
 struct spu *spu;
 u32 status;

 if (mutex_lock_interruptible(&ctx->run_mutex))
  return -ERESTARTSYS;

 ctx->event_return = 0;

 ret = spu_acquire(ctx);
 if (ret)
  goto out_unlock;

 spu_enable_spu(ctx);

 spu_update_sched_info(ctx);

 ret = spu_run_init(ctx, npc);
 if (ret) {
  spu_release(ctx);
  goto out;
 }

 do {
  ret = spufs_wait(ctx->stop_wq, spu_stopped(ctx, &status));
  if (unlikely(ret)) {





   mutex_lock(&ctx->state_mutex);
   break;
  }
  spu = ctx->spu;
  if (unlikely(test_and_clear_bit(SPU_SCHED_NOTIFY_ACTIVE,
      &ctx->sched_flags))) {
   if (!(status & SPU_STATUS_STOPPED_BY_STOP)) {
    spu_switch_notify(spu, ctx);
    continue;
   }
  }

  spuctx_switch_state(ctx, SPU_UTIL_SYSTEM);

  if ((status & SPU_STATUS_STOPPED_BY_STOP) &&
      (status >> SPU_STOP_STATUS_SHIFT == 0x2104)) {
   ret = spu_process_callback(ctx);
   if (ret)
    break;
   status &= ~SPU_STATUS_STOPPED_BY_STOP;
  }
  ret = spufs_handle_class1(ctx);
  if (ret)
   break;

  ret = spufs_handle_class0(ctx);
  if (ret)
   break;

  if (signal_pending(current))
   ret = -ERESTARTSYS;
 } while (!ret && !(status & (SPU_STATUS_STOPPED_BY_STOP |
          SPU_STATUS_STOPPED_BY_HALT |
           SPU_STATUS_SINGLE_STEP)));

 spu_disable_spu(ctx);
 ret = spu_run_fini(ctx, npc, &status);
 spu_yield(ctx);

 if ((status & SPU_STATUS_STOPPED_BY_STOP) &&
     (((status >> SPU_STOP_STATUS_SHIFT) & 0x3f00) == 0x2100))
  ctx->stats.libassist++;

 if ((ret == 0) ||
     ((ret == -ERESTARTSYS) &&
      ((status & SPU_STATUS_STOPPED_BY_HALT) ||
       (status & SPU_STATUS_SINGLE_STEP) ||
       ((status & SPU_STATUS_STOPPED_BY_STOP) &&
        (status >> SPU_STOP_STATUS_SHIFT != 0x2104)))))
  ret = status;





 if (unlikely(status & SPU_STATUS_SINGLE_STEP))
  ret = -ERESTARTSYS;

 else if (unlikely((status & SPU_STATUS_STOPPED_BY_STOP)
     && (status >> SPU_STOP_STATUS_SHIFT) == 0x3fff)) {
  force_sig(SIGTRAP, current);
  ret = -ERESTARTSYS;
 }

out:
 *event = ctx->event_return;
out_unlock:
 mutex_unlock(&ctx->run_mutex);
 return ret;
}
