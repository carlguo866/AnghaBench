
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int isr1; } ;
union sab82532_irq_status {TYPE_2__ sreg; } ;
struct TYPE_13__ {int tx; } ;
struct TYPE_16__ {int fifosize; TYPE_4__ icount; TYPE_1__* state; } ;
struct uart_sunsab_port {int interrupt_mask1; TYPE_7__ port; TYPE_6__* regs; int irqflags; } ;
struct circ_buf {int* buf; size_t tail; } ;
struct TYPE_14__ {int cmdr; int * xfifo; int imr1; } ;
struct TYPE_12__ {int star; } ;
struct TYPE_15__ {TYPE_5__ w; TYPE_3__ r; } ;
struct TYPE_10__ {struct circ_buf xmit; } ;


 int SAB82532_ALLS ;
 int SAB82532_CMDR_XF ;
 int SAB82532_IMR1_ALLS ;
 int SAB82532_IMR1_XPR ;
 int SAB82532_ISR1_ALLS ;
 int SAB82532_ISR1_XPR ;
 int SAB82532_STAR_XFW ;
 int SAB82532_XPR ;
 int UART_XMIT_SIZE ;
 scalar_t__ WAKEUP_CHARS ;
 int clear_bit (int ,int *) ;
 int readb (int *) ;
 int set_bit (int ,int *) ;
 int sunsab_cec_wait (struct uart_sunsab_port*) ;
 int sunsab_stop_tx (TYPE_7__*) ;
 int sunsab_tx_idle (struct uart_sunsab_port*) ;
 scalar_t__ uart_circ_chars_pending (struct circ_buf*) ;
 scalar_t__ uart_circ_empty (struct circ_buf*) ;
 scalar_t__ uart_tx_stopped (TYPE_7__*) ;
 int uart_write_wakeup (TYPE_7__*) ;
 int writeb (int,int *) ;

__attribute__((used)) static void transmit_chars(struct uart_sunsab_port *up,
      union sab82532_irq_status *stat)
{
 struct circ_buf *xmit = &up->port.state->xmit;
 int i;

 if (stat->sreg.isr1 & SAB82532_ISR1_ALLS) {
  up->interrupt_mask1 |= SAB82532_IMR1_ALLS;
  writeb(up->interrupt_mask1, &up->regs->w.imr1);
  set_bit(SAB82532_ALLS, &up->irqflags);
 }






 if (!(readb(&up->regs->r.star) & SAB82532_STAR_XFW))
  return;

 set_bit(SAB82532_XPR, &up->irqflags);
 sunsab_tx_idle(up);

 if (uart_circ_empty(xmit) || uart_tx_stopped(&up->port)) {
  up->interrupt_mask1 |= SAB82532_IMR1_XPR;
  writeb(up->interrupt_mask1, &up->regs->w.imr1);
  return;
 }

 up->interrupt_mask1 &= ~(SAB82532_IMR1_ALLS|SAB82532_IMR1_XPR);
 writeb(up->interrupt_mask1, &up->regs->w.imr1);
 clear_bit(SAB82532_ALLS, &up->irqflags);


 clear_bit(SAB82532_XPR, &up->irqflags);
 for (i = 0; i < up->port.fifosize; i++) {
  writeb(xmit->buf[xmit->tail],
         &up->regs->w.xfifo[i]);
  xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
  up->port.icount.tx++;
  if (uart_circ_empty(xmit))
   break;
 }


 sunsab_cec_wait(up);
 writeb(SAB82532_CMDR_XF, &up->regs->w.cmdr);

 if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
  uart_write_wakeup(&up->port);

 if (uart_circ_empty(xmit))
  sunsab_stop_tx(&up->port);
}
