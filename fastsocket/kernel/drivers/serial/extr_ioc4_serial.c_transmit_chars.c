
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int head; int tail; int * buf; } ;
struct TYPE_5__ {struct tty_struct* tty; } ;
struct uart_state {TYPE_3__ xmit; TYPE_1__ port; } ;
struct TYPE_6__ {int tx; } ;
struct uart_port {TYPE_2__ icount; struct uart_state* state; } ;
struct tty_struct {int dummy; } ;
struct ioc4_port {int dummy; } ;


 int N_ALL_OUTPUT ;
 int N_OUTPUT_LOWAT ;
 int UART_XMIT_SIZE ;
 scalar_t__ WAKEUP_CHARS ;
 int do_write (struct ioc4_port*,char*,int) ;
 struct ioc4_port* get_ioc4_port (struct uart_port*,int ) ;
 int set_notification (struct ioc4_port*,int ,int) ;
 scalar_t__ uart_circ_chars_pending (TYPE_3__*) ;
 scalar_t__ uart_circ_empty (TYPE_3__*) ;
 scalar_t__ uart_tx_stopped (struct uart_port*) ;
 int uart_write_wakeup (struct uart_port*) ;

__attribute__((used)) static void transmit_chars(struct uart_port *the_port)
{
 int xmit_count, tail, head;
 int result;
 char *start;
 struct tty_struct *tty;
 struct ioc4_port *port = get_ioc4_port(the_port, 0);
 struct uart_state *state;

 if (!the_port)
  return;
 if (!port)
  return;

 state = the_port->state;
 tty = state->port.tty;

 if (uart_circ_empty(&state->xmit) || uart_tx_stopped(the_port)) {

  set_notification(port, N_ALL_OUTPUT, 0);
  return;
 }

 head = state->xmit.head;
 tail = state->xmit.tail;
 start = (char *)&state->xmit.buf[tail];


 xmit_count = (head < tail) ? (UART_XMIT_SIZE - tail) : (head - tail);
 if (xmit_count > 0) {
  result = do_write(port, start, xmit_count);
  if (result > 0) {

   xmit_count -= result;
   the_port->icount.tx += result;

   tail += result;
   tail &= UART_XMIT_SIZE - 1;
   state->xmit.tail = tail;
   start = (char *)&state->xmit.buf[tail];
  }
 }
 if (uart_circ_chars_pending(&state->xmit) < WAKEUP_CHARS)
  uart_write_wakeup(the_port);

 if (uart_circ_empty(&state->xmit)) {
  set_notification(port, N_OUTPUT_LOWAT, 0);
 } else {
  set_notification(port, N_OUTPUT_LOWAT, 1);
 }
}
