
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef unsigned int uint32_t ;
struct TYPE_13__ {unsigned int nframes; void* flags; } ;
struct TYPE_15__ {void* flags; void* nframes; } ;
struct TYPE_14__ {int kpthi_runmode; } ;
struct kperf_sample {int kpcdata; int th_dispatch; TYPE_2__ ucallstack; int meminfo; int tk_snapshot; TYPE_6__ kcallstack; int th_snapshot; int th_scheduling; TYPE_4__ th_info; } ;
struct kperf_context {scalar_t__ cur_pid; int cur_task; TYPE_1__* cur_thread; } ;
typedef int kern_return_t ;
typedef int boolean_t ;
struct TYPE_12__ {int kperf_pet_gen; } ;
struct TYPE_11__ {unsigned int userdata; void* kcallstack_depth; } ;


 int BUF_DATA (int,unsigned int,int,...) ;
 int BUF_INFO (int ) ;
 void* CALLSTACK_VALID ;
 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int FALSE ;
 void* MAX_CALLSTACK_FRAMES ;
 int PERF_CS_UPEND ;
 int PERF_GEN_EVENT ;
 int PERF_TI_DISPPEND ;
 unsigned int SAMPLER_KSTACK ;
 unsigned int SAMPLER_MEMINFO ;
 unsigned int SAMPLER_PMC_CPU ;
 unsigned int SAMPLER_PMC_THREAD ;
 unsigned int SAMPLER_SYS_MEM ;
 unsigned int SAMPLER_TASK_MASK ;
 unsigned int SAMPLER_THREAD_MASK ;
 unsigned int SAMPLER_TH_DISPATCH ;
 unsigned int SAMPLER_TH_INFO ;
 unsigned int SAMPLER_TH_INSCYC ;
 unsigned int SAMPLER_TH_SCHEDULING ;
 unsigned int SAMPLER_TH_SNAPSHOT ;
 unsigned int SAMPLER_TK_INFO ;
 unsigned int SAMPLER_TK_SNAPSHOT ;
 unsigned int SAMPLER_USTACK ;
 int SAMPLE_CONTINUE ;
 unsigned int SAMPLE_FLAG_CONTINUATION ;
 unsigned int SAMPLE_FLAG_EMPTY_CALLSTACK ;
 unsigned int SAMPLE_FLAG_IDLE_THREADS ;
 unsigned int SAMPLE_FLAG_NON_INTERRUPT ;
 unsigned int SAMPLE_FLAG_ONLY_SYSTEM ;
 unsigned int SAMPLE_FLAG_PEND_USER ;
 unsigned int SAMPLE_FLAG_SYSTEM ;
 unsigned int SAMPLE_FLAG_TASK_ONLY ;
 unsigned int SAMPLE_FLAG_THREAD_ONLY ;
 unsigned int actionc ;
 TYPE_10__* actionv ;
 int assert (int) ;
 int kperf_backtrace_sample (TYPE_6__*,struct kperf_context*) ;
 int kperf_continuation_sample (TYPE_6__*,struct kperf_context*) ;
 int kperf_kcallstack_log (TYPE_6__*) ;
 int kperf_kcallstack_sample (TYPE_6__*,struct kperf_context*) ;
 int kperf_kpc_cpu_log (int *) ;
 int kperf_kpc_cpu_sample (int *,unsigned int) ;
 int kperf_kpc_thread_log (int *) ;
 int kperf_kpc_thread_sample (int *,unsigned int) ;
 int kperf_meminfo_log (int *) ;
 int kperf_meminfo_sample (int ,int *) ;
 int kperf_pet_gen ;
 int kperf_system_memory_log () ;
 int kperf_task_info_log (struct kperf_context*) ;
 int kperf_task_snapshot_log (int *) ;
 int kperf_task_snapshot_sample (int ,int *) ;
 int kperf_thread_dispatch_log (int *) ;
 int kperf_thread_dispatch_pend (struct kperf_context*) ;
 int kperf_thread_dispatch_sample (int *,struct kperf_context*) ;
 int kperf_thread_info_log (TYPE_4__*) ;
 int kperf_thread_info_sample (TYPE_4__*,struct kperf_context*) ;
 int kperf_thread_inscyc_log (struct kperf_context*) ;
 int kperf_thread_scheduling_log (int *) ;
 int kperf_thread_scheduling_sample (int *,struct kperf_context*) ;
 int kperf_thread_snapshot_log (int *) ;
 int kperf_thread_snapshot_sample (int *,struct kperf_context*) ;
 int kperf_ucallstack_log (TYPE_2__*) ;
 int kperf_ucallstack_pend (struct kperf_context*,unsigned int) ;
 int kperf_ucallstack_sample (TYPE_2__*,struct kperf_context*) ;
 int ml_set_interrupts_enabled (int ) ;

