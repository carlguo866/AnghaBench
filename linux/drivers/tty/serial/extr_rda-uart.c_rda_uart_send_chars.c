
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u32 ;
struct TYPE_4__ {int tx; } ;
struct uart_port {unsigned int x_char; TYPE_2__ icount; TYPE_1__* state; } ;
struct circ_buf {unsigned int* buf; size_t tail; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;


 int RDA_UART_IRQ_MASK ;
 int RDA_UART_RXTX_BUFFER ;
 int RDA_UART_STATUS ;
 unsigned int RDA_UART_TX_DATA_NEEDED ;
 int RDA_UART_TX_FIFO_MASK ;
 int SERIAL_XMIT_SIZE ;
 scalar_t__ WAKEUP_CHARS ;
 int cpu_relax () ;
 int rda_uart_read (struct uart_port*,int ) ;
 int rda_uart_write (struct uart_port*,unsigned int,int ) ;
 scalar_t__ uart_circ_chars_pending (struct circ_buf*) ;
 scalar_t__ uart_circ_empty (struct circ_buf*) ;
 scalar_t__ uart_tx_stopped (struct uart_port*) ;
 int uart_write_wakeup (struct uart_port*) ;

__attribute__((used)) static void rda_uart_send_chars(struct uart_port *port)
{
 struct circ_buf *xmit = &port->state->xmit;
 unsigned int ch;
 u32 val;

 if (uart_tx_stopped(port))
  return;

 if (port->x_char) {
  while (!(rda_uart_read(port, RDA_UART_STATUS) &
    RDA_UART_TX_FIFO_MASK))
   cpu_relax();

  rda_uart_write(port, port->x_char, RDA_UART_RXTX_BUFFER);
  port->icount.tx++;
  port->x_char = 0;
 }

 while (rda_uart_read(port, RDA_UART_STATUS) & RDA_UART_TX_FIFO_MASK) {
  if (uart_circ_empty(xmit))
   break;

  ch = xmit->buf[xmit->tail];
  rda_uart_write(port, ch, RDA_UART_RXTX_BUFFER);
  xmit->tail = (xmit->tail + 1) & (SERIAL_XMIT_SIZE - 1);
  port->icount.tx++;
 }

 if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
  uart_write_wakeup(port);

 if (!uart_circ_empty(xmit)) {

  val = rda_uart_read(port, RDA_UART_IRQ_MASK);
  val |= RDA_UART_TX_DATA_NEEDED;
  rda_uart_write(port, val, RDA_UART_IRQ_MASK);
 }
}
