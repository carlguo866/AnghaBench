
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack_trace {int dummy; } ;


 int current ;
 int save_stack_trace_tsk (int ,struct stack_trace*) ;

void save_stack_trace(struct stack_trace *trace)
{
 save_stack_trace_tsk(current, trace);
}
