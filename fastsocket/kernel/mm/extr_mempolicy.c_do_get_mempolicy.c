
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vm_area_struct {struct mempolicy* vm_policy; TYPE_1__* vm_ops; } ;
struct mm_struct {int mmap_sem; } ;
struct TYPE_7__ {int user_nodemask; } ;
struct mempolicy {int mode; int flags; TYPE_2__ w; } ;
typedef int nodemask_t ;
struct TYPE_8__ {int il_next; struct mm_struct* mm; struct mempolicy* mempolicy; } ;
struct TYPE_6__ {struct mempolicy* (* get_policy ) (struct vm_area_struct*,unsigned long) ;} ;


 long EFAULT ;
 long EINVAL ;
 int MPOL_DEFAULT ;
 unsigned long MPOL_F_ADDR ;
 unsigned long MPOL_F_MEMS_ALLOWED ;
 unsigned long MPOL_F_NODE ;
 int MPOL_INTERLEAVE ;
 int MPOL_MODE_FLAGS ;
 int cpuset_current_mems_allowed ;
 TYPE_3__* current ;
 struct mempolicy default_policy ;
 int down_read (int *) ;
 struct vm_area_struct* find_vma_intersection (struct mm_struct*,unsigned long,unsigned long) ;
 int get_policy_nodemask (struct mempolicy*,int *) ;
 int lookup_node (struct mm_struct*,unsigned long) ;
 int mpol_cond_put (struct mempolicy*) ;
 scalar_t__ mpol_store_user_nodemask (struct mempolicy*) ;
 struct mempolicy* stub1 (struct vm_area_struct*,unsigned long) ;
 int task_lock (TYPE_3__*) ;
 int task_unlock (TYPE_3__*) ;
 int up_read (int *) ;

__attribute__((used)) static long do_get_mempolicy(int *policy, nodemask_t *nmask,
        unsigned long addr, unsigned long flags)
{
 int err;
 struct mm_struct *mm = current->mm;
 struct vm_area_struct *vma = ((void*)0);
 struct mempolicy *pol = current->mempolicy;

 if (flags &
  ~(unsigned long)(MPOL_F_NODE|MPOL_F_ADDR|MPOL_F_MEMS_ALLOWED))
  return -EINVAL;

 if (flags & MPOL_F_MEMS_ALLOWED) {
  if (flags & (MPOL_F_NODE|MPOL_F_ADDR))
   return -EINVAL;
  *policy = 0;
  task_lock(current);
  *nmask = cpuset_current_mems_allowed;
  task_unlock(current);
  return 0;
 }

 if (flags & MPOL_F_ADDR) {





  down_read(&mm->mmap_sem);
  vma = find_vma_intersection(mm, addr, addr+1);
  if (!vma) {
   up_read(&mm->mmap_sem);
   return -EFAULT;
  }
  if (vma->vm_ops && vma->vm_ops->get_policy)
   pol = vma->vm_ops->get_policy(vma, addr);
  else
   pol = vma->vm_policy;
 } else if (addr)
  return -EINVAL;

 if (!pol)
  pol = &default_policy;

 if (flags & MPOL_F_NODE) {
  if (flags & MPOL_F_ADDR) {
   err = lookup_node(mm, addr);
   if (err < 0)
    goto out;
   *policy = err;
  } else if (pol == current->mempolicy &&
    pol->mode == MPOL_INTERLEAVE) {
   *policy = current->il_next;
  } else {
   err = -EINVAL;
   goto out;
  }
 } else {
  *policy = pol == &default_policy ? MPOL_DEFAULT :
      pol->mode;




  *policy |= (pol->flags & MPOL_MODE_FLAGS);
 }

 if (vma) {
  up_read(&current->mm->mmap_sem);
  vma = ((void*)0);
 }

 err = 0;
 if (nmask) {
  if (mpol_store_user_nodemask(pol)) {
   *nmask = pol->w.user_nodemask;
  } else {
   task_lock(current);
   get_policy_nodemask(pol, nmask);
   task_unlock(current);
  }
 }

 out:
 mpol_cond_put(pol);
 if (vma)
  up_read(&current->mm->mmap_sem);
 return err;
}
