
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int mmap_sem; struct file* exe_file; } ;
struct file {int dummy; } ;


 int down_read (int *) ;
 int get_file (struct file*) ;
 int up_read (int *) ;

struct file *get_mm_exe_file(struct mm_struct *mm)
{
 struct file *exe_file;



 down_read(&mm->mmap_sem);
 exe_file = mm->exe_file;
 if (exe_file)
  get_file(exe_file);
 up_read(&mm->mmap_sem);
 return exe_file;
}
