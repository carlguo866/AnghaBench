
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {int vm_flags; unsigned long vm_end; } ;
struct TYPE_3__ {int mm; } ;


 int BUG_ON (int) ;
 unsigned long DIV_ROUND_UP (unsigned long,unsigned long) ;
 int EFAULT ;
 int ENOMEM ;
 unsigned long PAGE_SIZE ;
 int VM_SHARED ;
 int VM_WRITE ;
 TYPE_1__* current ;
 struct vm_area_struct* find_vma (int ,unsigned long) ;
 int get_user_pages (TYPE_1__*,int ,unsigned long,int,int,int ,int *,int *) ;

int make_pages_present(unsigned long addr, unsigned long end)
{
 int ret, len, write;
 struct vm_area_struct * vma;

 vma = find_vma(current->mm, addr);
 if (!vma)
  return -ENOMEM;





 write = (vma->vm_flags & (VM_WRITE | VM_SHARED)) == VM_WRITE;
 BUG_ON(addr >= end);
 BUG_ON(end > vma->vm_end);
 len = DIV_ROUND_UP(end, PAGE_SIZE) - addr/PAGE_SIZE;
 ret = get_user_pages(current, current->mm, addr,
   len, write, 0, ((void*)0), ((void*)0));
 if (ret < 0)
  return ret;
 return ret == len ? 0 : -EFAULT;
}
