
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int turnstile_update_flags_t ;
typedef scalar_t__ turnstile_inheritor_t ;
typedef TYPE_1__* thread_t ;
struct workqueue {int dummy; } ;
struct turnstile {int dummy; } ;
struct TYPE_3__ {scalar_t__ inheritor; int inheritor_flags; } ;


 scalar_t__ THREAD_NULL ;
 int TURNSTILE_INHERITOR_NEEDS_PRI_UPDATE ;
 scalar_t__ TURNSTILE_INHERITOR_NULL ;
 int TURNSTILE_INHERITOR_THREAD ;
 int TURNSTILE_INHERITOR_TURNSTILE ;
 int TURNSTILE_INHERITOR_WORKQ ;
 int TURNSTILE_UPDATE_FLAGS_NONE ;
 TYPE_1__* current_thread () ;
 int panic (char*) ;
 int thread_deallocate_safe (scalar_t__) ;
 int turnstile_deallocate_safe (struct turnstile*) ;
 int turnstile_update_inheritor_priority_chain (scalar_t__,int) ;
 int workq_deallocate_safe (struct workqueue*) ;

void
turnstile_cleanup(void)
{
 thread_t thread = current_thread();


 turnstile_inheritor_t old_inheritor = thread->inheritor;
 turnstile_update_flags_t inheritor_flags = thread->inheritor_flags;
 thread->inheritor = THREAD_NULL;
 thread->inheritor_flags = TURNSTILE_UPDATE_FLAGS_NONE;

 if (old_inheritor == TURNSTILE_INHERITOR_NULL) {

  return;
 }


 if (inheritor_flags & TURNSTILE_INHERITOR_NEEDS_PRI_UPDATE) {
  turnstile_update_inheritor_priority_chain(old_inheritor,
   inheritor_flags);
 }


 if (inheritor_flags & TURNSTILE_INHERITOR_THREAD) {
  thread_deallocate_safe(old_inheritor);
 } else if (inheritor_flags & TURNSTILE_INHERITOR_TURNSTILE) {
  turnstile_deallocate_safe((struct turnstile *)old_inheritor);
 } else if (inheritor_flags & TURNSTILE_INHERITOR_WORKQ) {
  workq_deallocate_safe((struct workqueue *)old_inheritor);
 } else {
  panic("Inheritor flags lost along the way");
 }
}
