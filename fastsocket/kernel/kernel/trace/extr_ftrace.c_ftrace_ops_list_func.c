
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftrace_ops {struct ftrace_ops* next; int (* func ) (unsigned long,unsigned long) ;} ;


 struct ftrace_ops ftrace_list_end ;
 struct ftrace_ops* ftrace_ops_list ;
 scalar_t__ ftrace_ops_test (struct ftrace_ops*,unsigned long) ;
 int preempt_disable_notrace () ;
 int preempt_enable_notrace () ;
 int read_barrier_depends () ;
 int stub1 (unsigned long,unsigned long) ;

__attribute__((used)) static void
ftrace_ops_list_func(unsigned long ip, unsigned long parent_ip)
{
 struct ftrace_ops *op;





 preempt_disable_notrace();
 op = ftrace_ops_list;
 read_barrier_depends();
 while (op != &ftrace_list_end) {
  if (ftrace_ops_test(op, ip))
   op->func(ip, parent_ip);
  op = op->next;
  read_barrier_depends();
 };
 preempt_enable_notrace();
}
