
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mantis_pci {int mantis_int_stat; int mantis_int_mask; int gpif_status; int busy_block; int i2c_wq; int tasklet; int uart_work; int intmask_lock; struct mantis_ca* mantis_ca; } ;
struct mantis_ca {int hif_evm_work; int hif_write_wq; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int MANTIS_DEBUG ;
 int MANTIS_ERROR ;
 int MANTIS_GPIF_EXTIRQ ;
 int MANTIS_GPIF_OTHERR ;
 int MANTIS_GPIF_STATUS ;
 int MANTIS_GPIF_WRACK ;
 int MANTIS_INT_FTRGT ;
 int MANTIS_INT_I2CDONE ;
 int MANTIS_INT_I2CRACK ;
 int MANTIS_INT_IRQ0 ;
 int MANTIS_INT_IRQ1 ;
 int MANTIS_INT_MASK ;
 int MANTIS_INT_OCERR ;
 int MANTIS_INT_PABORT ;
 int MANTIS_INT_PCMCIA0 ;
 int MANTIS_INT_PCMCIA1 ;
 int MANTIS_INT_PCMCIA2 ;
 int MANTIS_INT_PCMCIA3 ;
 int MANTIS_INT_PCMCIA4 ;
 int MANTIS_INT_PCMCIA5 ;
 int MANTIS_INT_PCMCIA6 ;
 int MANTIS_INT_PCMCIA7 ;
 int MANTIS_INT_PPERR ;
 int MANTIS_INT_RIPERR ;
 int MANTIS_INT_RISCEN ;
 int MANTIS_INT_RISCI ;
 int MANTIS_INT_RISCSTAT ;
 int MANTIS_INT_STAT ;
 int MANTIS_SBUF_WSTO ;
 int dprintk (int ,int,char*,...) ;
 int * label ;
 int mmread (int ) ;
 int mmwrite (int,int ) ;
 int schedule_work (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tasklet_schedule (int *) ;
 scalar_t__ unlikely (int ) ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t mantis_irq_handler(int irq, void *dev_id)
{
 u32 stat = 0, mask = 0;
 u32 rst_stat = 0, rst_mask = 0;

 struct mantis_pci *mantis;
 struct mantis_ca *ca;

 mantis = (struct mantis_pci *) dev_id;
 if (unlikely(mantis == ((void*)0))) {
  dprintk(MANTIS_ERROR, 1, "Mantis == NULL");
  return IRQ_NONE;
 }
 ca = mantis->mantis_ca;

 stat = mmread(MANTIS_INT_STAT);
 mask = mmread(MANTIS_INT_MASK);
 if (!(stat & mask))
  return IRQ_NONE;

 rst_mask = MANTIS_GPIF_WRACK |
      MANTIS_GPIF_OTHERR |
      MANTIS_SBUF_WSTO |
      MANTIS_GPIF_EXTIRQ;

 rst_stat = mmread(MANTIS_GPIF_STATUS);
 rst_stat &= rst_mask;
 mmwrite(rst_stat, MANTIS_GPIF_STATUS);

 mantis->mantis_int_stat = stat;
 mantis->mantis_int_mask = mask;
 dprintk(MANTIS_DEBUG, 0, "\n-- Stat=<%02x> Mask=<%02x> --", stat, mask);
 if (stat & MANTIS_INT_RISCEN) {
  dprintk(MANTIS_DEBUG, 0, "<%s>", label[0]);
 }
 if (stat & MANTIS_INT_IRQ0) {
  dprintk(MANTIS_DEBUG, 0, "<%s>", label[1]);
  mantis->gpif_status = rst_stat;
  wake_up(&ca->hif_write_wq);
  schedule_work(&ca->hif_evm_work);
 }
 if (stat & MANTIS_INT_IRQ1) {
  dprintk(MANTIS_DEBUG, 0, "<%s>", label[2]);
  spin_lock(&mantis->intmask_lock);
  mmwrite(mmread(MANTIS_INT_MASK) & ~MANTIS_INT_IRQ1,
   MANTIS_INT_MASK);
  spin_unlock(&mantis->intmask_lock);
  schedule_work(&mantis->uart_work);
 }
 if (stat & MANTIS_INT_OCERR) {
  dprintk(MANTIS_DEBUG, 0, "<%s>", label[3]);
 }
 if (stat & MANTIS_INT_PABORT) {
  dprintk(MANTIS_DEBUG, 0, "<%s>", label[4]);
 }
 if (stat & MANTIS_INT_RIPERR) {
  dprintk(MANTIS_DEBUG, 0, "<%s>", label[5]);
 }
 if (stat & MANTIS_INT_PPERR) {
  dprintk(MANTIS_DEBUG, 0, "<%s>", label[6]);
 }
 if (stat & MANTIS_INT_FTRGT) {
  dprintk(MANTIS_DEBUG, 0, "<%s>", label[7]);
 }
 if (stat & MANTIS_INT_RISCI) {
  dprintk(MANTIS_DEBUG, 0, "<%s>", label[8]);
  mantis->busy_block = (stat & MANTIS_INT_RISCSTAT) >> 28;
  tasklet_schedule(&mantis->tasklet);
 }
 if (stat & MANTIS_INT_I2CDONE) {
  dprintk(MANTIS_DEBUG, 0, "<%s>", label[9]);
  wake_up(&mantis->i2c_wq);
 }
 mmwrite(stat, MANTIS_INT_STAT);
 stat &= ~(MANTIS_INT_RISCEN | MANTIS_INT_I2CDONE |
    MANTIS_INT_I2CRACK | MANTIS_INT_PCMCIA7 |
    MANTIS_INT_PCMCIA6 | MANTIS_INT_PCMCIA5 |
    MANTIS_INT_PCMCIA4 | MANTIS_INT_PCMCIA3 |
    MANTIS_INT_PCMCIA2 | MANTIS_INT_PCMCIA1 |
    MANTIS_INT_PCMCIA0 | MANTIS_INT_IRQ1 |
    MANTIS_INT_IRQ0 | MANTIS_INT_OCERR |
    MANTIS_INT_PABORT | MANTIS_INT_RIPERR |
    MANTIS_INT_PPERR | MANTIS_INT_FTRGT |
    MANTIS_INT_RISCI);

 if (stat)
  dprintk(MANTIS_DEBUG, 0, "<Unknown> Stat=<%02x> Mask=<%02x>", stat, mask);

 dprintk(MANTIS_DEBUG, 0, "\n");
 return IRQ_HANDLED;
}
