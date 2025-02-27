
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* blast_dcache16_page ;
 scalar_t__ cache_noop ;
 unsigned long cpu_dcache_line_size () ;
 void* r4k_blast_dcache_page ;
 void* r4k_blast_dcache_page_dc128 ;
 void* r4k_blast_dcache_page_dc32 ;
 void* r4k_blast_dcache_page_dc64 ;

__attribute__((used)) static void r4k_blast_dcache_page_setup(void)
{
 unsigned long dc_lsize = cpu_dcache_line_size();

 switch (dc_lsize) {
 case 0:
  r4k_blast_dcache_page = (void *)cache_noop;
  break;
 case 16:
  r4k_blast_dcache_page = blast_dcache16_page;
  break;
 case 32:
  r4k_blast_dcache_page = r4k_blast_dcache_page_dc32;
  break;
 case 64:
  r4k_blast_dcache_page = r4k_blast_dcache_page_dc64;
  break;
 case 128:
  r4k_blast_dcache_page = r4k_blast_dcache_page_dc128;
  break;
 default:
  break;
 }
}
