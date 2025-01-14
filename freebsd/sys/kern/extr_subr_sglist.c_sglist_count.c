
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;
typedef scalar_t__ vm_offset_t ;


 scalar_t__ PAGE_SIZE ;
 scalar_t__ pmap_kextract (scalar_t__) ;
 scalar_t__ trunc_page (scalar_t__) ;

int
sglist_count(void *buf, size_t len)
{
 vm_offset_t vaddr, vendaddr;
 vm_paddr_t lastaddr, paddr;
 int nsegs;

 if (len == 0)
  return (0);

 vaddr = trunc_page((vm_offset_t)buf);
 vendaddr = (vm_offset_t)buf + len;
 nsegs = 1;
 lastaddr = pmap_kextract(vaddr);
 vaddr += PAGE_SIZE;
 while (vaddr < vendaddr) {
  paddr = pmap_kextract(vaddr);
  if (lastaddr + PAGE_SIZE != paddr)
   nsegs++;
  lastaddr = paddr;
  vaddr += PAGE_SIZE;
 }
 return (nsegs);
}
