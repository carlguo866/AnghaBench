
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct rdtgroup {int dummy; } ;
struct kernfs_open_file {int dummy; } ;
typedef scalar_t__ pid_t ;


 int ESRCH ;
 int __rdtgroup_move_task (struct task_struct*,struct rdtgroup*) ;
 struct task_struct* current ;
 struct task_struct* find_task_by_vpid (scalar_t__) ;
 int get_task_struct (struct task_struct*) ;
 int put_task_struct (struct task_struct*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int rdt_last_cmd_printf (char*,scalar_t__) ;
 int rdtgroup_task_write_permission (struct task_struct*,struct kernfs_open_file*) ;

__attribute__((used)) static int rdtgroup_move_task(pid_t pid, struct rdtgroup *rdtgrp,
         struct kernfs_open_file *of)
{
 struct task_struct *tsk;
 int ret;

 rcu_read_lock();
 if (pid) {
  tsk = find_task_by_vpid(pid);
  if (!tsk) {
   rcu_read_unlock();
   rdt_last_cmd_printf("No task %d\n", pid);
   return -ESRCH;
  }
 } else {
  tsk = current;
 }

 get_task_struct(tsk);
 rcu_read_unlock();

 ret = rdtgroup_task_write_permission(tsk, of);
 if (!ret)
  ret = __rdtgroup_move_task(tsk, rdtgrp);

 put_task_struct(tsk);
 return ret;
}
