
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be64 ;


 int TCE_PCI_READ ;
 int TCE_PCI_WRITE ;
 int __pa (int *) ;
 int cpu_to_be64 (int) ;
 int * pnv_alloc_tce_level (int,unsigned int) ;

__attribute__((used)) static __be64 *pnv_pci_ioda2_table_do_alloc_pages(int nid, unsigned int shift,
  unsigned int levels, unsigned long limit,
  unsigned long *current_offset, unsigned long *total_allocated)
{
 __be64 *addr, *tmp;
 unsigned long allocated = 1UL << shift;
 unsigned int entries = 1UL << (shift - 3);
 long i;

 addr = pnv_alloc_tce_level(nid, shift);
 *total_allocated += allocated;

 --levels;
 if (!levels) {
  *current_offset += allocated;
  return addr;
 }

 for (i = 0; i < entries; ++i) {
  tmp = pnv_pci_ioda2_table_do_alloc_pages(nid, shift,
    levels, limit, current_offset, total_allocated);
  if (!tmp)
   break;

  addr[i] = cpu_to_be64(__pa(tmp) |
    TCE_PCI_READ | TCE_PCI_WRITE);

  if (*current_offset >= limit)
   break;
 }

 return addr;
}
