
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_offset_t ;


 int CACHEOP_R4K_INDEX_WB_INV ;
 int CACHE_R4K_D ;
 int MIPS_PHYS_TO_KSEG0 (int) ;
 int cache_op_r4k_line (int,int) ;
 int cache_r4k_op_32lines_128 (int,int) ;
 int pdcache_loopcount ;
 int pdcache_stride ;
 int pdcache_way_mask ;
 int round_line128 (int) ;
 int trunc_line128 (int) ;

void
mipsNN_pdcache_wbinv_range_index_128(vm_offset_t va, vm_size_t size)
{
 vm_offset_t eva, tmpva;
 int i, stride, loopcount;







 va = MIPS_PHYS_TO_KSEG0(va & pdcache_way_mask);

 eva = round_line128(va + size);
 va = trunc_line128(va);





 stride = pdcache_stride;
 loopcount = pdcache_loopcount;

 while ((eva - va) >= (32 * 128)) {
  tmpva = va;
  for (i = 0; i < loopcount; i++, tmpva += stride)
   cache_r4k_op_32lines_128(tmpva,
       CACHE_R4K_D|CACHEOP_R4K_INDEX_WB_INV);
  va += 32 * 128;
 }

 while (va < eva) {
  tmpva = va;
  for (i = 0; i < loopcount; i++, tmpva += stride)
   cache_op_r4k_line(tmpva,
       CACHE_R4K_D|CACHEOP_R4K_INDEX_WB_INV);
  va += 128;
 }
}
