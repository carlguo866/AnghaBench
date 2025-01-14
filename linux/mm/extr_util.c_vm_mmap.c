
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 unsigned long EINVAL ;
 unsigned long PAGE_ALIGN (unsigned long) ;
 unsigned long PAGE_SHIFT ;
 int offset_in_page (unsigned long) ;
 scalar_t__ unlikely (int) ;
 unsigned long vm_mmap_pgoff (struct file*,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ;

unsigned long vm_mmap(struct file *file, unsigned long addr,
 unsigned long len, unsigned long prot,
 unsigned long flag, unsigned long offset)
{
 if (unlikely(offset + PAGE_ALIGN(len) < offset))
  return -EINVAL;
 if (unlikely(offset_in_page(offset)))
  return -EINVAL;

 return vm_mmap_pgoff(file, addr, len, prot, flag, offset >> PAGE_SHIFT);
}
