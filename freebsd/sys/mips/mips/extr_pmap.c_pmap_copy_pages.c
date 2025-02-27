
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef int vm_paddr_t ;
typedef size_t vm_offset_t ;


 scalar_t__ MIPS_DIRECT_MAPPABLE (int ) ;
 scalar_t__ MIPS_PHYS_TO_DIRECT (int ) ;
 size_t PAGE_MASK ;
 size_t PAGE_SHIFT ;
 int PAGE_SIZE ;
 int VM_PAGE_TO_PHYS (int ) ;
 int bcopy (char*,char*,int) ;
 int min (int,int) ;
 int mips_dcache_wbinv_range (size_t,int) ;
 int mips_dcache_wbinv_range_index (scalar_t__,int) ;
 int pmap_flush_pvcache (int ) ;
 scalar_t__ pmap_lmem_map2 (int ,int ) ;
 int pmap_lmem_unmap () ;

void
pmap_copy_pages(vm_page_t ma[], vm_offset_t a_offset, vm_page_t mb[],
    vm_offset_t b_offset, int xfersize)
{
 char *a_cp, *b_cp;
 vm_page_t a_m, b_m;
 vm_offset_t a_pg_offset, b_pg_offset;
 vm_paddr_t a_phys, b_phys;
 int cnt;

 while (xfersize > 0) {
  a_pg_offset = a_offset & PAGE_MASK;
  cnt = min(xfersize, PAGE_SIZE - a_pg_offset);
  a_m = ma[a_offset >> PAGE_SHIFT];
  a_phys = VM_PAGE_TO_PHYS(a_m);
  b_pg_offset = b_offset & PAGE_MASK;
  cnt = min(cnt, PAGE_SIZE - b_pg_offset);
  b_m = mb[b_offset >> PAGE_SHIFT];
  b_phys = VM_PAGE_TO_PHYS(b_m);
  if (MIPS_DIRECT_MAPPABLE(a_phys) &&
      MIPS_DIRECT_MAPPABLE(b_phys)) {
   pmap_flush_pvcache(a_m);
   mips_dcache_wbinv_range_index(
       MIPS_PHYS_TO_DIRECT(b_phys), PAGE_SIZE);
   a_cp = (char *)MIPS_PHYS_TO_DIRECT(a_phys) +
       a_pg_offset;
   b_cp = (char *)MIPS_PHYS_TO_DIRECT(b_phys) +
       b_pg_offset;
   bcopy(a_cp, b_cp, cnt);
   mips_dcache_wbinv_range((vm_offset_t)b_cp, cnt);
  } else {
   a_cp = (char *)pmap_lmem_map2(a_phys, b_phys);
   b_cp = (char *)a_cp + PAGE_SIZE;
   a_cp += a_pg_offset;
   b_cp += b_pg_offset;
   bcopy(a_cp, b_cp, cnt);
   mips_dcache_wbinv_range((vm_offset_t)b_cp, cnt);
   pmap_lmem_unmap();
  }
  a_offset += cnt;
  b_offset += cnt;
  xfersize -= cnt;
 }
}
