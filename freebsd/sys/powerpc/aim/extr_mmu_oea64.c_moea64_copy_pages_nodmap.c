
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef size_t vm_offset_t ;
typedef int mmu_t ;


 size_t PAGE_MASK ;
 size_t PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 int VM_PAGE_TO_PHYS (int ) ;
 int bcopy (void*,void*,int) ;
 int min (int,scalar_t__) ;
 int moea64_scratchpage_mtx ;
 scalar_t__* moea64_scratchpage_va ;
 int moea64_set_scratchpage_pa (int ,int,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static inline void
moea64_copy_pages_nodmap(mmu_t mmu, vm_page_t *ma, vm_offset_t a_offset,
    vm_page_t *mb, vm_offset_t b_offset, int xfersize)
{
 void *a_cp, *b_cp;
 vm_offset_t a_pg_offset, b_pg_offset;
 int cnt;

 mtx_lock(&moea64_scratchpage_mtx);
 while (xfersize > 0) {
  a_pg_offset = a_offset & PAGE_MASK;
  cnt = min(xfersize, PAGE_SIZE - a_pg_offset);
  moea64_set_scratchpage_pa(mmu, 0,
      VM_PAGE_TO_PHYS(ma[a_offset >> PAGE_SHIFT]));
  a_cp = (char *)moea64_scratchpage_va[0] + a_pg_offset;
  b_pg_offset = b_offset & PAGE_MASK;
  cnt = min(cnt, PAGE_SIZE - b_pg_offset);
  moea64_set_scratchpage_pa(mmu, 1,
      VM_PAGE_TO_PHYS(mb[b_offset >> PAGE_SHIFT]));
  b_cp = (char *)moea64_scratchpage_va[1] + b_pg_offset;
  bcopy(a_cp, b_cp, cnt);
  a_offset += cnt;
  b_offset += cnt;
  xfersize -= cnt;
 }
 mtx_unlock(&moea64_scratchpage_mtx);
}
