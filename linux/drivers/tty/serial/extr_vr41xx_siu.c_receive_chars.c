
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int overrun; int parity; int frame; int brk; int rx; } ;
struct uart_port {size_t line; int read_status_mask; TYPE_2__* state; TYPE_1__ icount; } ;
struct TYPE_4__ {int port; } ;


 int RX_MAX_COUNT ;
 char TTY_BREAK ;
 char TTY_FRAME ;
 char TTY_NORMAL ;
 char TTY_PARITY ;
 int UART_LSR ;
 int UART_LSR_BI ;
 int UART_LSR_DR ;
 int UART_LSR_FE ;
 int UART_LSR_OE ;
 int UART_LSR_PE ;
 int UART_RX ;
 int* lsr_break_flag ;
 int siu_read (struct uart_port*,int ) ;
 int tty_flip_buffer_push (int *) ;
 scalar_t__ uart_handle_break (struct uart_port*) ;
 scalar_t__ uart_handle_sysrq_char (struct uart_port*,int) ;
 int uart_insert_char (struct uart_port*,int,int,int,char) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void receive_chars(struct uart_port *port, uint8_t *status)
{
 uint8_t lsr, ch;
 char flag;
 int max_count = RX_MAX_COUNT;

 lsr = *status;

 do {
  ch = siu_read(port, UART_RX);
  port->icount.rx++;
  flag = TTY_NORMAL;





  if (unlikely(lsr & (UART_LSR_BI | UART_LSR_FE |
                      UART_LSR_PE | UART_LSR_OE))) {
   if (lsr & UART_LSR_BI) {
    lsr &= ~(UART_LSR_FE | UART_LSR_PE);
    port->icount.brk++;

    if (uart_handle_break(port))
     goto ignore_char;
   }

   if (lsr & UART_LSR_FE)
    port->icount.frame++;
   if (lsr & UART_LSR_PE)
    port->icount.parity++;
   if (lsr & UART_LSR_OE)
    port->icount.overrun++;

   lsr &= port->read_status_mask;
   if (lsr & UART_LSR_BI)
    flag = TTY_BREAK;
   if (lsr & UART_LSR_FE)
    flag = TTY_FRAME;
   if (lsr & UART_LSR_PE)
    flag = TTY_PARITY;
  }

  if (uart_handle_sysrq_char(port, ch))
   goto ignore_char;

  uart_insert_char(port, lsr, UART_LSR_OE, ch, flag);

 ignore_char:
  lsr = siu_read(port, UART_LSR);
 } while ((lsr & UART_LSR_DR) && (max_count-- > 0));

 tty_flip_buffer_push(&port->state->port);

 *status = lsr;
}
