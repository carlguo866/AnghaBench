
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {TYPE_1__* vm_file; } ;
struct task_struct {int dummy; } ;
struct mm_struct {int mmap_sem; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {scalar_t__ f_mode; } ;


 int EACCES ;
 int EINTR ;
 int ENOENT ;
 struct dentry* ERR_PTR (int ) ;
 int PTRACE_MODE_READ_FSCREDS ;
 scalar_t__ dname_to_vma_addr (struct dentry*,unsigned long*,unsigned long*) ;
 scalar_t__ down_read_killable (int *) ;
 struct vm_area_struct* find_exact_vma (struct mm_struct*,unsigned long,unsigned long) ;
 struct task_struct* get_proc_task (struct inode*) ;
 struct mm_struct* get_task_mm (struct task_struct*) ;
 int mmput (struct mm_struct*) ;
 struct dentry* proc_map_files_instantiate (struct dentry*,struct task_struct*,void*) ;
 int ptrace_may_access (struct task_struct*,int ) ;
 int put_task_struct (struct task_struct*) ;
 int up_read (int *) ;

__attribute__((used)) static struct dentry *proc_map_files_lookup(struct inode *dir,
  struct dentry *dentry, unsigned int flags)
{
 unsigned long vm_start, vm_end;
 struct vm_area_struct *vma;
 struct task_struct *task;
 struct dentry *result;
 struct mm_struct *mm;

 result = ERR_PTR(-ENOENT);
 task = get_proc_task(dir);
 if (!task)
  goto out;

 result = ERR_PTR(-EACCES);
 if (!ptrace_may_access(task, PTRACE_MODE_READ_FSCREDS))
  goto out_put_task;

 result = ERR_PTR(-ENOENT);
 if (dname_to_vma_addr(dentry, &vm_start, &vm_end))
  goto out_put_task;

 mm = get_task_mm(task);
 if (!mm)
  goto out_put_task;

 result = ERR_PTR(-EINTR);
 if (down_read_killable(&mm->mmap_sem))
  goto out_put_mm;

 result = ERR_PTR(-ENOENT);
 vma = find_exact_vma(mm, vm_start, vm_end);
 if (!vma)
  goto out_no_vma;

 if (vma->vm_file)
  result = proc_map_files_instantiate(dentry, task,
    (void *)(unsigned long)vma->vm_file->f_mode);

out_no_vma:
 up_read(&mm->mmap_sem);
out_put_mm:
 mmput(mm);
out_put_task:
 put_task_struct(task);
out:
 return result;
}
