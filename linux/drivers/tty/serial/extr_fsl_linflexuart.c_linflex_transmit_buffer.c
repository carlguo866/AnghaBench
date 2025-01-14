
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tx; } ;
struct uart_port {scalar_t__ membase; TYPE_1__ icount; TYPE_2__* state; } ;
struct circ_buf {unsigned char* buf; size_t tail; } ;
struct TYPE_4__ {struct circ_buf xmit; } ;


 scalar_t__ BDRL ;
 unsigned long LINFLEXD_UARTSR_DTFTFF ;
 scalar_t__ UARTSR ;
 int UART_XMIT_SIZE ;
 scalar_t__ WAKEUP_CHARS ;
 int linflex_stop_tx (struct uart_port*) ;
 unsigned long readl (scalar_t__) ;
 scalar_t__ uart_circ_chars_pending (struct circ_buf*) ;
 scalar_t__ uart_circ_empty (struct circ_buf*) ;
 int uart_write_wakeup (struct uart_port*) ;
 int writeb (unsigned char,scalar_t__) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static inline void linflex_transmit_buffer(struct uart_port *sport)
{
 struct circ_buf *xmit = &sport->state->xmit;
 unsigned char c;
 unsigned long status;

 while (!uart_circ_empty(xmit)) {
  c = xmit->buf[xmit->tail];
  writeb(c, sport->membase + BDRL);


  while (((status = readl(sport->membase + UARTSR)) &
     LINFLEXD_UARTSR_DTFTFF) !=
     LINFLEXD_UARTSR_DTFTFF)
   ;

  xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
  sport->icount.tx++;

  writel(status | LINFLEXD_UARTSR_DTFTFF,
         sport->membase + UARTSR);
 }

 if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
  uart_write_wakeup(sport);

 if (uart_circ_empty(xmit))
  linflex_stop_tx(sport);
}
