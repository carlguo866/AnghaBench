
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int mm; } ;


 int WARN_ON (int ) ;

void release_thread(struct task_struct *dead_task)
{
 WARN_ON(dead_task->mm);
}
