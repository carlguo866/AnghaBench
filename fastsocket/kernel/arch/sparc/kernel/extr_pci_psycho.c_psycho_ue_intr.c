
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_pbm_info {unsigned long controller_regs; struct pci_pbm_info* sibling; int name; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned long PSYCHO_UEAFSR_BLK ;
 unsigned long PSYCHO_UEAFSR_BMSK ;
 unsigned long PSYCHO_UEAFSR_DOFF ;
 unsigned long PSYCHO_UEAFSR_MID ;
 unsigned long PSYCHO_UEAFSR_PDRD ;
 unsigned long PSYCHO_UEAFSR_PDWR ;
 unsigned long PSYCHO_UEAFSR_PPIO ;
 unsigned long PSYCHO_UEAFSR_SDRD ;
 unsigned long PSYCHO_UEAFSR_SDWR ;
 unsigned long PSYCHO_UEAFSR_SPIO ;
 unsigned long PSYCHO_UE_AFAR ;
 unsigned long PSYCHO_UE_AFSR ;
 int UE_ERR ;
 int printk (char*,...) ;
 int psycho_check_iommu_error (struct pci_pbm_info*,unsigned long,unsigned long,int ) ;
 unsigned long upa_readq (unsigned long) ;
 int upa_writeq (unsigned long,unsigned long) ;

__attribute__((used)) static irqreturn_t psycho_ue_intr(int irq, void *dev_id)
{
 struct pci_pbm_info *pbm = dev_id;
 unsigned long afsr_reg = pbm->controller_regs + PSYCHO_UE_AFSR;
 unsigned long afar_reg = pbm->controller_regs + PSYCHO_UE_AFAR;
 unsigned long afsr, afar, error_bits;
 int reported;


 afar = upa_readq(afar_reg);
 afsr = upa_readq(afsr_reg);


 error_bits = afsr &
  (PSYCHO_UEAFSR_PPIO | PSYCHO_UEAFSR_PDRD | PSYCHO_UEAFSR_PDWR |
   PSYCHO_UEAFSR_SPIO | PSYCHO_UEAFSR_SDRD | PSYCHO_UEAFSR_SDWR);
 if (!error_bits)
  return IRQ_NONE;
 upa_writeq(error_bits, afsr_reg);


 printk("%s: Uncorrectable Error, primary error type[%s]\n",
        pbm->name,
        (((error_bits & PSYCHO_UEAFSR_PPIO) ?
   "PIO" :
   ((error_bits & PSYCHO_UEAFSR_PDRD) ?
    "DMA Read" :
    ((error_bits & PSYCHO_UEAFSR_PDWR) ?
     "DMA Write" : "???")))));
 printk("%s: bytemask[%04lx] dword_offset[%lx] UPA_MID[%02lx] was_block(%d)\n",
        pbm->name,
        (afsr & PSYCHO_UEAFSR_BMSK) >> 32UL,
        (afsr & PSYCHO_UEAFSR_DOFF) >> 29UL,
        (afsr & PSYCHO_UEAFSR_MID) >> 24UL,
        ((afsr & PSYCHO_UEAFSR_BLK) ? 1 : 0));
 printk("%s: UE AFAR [%016lx]\n", pbm->name, afar);
 printk("%s: UE Secondary errors [", pbm->name);
 reported = 0;
 if (afsr & PSYCHO_UEAFSR_SPIO) {
  reported++;
  printk("(PIO)");
 }
 if (afsr & PSYCHO_UEAFSR_SDRD) {
  reported++;
  printk("(DMA Read)");
 }
 if (afsr & PSYCHO_UEAFSR_SDWR) {
  reported++;
  printk("(DMA Write)");
 }
 if (!reported)
  printk("(none)");
 printk("]\n");


 psycho_check_iommu_error(pbm, afsr, afar, UE_ERR);
 if (pbm->sibling)
  psycho_check_iommu_error(pbm->sibling, afsr, afar, UE_ERR);

 return IRQ_HANDLED;
}
