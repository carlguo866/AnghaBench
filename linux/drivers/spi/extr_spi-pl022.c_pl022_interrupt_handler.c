
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct spi_message {scalar_t__ state; int actual_length; } ;
struct pl022 {scalar_t__ tx; scalar_t__ tx_end; scalar_t__ rx; scalar_t__ rx_end; int pump_transfers; TYPE_2__* cur_transfer; TYPE_1__* adev; int virtbase; struct spi_message* cur_msg; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {scalar_t__ cs_change; scalar_t__ len; } ;
struct TYPE_3__ {int dev; } ;


 int CLEAR_ALL_INTERRUPTS ;
 int DISABLE_ALL_INTERRUPTS ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int SSP_CHIP_DESELECT ;
 int SSP_CR1 (int ) ;
 int SSP_CR1_MASK_SSE ;
 int SSP_ICR (int ) ;
 int SSP_IMSC (int ) ;
 int SSP_IMSC_MASK_RXIM ;
 int SSP_IMSC_MASK_TXIM ;
 int SSP_MIS (int ) ;
 int SSP_MIS_MASK_RORMIS ;
 int SSP_SR (int ) ;
 int SSP_SR_MASK_RFF ;
 scalar_t__ STATE_DONE ;
 scalar_t__ STATE_ERROR ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*,int ) ;
 scalar_t__ next_transfer (struct pl022*) ;
 int pl022_cs_control (struct pl022*,int ) ;
 int readw (int ) ;
 int readwriter (struct pl022*) ;
 int tasklet_schedule (int *) ;
 scalar_t__ unlikely (int) ;
 int writew (int,int ) ;

__attribute__((used)) static irqreturn_t pl022_interrupt_handler(int irq, void *dev_id)
{
 struct pl022 *pl022 = dev_id;
 struct spi_message *msg = pl022->cur_msg;
 u16 irq_status = 0;

 if (unlikely(!msg)) {
  dev_err(&pl022->adev->dev,
   "bad message state in interrupt handler");

  return IRQ_HANDLED;
 }


 irq_status = readw(SSP_MIS(pl022->virtbase));

 if (unlikely(!irq_status))
  return IRQ_NONE;






 if (unlikely(irq_status & SSP_MIS_MASK_RORMIS)) {




  dev_err(&pl022->adev->dev, "FIFO overrun\n");
  if (readw(SSP_SR(pl022->virtbase)) & SSP_SR_MASK_RFF)
   dev_err(&pl022->adev->dev,
    "RXFIFO is full\n");






  writew(DISABLE_ALL_INTERRUPTS,
         SSP_IMSC(pl022->virtbase));
  writew(CLEAR_ALL_INTERRUPTS, SSP_ICR(pl022->virtbase));
  writew((readw(SSP_CR1(pl022->virtbase)) &
   (~SSP_CR1_MASK_SSE)), SSP_CR1(pl022->virtbase));
  msg->state = STATE_ERROR;


  tasklet_schedule(&pl022->pump_transfers);
  return IRQ_HANDLED;
 }

 readwriter(pl022);

 if (pl022->tx == pl022->tx_end) {

  writew((readw(SSP_IMSC(pl022->virtbase)) &
         ~SSP_IMSC_MASK_TXIM) | SSP_IMSC_MASK_RXIM,
         SSP_IMSC(pl022->virtbase));
 }






 if (pl022->rx >= pl022->rx_end) {
  writew(DISABLE_ALL_INTERRUPTS,
         SSP_IMSC(pl022->virtbase));
  writew(CLEAR_ALL_INTERRUPTS, SSP_ICR(pl022->virtbase));
  if (unlikely(pl022->rx > pl022->rx_end)) {
   dev_warn(&pl022->adev->dev, "read %u surplus "
     "bytes (did you request an odd "
     "number of bytes on a 16bit bus?)\n",
     (u32) (pl022->rx - pl022->rx_end));
  }

  msg->actual_length += pl022->cur_transfer->len;

  msg->state = next_transfer(pl022);
  if (msg->state != STATE_DONE && pl022->cur_transfer->cs_change)
   pl022_cs_control(pl022, SSP_CHIP_DESELECT);
  tasklet_schedule(&pl022->pump_transfers);
  return IRQ_HANDLED;
 }

 return IRQ_HANDLED;
}
