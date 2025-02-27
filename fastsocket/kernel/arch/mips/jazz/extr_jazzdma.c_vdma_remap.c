
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long owner; unsigned long frame; } ;


 int EINVAL ;
 int EPERM ;
 int JAZZ_R4030_TRSTBL_INV ;
 int VDMA_PAGESIZE ;
 int VDMA_PGTBL_ENTRIES ;
 TYPE_1__* pgtbl ;
 int printk (char*,...) ;
 int r4030_write_reg32 (int ,int ) ;
 int vdma_debug ;

int vdma_remap(unsigned long laddr, unsigned long paddr, unsigned long size)
{
 int first, pages, npages;

 if (laddr > 0xffffff) {
  if (vdma_debug)
   printk
       ("vdma_map: Invalid logical address: %08lx\n",
        laddr);
  return -EINVAL;
 }
 if (paddr > 0x1fffffff) {
  if (vdma_debug)
   printk
       ("vdma_map: Invalid physical address: %08lx\n",
        paddr);
  return -EINVAL;
 }

 npages = pages =
     (((paddr & (VDMA_PAGESIZE - 1)) + size) >> 12) + 1;
 first = laddr >> 12;
 if (vdma_debug)
  printk("vdma_remap: first=%x, pages=%x\n", first, pages);
 if (first + pages > VDMA_PGTBL_ENTRIES) {
  if (vdma_debug)
   printk("vdma_alloc: Invalid size: %08lx\n", size);
  return -EINVAL;
 }

 paddr &= ~(VDMA_PAGESIZE - 1);
 while (pages > 0 && first < VDMA_PGTBL_ENTRIES) {
  if (pgtbl[first].owner != laddr) {
   if (vdma_debug)
    printk("Trying to remap other's pages.\n");
   return -EPERM;
  }
  pgtbl[first].frame = paddr;
  paddr += VDMA_PAGESIZE;
  first++;
  pages--;
 }




 r4030_write_reg32(JAZZ_R4030_TRSTBL_INV, 0);

 if (vdma_debug > 2) {
  int i;
  pages = (((paddr & (VDMA_PAGESIZE - 1)) + size) >> 12) + 1;
  first = laddr >> 12;
  printk("LADDR: ");
  for (i = first; i < first + pages; i++)
   printk("%08x ", i << 12);
  printk("\nPADDR: ");
  for (i = first; i < first + pages; i++)
   printk("%08x ", pgtbl[i].frame);
  printk("\nOWNER: ");
  for (i = first; i < first + pages; i++)
   printk("%08x ", pgtbl[i].owner);
  printk("\n");
 }

 return 0;
}
