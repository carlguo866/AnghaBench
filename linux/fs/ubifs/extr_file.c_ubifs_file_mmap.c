
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int * vm_ops; } ;
struct file {int dummy; } ;


 int CONFIG_UBIFS_ATIME_SUPPORT ;
 scalar_t__ IS_ENABLED (int ) ;
 int file_accessed (struct file*) ;
 int generic_file_mmap (struct file*,struct vm_area_struct*) ;
 int ubifs_file_vm_ops ;

__attribute__((used)) static int ubifs_file_mmap(struct file *file, struct vm_area_struct *vma)
{
 int err;

 err = generic_file_mmap(file, vma);
 if (err)
  return err;
 vma->vm_ops = &ubifs_file_vm_ops;

 if (IS_ENABLED(CONFIG_UBIFS_ATIME_SUPPORT))
  file_accessed(file);

 return 0;
}
