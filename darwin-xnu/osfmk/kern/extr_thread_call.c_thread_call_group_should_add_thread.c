
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* thread_call_group_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_4__ {scalar_t__ active_count; scalar_t__ blocked_count; scalar_t__ idle_count; scalar_t__ pending_count; int target_thread_count; int tcg_name; } ;


 scalar_t__ FALSE ;
 int THREAD_CALL_ADD_RATIO ;
 scalar_t__ THREAD_CALL_GROUP_MAX_THREADS ;
 scalar_t__ THREAD_CALL_MACH_FACTOR_CAP ;
 scalar_t__ TRUE ;
 scalar_t__ group_isparallel (TYPE_1__*) ;
 int panic (char*,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ sched_mach_factor ;

__attribute__((used)) static boolean_t
thread_call_group_should_add_thread(thread_call_group_t group)
{
 if ((group->active_count + group->blocked_count + group->idle_count) >= THREAD_CALL_GROUP_MAX_THREADS) {
  panic("thread_call group '%s' reached max thread cap (%d): active: %d, blocked: %d, idle: %d",
        group->tcg_name, THREAD_CALL_GROUP_MAX_THREADS,
        group->active_count, group->blocked_count, group->idle_count);
 }

 if (group_isparallel(group) == FALSE) {
  if (group->pending_count > 0 && group->active_count == 0) {
   return TRUE;
  }

  return FALSE;
 }

 if (group->pending_count > 0) {
  if (group->idle_count > 0) {
   return FALSE;
  }

  uint32_t thread_count = group->active_count;
  if ((thread_count == 0) ||
   (thread_count < group->target_thread_count) ||
   ((group->pending_count > THREAD_CALL_ADD_RATIO * thread_count) &&
    (sched_mach_factor < THREAD_CALL_MACH_FACTOR_CAP))) {
   return TRUE;
  }
 }

 return FALSE;
}