__attribute__((used)) static kern_return_t
kperf_sample_internal(struct kperf_sample *sbuf,
                      struct kperf_context *context,
                      unsigned sample_what, unsigned sample_flags,
                      unsigned actionid, uint32_t ucallstack_depth)
{
 int pended_ucallstack = 0;
 int pended_th_dispatch = 0;
 bool on_idle_thread = 0;
 uint32_t userdata = actionid;
 bool task_only = 0;




 if (sample_what == 0) {
  return SAMPLE_CONTINUE;
 }


 if (sample_flags & SAMPLE_FLAG_EMPTY_CALLSTACK) {
  sample_what &= ~(SAMPLER_KSTACK | SAMPLER_USTACK);
 }

 if (sample_flags & SAMPLE_FLAG_ONLY_SYSTEM) {
  sample_what &= SAMPLER_SYS_MEM;
 }

 assert((sample_flags & (SAMPLE_FLAG_THREAD_ONLY | SAMPLE_FLAG_TASK_ONLY))
   != (SAMPLE_FLAG_THREAD_ONLY | SAMPLE_FLAG_TASK_ONLY));
 if (sample_flags & SAMPLE_FLAG_THREAD_ONLY) {
  sample_what &= SAMPLER_THREAD_MASK;
 }
 if (sample_flags & SAMPLE_FLAG_TASK_ONLY) {
  task_only = 1;
  sample_what &= SAMPLER_TASK_MASK;
 }

 if (!task_only) {
  context->cur_thread->kperf_pet_gen = kperf_pet_gen;
 }
 bool is_kernel = (context->cur_pid == 0);

 if (actionid && actionid <= actionc) {
  sbuf->kcallstack.nframes = actionv[actionid - 1].kcallstack_depth;
 } else {
  sbuf->kcallstack.nframes = MAX_CALLSTACK_FRAMES;
 }

 if (ucallstack_depth) {
  sbuf->ucallstack.nframes = ucallstack_depth;
 } else {
  sbuf->ucallstack.nframes = MAX_CALLSTACK_FRAMES;
 }

 sbuf->kcallstack.flags = CALLSTACK_VALID;
 sbuf->ucallstack.flags = CALLSTACK_VALID;






 if (sample_what & SAMPLER_TH_INFO) {
  kperf_thread_info_sample(&sbuf->th_info, context);


  if (!(sample_flags & SAMPLE_FLAG_IDLE_THREADS)) {
   if (sbuf->th_info.kpthi_runmode & 0x40) {
    on_idle_thread = 1;
    goto log_sample;
   }
  }
 }

 if (sample_what & SAMPLER_TH_SNAPSHOT) {
  kperf_thread_snapshot_sample(&(sbuf->th_snapshot), context);
 }
 if (sample_what & SAMPLER_TH_SCHEDULING) {
  kperf_thread_scheduling_sample(&(sbuf->th_scheduling), context);
 }
 if (sample_what & SAMPLER_KSTACK) {
  if (sample_flags & SAMPLE_FLAG_CONTINUATION) {
   kperf_continuation_sample(&(sbuf->kcallstack), context);

  } else if (sample_flags & SAMPLE_FLAG_NON_INTERRUPT) {
   kperf_backtrace_sample(&(sbuf->kcallstack), context);
  } else {
   kperf_kcallstack_sample(&(sbuf->kcallstack), context);
  }
 }
 if (sample_what & SAMPLER_TK_SNAPSHOT) {
  kperf_task_snapshot_sample(context->cur_task, &(sbuf->tk_snapshot));
 }


 if (!is_kernel) {
  if (sample_what & SAMPLER_MEMINFO) {
   kperf_meminfo_sample(context->cur_task, &(sbuf->meminfo));
  }

  if (sample_flags & SAMPLE_FLAG_PEND_USER) {
   if (sample_what & SAMPLER_USTACK) {
    pended_ucallstack = kperf_ucallstack_pend(context, sbuf->ucallstack.nframes);
   }

   if (sample_what & SAMPLER_TH_DISPATCH) {
    pended_th_dispatch = kperf_thread_dispatch_pend(context);
   }
  } else {
   if (sample_what & SAMPLER_USTACK) {
    kperf_ucallstack_sample(&(sbuf->ucallstack), context);
   }

   if (sample_what & SAMPLER_TH_DISPATCH) {
    kperf_thread_dispatch_sample(&(sbuf->th_dispatch), context);
   }
  }
 }

 if (sample_what & SAMPLER_PMC_THREAD) {
  kperf_kpc_thread_sample(&(sbuf->kpcdata), sample_what);
 } else if (sample_what & SAMPLER_PMC_CPU) {
  kperf_kpc_cpu_sample(&(sbuf->kpcdata), sample_what);
 }

log_sample:

 if (actionid && (actionid <= actionc)) {
  userdata = actionv[actionid - 1].userdata;
 }


 if (sample_flags & SAMPLE_FLAG_PEND_USER &&
     !(sample_what & ~(SAMPLER_USTACK | SAMPLER_TH_DISPATCH)))
 {
  return SAMPLE_CONTINUE;
 }




 boolean_t enabled = ml_set_interrupts_enabled(FALSE);

 BUF_DATA(PERF_GEN_EVENT | DBG_FUNC_START, sample_what,
          actionid, userdata, sample_flags);

 if (sample_flags & SAMPLE_FLAG_SYSTEM) {
  if (sample_what & SAMPLER_SYS_MEM) {
   kperf_system_memory_log();
  }
 }
 if (on_idle_thread) {
  goto log_sample_end;
 }

 if (sample_what & SAMPLER_TH_INFO) {
  kperf_thread_info_log(&sbuf->th_info);
 }
 if (sample_what & SAMPLER_TH_SCHEDULING) {
  kperf_thread_scheduling_log(&(sbuf->th_scheduling));
 }
 if (sample_what & SAMPLER_TH_SNAPSHOT) {
  kperf_thread_snapshot_log(&(sbuf->th_snapshot));
 }
 if (sample_what & SAMPLER_KSTACK) {
  kperf_kcallstack_log(&sbuf->kcallstack);
 }
 if (sample_what & SAMPLER_TH_INSCYC) {
  kperf_thread_inscyc_log(context);
 }
 if (sample_what & SAMPLER_TK_SNAPSHOT) {
  kperf_task_snapshot_log(&(sbuf->tk_snapshot));
 }
 if (sample_what & SAMPLER_TK_INFO) {
  kperf_task_info_log(context);
 }


 if (!is_kernel) {

  if (sample_what & SAMPLER_MEMINFO) {
   kperf_meminfo_log(&(sbuf->meminfo));
  }

  if (sample_flags & SAMPLE_FLAG_PEND_USER) {
   if (pended_ucallstack) {
    BUF_INFO(PERF_CS_UPEND);
   }

   if (pended_th_dispatch) {
    BUF_INFO(PERF_TI_DISPPEND);
   }
  } else {
   if (sample_what & SAMPLER_USTACK) {
    kperf_ucallstack_log(&(sbuf->ucallstack));
   }

   if (sample_what & SAMPLER_TH_DISPATCH) {
    kperf_thread_dispatch_log(&(sbuf->th_dispatch));
   }
  }
 }

 if (sample_what & SAMPLER_PMC_THREAD) {
  kperf_kpc_thread_log(&(sbuf->kpcdata));
 } else if (sample_what & SAMPLER_PMC_CPU) {
  kperf_kpc_cpu_log(&(sbuf->kpcdata));
 }

log_sample_end:
 BUF_DATA(PERF_GEN_EVENT | DBG_FUNC_END, sample_what, on_idle_thread ? 1 : 0);


 ml_set_interrupts_enabled(enabled);

 return SAMPLE_CONTINUE;
}
