
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_fault_t ;
struct vm_fault {int pgoff; struct page* page; } ;
struct page {int dummy; } ;


 int PAGE_SHIFT ;
 int VM_FAULT_SIGBUS ;
 int get_page (struct page*) ;
 struct page* vmalloc_to_page (void*) ;

__attribute__((used)) static vm_fault_t qib_file_vma_fault(struct vm_fault *vmf)
{
 struct page *page;

 page = vmalloc_to_page((void *)(vmf->pgoff << PAGE_SHIFT));
 if (!page)
  return VM_FAULT_SIGBUS;

 get_page(page);
 vmf->page = page;

 return 0;
}
