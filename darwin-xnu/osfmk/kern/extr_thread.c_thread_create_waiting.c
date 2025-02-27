
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef int thread_continue_t ;
typedef int task_t ;
typedef int kern_return_t ;
typedef int event_t ;


 int TH_OPTION_NONE ;
 int kThreadWaitNone ;
 int thread_create_waiting_internal (int ,int ,int ,int ,int ,int *) ;

kern_return_t
thread_create_waiting(
 task_t task,
 thread_continue_t continuation,
 event_t event,
 thread_t *new_thread)
{
 return thread_create_waiting_internal(task, continuation, event,
   kThreadWaitNone, TH_OPTION_NONE, new_thread);
}
