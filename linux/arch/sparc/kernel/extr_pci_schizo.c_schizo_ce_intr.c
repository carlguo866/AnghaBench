
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_pbm_info {unsigned long controller_regs; int name; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned long SCHIZO_CEAFSR_PDRD ;
 unsigned long SCHIZO_CEAFSR_PDWR ;
 unsigned long SCHIZO_CEAFSR_PPIO ;
 unsigned long SCHIZO_CEAFSR_SDMA ;
 unsigned long SCHIZO_CEAFSR_SPIO ;
 unsigned long SCHIZO_CE_AFAR ;
 unsigned long SCHIZO_CE_AFSR ;
 unsigned long SCHIZO_UEAFSR_AID ;
 unsigned long SCHIZO_UEAFSR_BMSK ;
 unsigned long SCHIZO_UEAFSR_ECCSYND ;
 unsigned long SCHIZO_UEAFSR_ERRPNDG ;
 unsigned long SCHIZO_UEAFSR_MTAG ;
 unsigned long SCHIZO_UEAFSR_MTAGSYND ;
 unsigned long SCHIZO_UEAFSR_OWNEDIN ;
 unsigned long SCHIZO_UEAFSR_PARTIAL ;
 unsigned long SCHIZO_UEAFSR_QOFF ;
 int printk (char*,...) ;
 unsigned long upa_readq (unsigned long) ;
 int upa_writeq (unsigned long,unsigned long) ;

__attribute__((used)) static irqreturn_t schizo_ce_intr(int irq, void *dev_id)
{
 struct pci_pbm_info *pbm = dev_id;
 unsigned long afsr_reg = pbm->controller_regs + SCHIZO_CE_AFSR;
 unsigned long afar_reg = pbm->controller_regs + SCHIZO_CE_AFAR;
 unsigned long afsr, afar, error_bits;
 int reported, limit;


 afar = upa_readq(afar_reg);





 limit = 1000;
 do {
  afsr = upa_readq(afsr_reg);
 } while ((afsr & SCHIZO_UEAFSR_ERRPNDG) != 0 && --limit);


 error_bits = afsr &
  (SCHIZO_CEAFSR_PPIO | SCHIZO_CEAFSR_PDRD | SCHIZO_CEAFSR_PDWR |
   SCHIZO_CEAFSR_SPIO | SCHIZO_CEAFSR_SDMA);
 if (!error_bits)
  return IRQ_NONE;
 upa_writeq(error_bits, afsr_reg);


 printk("%s: Correctable Error, primary error type[%s]\n",
        pbm->name,
        (((error_bits & SCHIZO_CEAFSR_PPIO) ?
   "PIO" :
   ((error_bits & SCHIZO_CEAFSR_PDRD) ?
    "DMA Read" :
    ((error_bits & SCHIZO_CEAFSR_PDWR) ?
     "DMA Write" : "???")))));




 printk("%s: bytemask[%04lx] qword_offset[%lx] SAFARI_AID[%02lx]\n",
        pbm->name,
        (afsr & SCHIZO_UEAFSR_BMSK) >> 32UL,
        (afsr & SCHIZO_UEAFSR_QOFF) >> 30UL,
        (afsr & SCHIZO_UEAFSR_AID) >> 24UL);
 printk("%s: partial[%d] owned_in[%d] mtag[%lx] mtag_synd[%lx] ecc_sync[%lx]\n",
        pbm->name,
        (afsr & SCHIZO_UEAFSR_PARTIAL) ? 1 : 0,
        (afsr & SCHIZO_UEAFSR_OWNEDIN) ? 1 : 0,
        (afsr & SCHIZO_UEAFSR_MTAG) >> 13UL,
        (afsr & SCHIZO_UEAFSR_MTAGSYND) >> 16UL,
        (afsr & SCHIZO_UEAFSR_ECCSYND) >> 0UL);
 printk("%s: CE AFAR [%016lx]\n", pbm->name, afar);
 printk("%s: CE Secondary errors [", pbm->name);
 reported = 0;
 if (afsr & SCHIZO_CEAFSR_SPIO) {
  reported++;
  printk("(PIO)");
 }
 if (afsr & SCHIZO_CEAFSR_SDMA) {
  reported++;
  printk("(DMA)");
 }
 if (!reported)
  printk("(none)");
 printk("]\n");

 return IRQ_HANDLED;
}
