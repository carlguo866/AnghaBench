
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {struct perf_event_context** perf_event_ctxp; } ;
struct perf_event_context {int lock; int task_ctx_data; int task; int parent_ctx; } ;
struct perf_cpu_context {int task_ctx; } ;


 int EVENT_ALL ;
 int RCU_INIT_POINTER (struct perf_event_context*,struct perf_event_context*) ;
 int SINGLE_DEPTH_NESTING ;
 int WRITE_ONCE (int ,struct task_struct*) ;
 struct perf_cpu_context* __get_cpu_context (struct perf_event_context*) ;
 scalar_t__ context_equiv (struct perf_event_context*,struct perf_event_context*) ;
 scalar_t__ likely (int) ;
 int perf_event_sync_stat (struct perf_event_context*,struct perf_event_context*) ;
 int raw_spin_lock (int *) ;
 int raw_spin_lock_nested (int *,int ) ;
 int raw_spin_unlock (int *) ;
 struct perf_event_context* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int swap (int ,int ) ;
 int task_ctx_sched_out (struct perf_cpu_context*,struct perf_event_context*,int ) ;

__attribute__((used)) static void perf_event_context_sched_out(struct task_struct *task, int ctxn,
      struct task_struct *next)
{
 struct perf_event_context *ctx = task->perf_event_ctxp[ctxn];
 struct perf_event_context *next_ctx;
 struct perf_event_context *parent, *next_parent;
 struct perf_cpu_context *cpuctx;
 int do_switch = 1;

 if (likely(!ctx))
  return;

 cpuctx = __get_cpu_context(ctx);
 if (!cpuctx->task_ctx)
  return;

 rcu_read_lock();
 next_ctx = next->perf_event_ctxp[ctxn];
 if (!next_ctx)
  goto unlock;

 parent = rcu_dereference(ctx->parent_ctx);
 next_parent = rcu_dereference(next_ctx->parent_ctx);


 if (!parent && !next_parent)
  goto unlock;

 if (next_parent == ctx || next_ctx == parent || next_parent == parent) {
  raw_spin_lock(&ctx->lock);
  raw_spin_lock_nested(&next_ctx->lock, SINGLE_DEPTH_NESTING);
  if (context_equiv(ctx, next_ctx)) {
   WRITE_ONCE(ctx->task, next);
   WRITE_ONCE(next_ctx->task, task);

   swap(ctx->task_ctx_data, next_ctx->task_ctx_data);
   RCU_INIT_POINTER(task->perf_event_ctxp[ctxn], next_ctx);
   RCU_INIT_POINTER(next->perf_event_ctxp[ctxn], ctx);

   do_switch = 0;

   perf_event_sync_stat(ctx, next_ctx);
  }
  raw_spin_unlock(&next_ctx->lock);
  raw_spin_unlock(&ctx->lock);
 }
unlock:
 rcu_read_unlock();

 if (do_switch) {
  raw_spin_lock(&ctx->lock);
  task_ctx_sched_out(cpuctx, ctx, EVENT_ALL);
  raw_spin_unlock(&ctx->lock);
 }
}
