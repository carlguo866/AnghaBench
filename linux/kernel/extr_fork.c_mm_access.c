
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {TYPE_1__* signal; } ;
struct mm_struct {int dummy; } ;
struct TYPE_4__ {struct mm_struct* mm; } ;
struct TYPE_3__ {int cred_guard_mutex; } ;


 int EACCES ;
 struct mm_struct* ERR_PTR (int) ;
 TYPE_2__* current ;
 struct mm_struct* get_task_mm (struct task_struct*) ;
 int mmput (struct mm_struct*) ;
 int mutex_lock_killable (int *) ;
 int mutex_unlock (int *) ;
 int ptrace_may_access (struct task_struct*,unsigned int) ;

struct mm_struct *mm_access(struct task_struct *task, unsigned int mode)
{
 struct mm_struct *mm;
 int err;

 err = mutex_lock_killable(&task->signal->cred_guard_mutex);
 if (err)
  return ERR_PTR(err);

 mm = get_task_mm(task);
 if (mm && mm != current->mm &&
   !ptrace_may_access(task, mode)) {
  mmput(mm);
  mm = ERR_PTR(-EACCES);
 }
 mutex_unlock(&task->signal->cred_guard_mutex);

 return mm;
}
