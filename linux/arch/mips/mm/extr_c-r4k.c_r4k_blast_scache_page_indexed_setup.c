
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* blast_scache128_page_indexed ;
 void* blast_scache16_page_indexed ;
 void* blast_scache32_page_indexed ;
 void* blast_scache64_page_indexed ;
 scalar_t__ cache_noop ;
 unsigned long cpu_scache_line_size () ;
 void* r4k_blast_scache_page_indexed ;
 scalar_t__ scache_size ;

__attribute__((used)) static void r4k_blast_scache_page_indexed_setup(void)
{
 unsigned long sc_lsize = cpu_scache_line_size();

 if (scache_size == 0)
  r4k_blast_scache_page_indexed = (void *)cache_noop;
 else if (sc_lsize == 16)
  r4k_blast_scache_page_indexed = blast_scache16_page_indexed;
 else if (sc_lsize == 32)
  r4k_blast_scache_page_indexed = blast_scache32_page_indexed;
 else if (sc_lsize == 64)
  r4k_blast_scache_page_indexed = blast_scache64_page_indexed;
 else if (sc_lsize == 128)
  r4k_blast_scache_page_indexed = blast_scache128_page_indexed;
}
