
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int thread_call_param_t ;
typedef int thread_call_func_t ;


 int thread_call_enter_delayed_internal (int *,int ,int ,int ,int ,int ,int ) ;

void
thread_call_func_delayed(
  thread_call_func_t func,
  thread_call_param_t param,
  uint64_t deadline)
{
 (void)thread_call_enter_delayed_internal(((void*)0), func, param, 0, deadline, 0, 0);
}
