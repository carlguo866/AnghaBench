
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_4__ {int pfc_cpus; int pfc_invalid_global; } ;
typedef TYPE_1__ pmap_flush_context ;
typedef int cpumask_t ;
typedef int boolean_t ;
struct TYPE_5__ {scalar_t__ cpu_tlb_invalid; void* cpu_tlb_invalid_local; void* cpu_tlb_invalid_global; } ;


 int ASYNC ;
 scalar_t__ CPU_CR3_IS_ACTIVE (unsigned int) ;
 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 scalar_t__ FALSE ;
 scalar_t__ LockTimeOut ;
 int MP_TLB_FLUSH ;
 long NMIPI_acks ;
 int NMIPI_panic (int,int ) ;
 int PMAP_CODE (int ) ;
 int PMAP_TRACE_CONSTANT (int,int *,int,...) ;
 int PMAP__FLUSH_DELAYED_TLBS ;
 int PMAP__FLUSH_TLBS_TO ;
 scalar_t__ TLBTimeOut ;
 int TLB_FLUSH_TIMEOUT ;
 void* TRUE ;
 TYPE_3__* cpu_datap (unsigned int) ;
 int cpu_is_running (unsigned int) ;
 unsigned int cpu_number () ;
 int cpu_pause () ;
 int i386_signal_cpu (unsigned int,int ,int ) ;
 scalar_t__ mach_absolute_time () ;
 scalar_t__ machine_timeout_suspended () ;
 int mfence () ;
 int mp_disable_preemption () ;
 int mp_enable_preemption () ;
 int panic (char*,int,long,long,scalar_t__) ;
 int process_pmap_updates () ;
 unsigned int real_ncpus ;

void
pmap_flush(
 pmap_flush_context *pfc)
{
 unsigned int my_cpu;
 unsigned int cpu;
 cpumask_t cpu_bit;
 cpumask_t cpus_to_respond = 0;
 cpumask_t cpus_to_signal = 0;
 cpumask_t cpus_signaled = 0;
 boolean_t flush_self = FALSE;
 uint64_t deadline;

 mp_disable_preemption();

 my_cpu = cpu_number();
 cpus_to_signal = pfc->pfc_cpus;

 PMAP_TRACE_CONSTANT(PMAP_CODE(PMAP__FLUSH_DELAYED_TLBS) | DBG_FUNC_START,
                     ((void*)0), cpus_to_signal);

 for (cpu = 0, cpu_bit = 1; cpu < real_ncpus && cpus_to_signal; cpu++, cpu_bit <<= 1) {

  if (cpus_to_signal & cpu_bit) {

   cpus_to_signal &= ~cpu_bit;

   if (!cpu_is_running(cpu))
    continue;

   if (pfc->pfc_invalid_global & cpu_bit)
    cpu_datap(cpu)->cpu_tlb_invalid_global = TRUE;
   else
    cpu_datap(cpu)->cpu_tlb_invalid_local = TRUE;
   mfence();

   if (cpu == my_cpu) {
    flush_self = TRUE;
    continue;
   }
   if (CPU_CR3_IS_ACTIVE(cpu)) {
    cpus_to_respond |= cpu_bit;
    i386_signal_cpu(cpu, MP_TLB_FLUSH, ASYNC);
   }
  }
 }
 cpus_signaled = cpus_to_respond;





 if (flush_self && cpu_datap(my_cpu)->cpu_tlb_invalid != FALSE)
  process_pmap_updates();

 if (cpus_to_respond) {

  deadline = mach_absolute_time() +
    (TLBTimeOut ? TLBTimeOut : LockTimeOut);
  boolean_t is_timeout_traced = FALSE;




  while (cpus_to_respond != 0) {
   long orig_acks = 0;

   for (cpu = 0, cpu_bit = 1; cpu < real_ncpus; cpu++, cpu_bit <<= 1) {



    if ((cpus_to_respond & cpu_bit) != 0) {
     if (!cpu_is_running(cpu) ||
         cpu_datap(cpu)->cpu_tlb_invalid == FALSE ||
         !CPU_CR3_IS_ACTIVE(cpu)) {
      cpus_to_respond &= ~cpu_bit;
     }
     cpu_pause();
    }
    if (cpus_to_respond == 0)
     break;
   }
   if (cpus_to_respond && (mach_absolute_time() > deadline)) {
    if (machine_timeout_suspended())
     continue;
    if (TLBTimeOut == 0) {
     if (is_timeout_traced)
      continue;

     PMAP_TRACE_CONSTANT(PMAP_CODE(PMAP__FLUSH_TLBS_TO),
                         ((void*)0), cpus_to_signal, cpus_to_respond);

     is_timeout_traced = TRUE;
     continue;
    }
    orig_acks = NMIPI_acks;
    NMIPI_panic(cpus_to_respond, TLB_FLUSH_TIMEOUT);
    panic("Uninterruptible processor(s): CPU bitmap: 0x%llx, NMIPI acks: 0x%lx, now: 0x%lx, deadline: %llu",
          cpus_to_respond, orig_acks, NMIPI_acks, deadline);
   }
  }
 }

 PMAP_TRACE_CONSTANT(PMAP_CODE(PMAP__FLUSH_DELAYED_TLBS) | DBG_FUNC_END,
                     ((void*)0), cpus_signaled, flush_self);

 mp_enable_preemption();
}
