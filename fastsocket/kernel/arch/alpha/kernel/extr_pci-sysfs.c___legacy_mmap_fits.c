
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_end; unsigned long vm_start; unsigned long vm_pgoff; } ;
struct pci_controller {int index; } ;
struct TYPE_2__ {int comm; } ;


 unsigned long PAGE_SHIFT ;
 int WARN (int,char*,int ,char*,unsigned long,unsigned long,int ,unsigned long) ;
 TYPE_1__* current ;

__attribute__((used)) static int __legacy_mmap_fits(struct pci_controller *hose,
         struct vm_area_struct *vma,
         unsigned long res_size, int sparse)
{
 unsigned long nr, start, size;

 nr = (vma->vm_end - vma->vm_start) >> PAGE_SHIFT;
 start = vma->vm_pgoff;
 size = ((res_size - 1) >> PAGE_SHIFT) + 1;

 if (start < size && size - start >= nr)
  return 1;
 WARN(1, "process \"%s\" tried to map%s 0x%08lx-0x%08lx on hose %d "
  "(size 0x%08lx)\n",
  current->comm, sparse ? " sparse" : "", start, start + nr,
  hose->index, size);
 return 0;
}
