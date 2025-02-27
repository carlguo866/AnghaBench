
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_end; } ;
struct videobuf_dma_contig_memory {unsigned long size; unsigned long dma_handle; } ;
struct videobuf_buffer {scalar_t__ size; int baddr; } ;
struct mm_struct {int mmap_sem; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 int EFAULT ;
 int EINVAL ;
 unsigned long PAGE_ALIGN (scalar_t__) ;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 TYPE_1__* current ;
 int down_read (int *) ;
 struct vm_area_struct* find_vma (struct mm_struct*,unsigned long) ;
 int follow_pfn (struct vm_area_struct*,unsigned long,unsigned long*) ;
 unsigned long untagged_addr (int ) ;
 int up_read (int *) ;

__attribute__((used)) static int videobuf_dma_contig_user_get(struct videobuf_dma_contig_memory *mem,
     struct videobuf_buffer *vb)
{
 unsigned long untagged_baddr = untagged_addr(vb->baddr);
 struct mm_struct *mm = current->mm;
 struct vm_area_struct *vma;
 unsigned long prev_pfn, this_pfn;
 unsigned long pages_done, user_address;
 unsigned int offset;
 int ret;

 offset = untagged_baddr & ~PAGE_MASK;
 mem->size = PAGE_ALIGN(vb->size + offset);
 ret = -EINVAL;

 down_read(&mm->mmap_sem);

 vma = find_vma(mm, untagged_baddr);
 if (!vma)
  goto out_up;

 if ((untagged_baddr + mem->size) > vma->vm_end)
  goto out_up;

 pages_done = 0;
 prev_pfn = 0;
 user_address = untagged_baddr;

 while (pages_done < (mem->size >> PAGE_SHIFT)) {
  ret = follow_pfn(vma, user_address, &this_pfn);
  if (ret)
   break;

  if (pages_done == 0)
   mem->dma_handle = (this_pfn << PAGE_SHIFT) + offset;
  else if (this_pfn != (prev_pfn + 1))
   ret = -EFAULT;

  if (ret)
   break;

  prev_pfn = this_pfn;
  user_address += PAGE_SIZE;
  pages_done++;
 }

out_up:
 up_read(&current->mm->mmap_sem);

 return ret;
}
