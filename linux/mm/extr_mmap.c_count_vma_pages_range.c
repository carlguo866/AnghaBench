
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_start; int vm_end; struct vm_area_struct* vm_next; } ;
struct mm_struct {int dummy; } ;


 unsigned long PAGE_SHIFT ;
 struct vm_area_struct* find_vma_intersection (struct mm_struct*,unsigned long,unsigned long) ;
 unsigned long max (unsigned long,unsigned long) ;
 unsigned long min (unsigned long,int ) ;

__attribute__((used)) static unsigned long count_vma_pages_range(struct mm_struct *mm,
  unsigned long addr, unsigned long end)
{
 unsigned long nr_pages = 0;
 struct vm_area_struct *vma;


 vma = find_vma_intersection(mm, addr, end);
 if (!vma)
  return 0;

 nr_pages = (min(end, vma->vm_end) -
  max(addr, vma->vm_start)) >> PAGE_SHIFT;


 for (vma = vma->vm_next; vma; vma = vma->vm_next) {
  unsigned long overlap_len;

  if (vma->vm_start > end)
   break;

  overlap_len = min(end, vma->vm_end) - vma->vm_start;
  nr_pages += overlap_len >> PAGE_SHIFT;
 }

 return nr_pages;
}
