
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef TYPE_2__* thread_call_t ;
typedef int thread_call_group_t ;
typedef scalar_t__ thread_call_flavor_t ;
typedef int spl_t ;
typedef int event_t ;
typedef int boolean_t ;
struct TYPE_10__ {TYPE_2__* func; } ;
struct TYPE_11__ {scalar_t__ tc_finish_count; int tc_flags; scalar_t__ tc_refs; scalar_t__ tc_soft_deadline; scalar_t__ tc_submit_count; TYPE_1__ tc_call; scalar_t__ tc_deadline; } ;


 int FALSE ;
 scalar_t__ TCF_CONTINUOUS ;
 int THREAD_CALL_DELAYED ;
 int THREAD_CALL_ONCE ;
 int THREAD_CALL_RESCHEDULE ;
 int THREAD_CALL_RUNNING ;
 int THREAD_CALL_SIGNAL ;
 int THREAD_CALL_WAIT ;
 int TIMER_CALL_RATELIMITED ;
 int TRUE ;
 int _arm_delayed_call_timer (TYPE_2__*,int ,scalar_t__) ;
 int _delayed_call_enqueue (TYPE_2__*,int ,scalar_t__,scalar_t__) ;
 int _pending_call_enqueue (TYPE_2__*,int ) ;
 scalar_t__ absolutetime_to_continuoustime (scalar_t__) ;
 int assert (int) ;
 int disable_ints_and_lock () ;
 int enable_ints_and_unlock (int ) ;
 scalar_t__ mach_absolute_time () ;
 int panic (char*,TYPE_2__*) ;
 scalar_t__ thread_call_get_flavor (TYPE_2__*) ;
 int thread_call_lock_spin () ;
 int thread_call_unlock () ;
 int thread_call_zone ;
 int thread_wakeup (int ) ;
 int zfree (int ,TYPE_2__*) ;

__attribute__((used)) static boolean_t
thread_call_finish(thread_call_t call, thread_call_group_t group, spl_t *s)
{
 uint64_t time;
 uint32_t flags;
 boolean_t signal;
 boolean_t repend = FALSE;

 call->tc_finish_count++;
 flags = call->tc_flags;
 signal = ((THREAD_CALL_SIGNAL & flags) != 0);

    if (!signal) {

  if (call->tc_refs <= 0)
   panic("thread_call_finish: detected over-released thread call: %p", call);
  call->tc_refs--;
    }

 call->tc_flags &= ~(THREAD_CALL_RESCHEDULE | THREAD_CALL_RUNNING | THREAD_CALL_WAIT);

 if ((call->tc_refs != 0) && ((flags & THREAD_CALL_RESCHEDULE) != 0)) {
  assert(flags & THREAD_CALL_ONCE);
  thread_call_flavor_t flavor = thread_call_get_flavor(call);

  if (THREAD_CALL_DELAYED & flags) {
   time = mach_absolute_time();
   if (flavor == TCF_CONTINUOUS) {
    time = absolutetime_to_continuoustime(time);
   }
   if (call->tc_soft_deadline <= time) {
    call->tc_flags &= ~(THREAD_CALL_DELAYED | TIMER_CALL_RATELIMITED);
    call->tc_deadline = 0;
   }
  }
  if (call->tc_deadline) {
   _delayed_call_enqueue(call, group, call->tc_deadline, flavor);
   if (!signal) {
    _arm_delayed_call_timer(call, group, flavor);
   }
  } else if (signal) {
   call->tc_submit_count++;
   repend = TRUE;
  } else {
   _pending_call_enqueue(call, group);
  }
 }

 if (!signal && (call->tc_refs == 0)) {
  if ((flags & THREAD_CALL_WAIT) != 0) {
   panic("Someone waiting on a thread call that is scheduled for free: %p\n", call->tc_call.func);
  }

  assert(call->tc_finish_count == call->tc_submit_count);

  enable_ints_and_unlock(*s);

  zfree(thread_call_zone, call);

  *s = disable_ints_and_lock();
 }

 if ((flags & THREAD_CALL_WAIT) != 0) {





  thread_call_unlock();
  thread_wakeup((event_t)call);
  thread_call_lock_spin();

 }

 return (repend);
}
