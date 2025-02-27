
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef struct page* vm_page_t ;
typedef unsigned long vm_offset_t ;
typedef TYPE_3__* vm_map_t ;
struct page {scalar_t__ dirty; } ;
struct TYPE_10__ {TYPE_2__* td_proc; } ;
struct TYPE_9__ {int pmap; } ;
struct TYPE_8__ {TYPE_1__* p_vmspace; } ;
struct TYPE_7__ {TYPE_3__ vm_map; } ;


 int EINVAL ;
 int MPASS (int ) ;
 size_t PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ VM_PAGE_BITS_ALL ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 TYPE_6__* curthread ;
 scalar_t__ in_interrupt () ;
 struct page* pmap_extract_and_hold (int ,unsigned long,int) ;
 unsigned long vm_map_max (TYPE_3__*) ;
 unsigned long vm_map_min (TYPE_3__*) ;
 int vm_page_dirty (struct page*) ;

int
__get_user_pages_fast(unsigned long start, int nr_pages, int write,
    struct page **pages)
{
 vm_map_t map;
 vm_page_t *mp;
 vm_offset_t va;
 vm_offset_t end;
 vm_prot_t prot;
 int count;

 if (nr_pages == 0 || in_interrupt())
  return (0);

 MPASS(pages != ((void*)0));
 va = start;
 map = &curthread->td_proc->p_vmspace->vm_map;
 end = start + (((size_t)nr_pages) << PAGE_SHIFT);
 if (start < vm_map_min(map) || end > vm_map_max(map))
  return (-EINVAL);
 prot = write ? (VM_PROT_READ | VM_PROT_WRITE) : VM_PROT_READ;
 for (count = 0, mp = pages, va = start; va < end;
     mp++, va += PAGE_SIZE, count++) {
  *mp = pmap_extract_and_hold(map->pmap, va, prot);
  if (*mp == ((void*)0))
   break;

  if ((prot & VM_PROT_WRITE) != 0 &&
      (*mp)->dirty != VM_PAGE_BITS_ALL) {
   vm_page_dirty(*mp);
  }
 }
 return (count);
}
