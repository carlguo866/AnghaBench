
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct protection_domain {int dummy; } ;


 int BUG_ON (int) ;
 int PAGE_SIZE_PTE_COUNT (unsigned long) ;
 unsigned long long* fetch_pte (struct protection_domain*,unsigned long,unsigned long*) ;
 int is_power_of_2 (unsigned long long) ;

__attribute__((used)) static unsigned long iommu_unmap_page(struct protection_domain *dom,
          unsigned long bus_addr,
          unsigned long page_size)
{
 unsigned long long unmapped;
 unsigned long unmap_size;
 u64 *pte;

 BUG_ON(!is_power_of_2(page_size));

 unmapped = 0;

 while (unmapped < page_size) {

  pte = fetch_pte(dom, bus_addr, &unmap_size);

  if (pte) {
   int i, count;

   count = PAGE_SIZE_PTE_COUNT(unmap_size);
   for (i = 0; i < count; i++)
    pte[i] = 0ULL;
  }

  bus_addr = (bus_addr & ~(unmap_size - 1)) + unmap_size;
  unmapped += unmap_size;
 }

 BUG_ON(unmapped && !is_power_of_2(unmapped));

 return unmapped;
}
