
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int delta_msr_wait; } ;
struct circ_buf {int dummy; } ;
struct uart_state {TYPE_3__ port; struct circ_buf xmit; } ;
struct TYPE_4__ {int parity; int frame; int overrun; int brk; } ;
struct uart_port {unsigned long read_status_mask; int lock; int fifosize; TYPE_1__ icount; struct uart_state* state; } ;
struct sirfsoc_uart_port {scalar_t__ tx_dma_chan; int is_atlas7; int rx_dma_chan; int tx_dma_state; TYPE_2__* uart_reg; struct uart_port port; } ;
struct sirfsoc_register {int sirfsoc_tx_fifo_status; int sirfsoc_int_en_reg; int sirfsoc_int_en_clr_reg; int sirfsoc_afc_ctrl; int sirfsoc_rx_fifo_op; int sirfsoc_int_st_reg; } ;
struct sirfsoc_int_status {unsigned long sirfsoc_rxd_brk; unsigned long sirfsoc_rx_oflow; unsigned long sirfsoc_frm_err; unsigned long sirfsoc_parity_err; unsigned long sirfsoc_rx_done; unsigned long sirfsoc_rx_timeout; unsigned long sirfsoc_txfifo_empty; } ;
struct sirfsoc_int_en {unsigned long sirfsoc_rx_done_en; unsigned long sirfsoc_rx_timeout_en; int sirfsoc_rx_oflow_en; } ;
struct sirfsoc_fifo_status {unsigned long (* ff_empty ) (struct uart_port*) ;} ;
typedef int irqreturn_t ;
struct TYPE_5__ {scalar_t__ uart_type; struct sirfsoc_int_en uart_int_en; struct sirfsoc_int_status uart_int_st; struct sirfsoc_fifo_status fifo_status; struct sirfsoc_register uart_reg; } ;


 int IRQ_HANDLED ;
 unsigned long SIRFUART_AFC_CTS_STATUS ;
 unsigned long SIRFUART_CTS_INT_ST (struct sirfsoc_int_status*) ;
 unsigned long SIRFUART_ERR_INT_STAT (struct sirfsoc_int_status*,scalar_t__) ;
 unsigned long SIRFUART_FIFO_RESET ;
 unsigned long SIRFUART_FIFO_START ;
 unsigned long SIRFUART_RX_IO_INT_ST (struct sirfsoc_int_status*) ;
 scalar_t__ SIRF_REAL_UART ;
 unsigned long TTY_FRAME ;
 unsigned long TTY_NORMAL ;
 unsigned long TTY_OVERRUN ;
 unsigned long TTY_PARITY ;
 unsigned long rd_regl (struct uart_port*,int ) ;
 int sirfsoc_uart_pio_rx_chars (struct uart_port*,int ) ;
 int sirfsoc_uart_pio_tx_chars (struct sirfsoc_uart_port*,int ) ;
 int sirfsoc_uart_stop_tx (struct uart_port*) ;
 int sirfsoc_uart_tx_with_dma (struct sirfsoc_uart_port*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 unsigned long stub1 (struct uart_port*) ;
 int tty_flip_buffer_push (TYPE_3__*) ;
 scalar_t__ uart_circ_empty (struct circ_buf*) ;
 scalar_t__ uart_handle_break (struct uart_port*) ;
 int uart_handle_cts_change (struct uart_port*,unsigned long) ;
 int uart_insert_char (struct uart_port*,unsigned long,int ,int ,unsigned long) ;
 scalar_t__ uart_tx_stopped (struct uart_port*) ;
 scalar_t__ unlikely (unsigned long) ;
 int wake_up_interruptible (int *) ;
 int wr_regl (struct uart_port*,int ,unsigned long) ;

__attribute__((used)) static irqreturn_t sirfsoc_uart_isr(int irq, void *dev_id)
{
 unsigned long intr_status;
 unsigned long cts_status;
 unsigned long flag = TTY_NORMAL;
 struct sirfsoc_uart_port *sirfport = (struct sirfsoc_uart_port *)dev_id;
 struct uart_port *port = &sirfport->port;
 struct sirfsoc_register *ureg = &sirfport->uart_reg->uart_reg;
 struct sirfsoc_fifo_status *ufifo_st = &sirfport->uart_reg->fifo_status;
 struct sirfsoc_int_status *uint_st = &sirfport->uart_reg->uart_int_st;
 struct sirfsoc_int_en *uint_en = &sirfport->uart_reg->uart_int_en;
 struct uart_state *state = port->state;
 struct circ_buf *xmit = &port->state->xmit;
 spin_lock(&port->lock);
 intr_status = rd_regl(port, ureg->sirfsoc_int_st_reg);
 wr_regl(port, ureg->sirfsoc_int_st_reg, intr_status);
 intr_status &= rd_regl(port, ureg->sirfsoc_int_en_reg);
 if (unlikely(intr_status & (SIRFUART_ERR_INT_STAT(uint_st,
    sirfport->uart_reg->uart_type)))) {
  if (intr_status & uint_st->sirfsoc_rxd_brk) {
   port->icount.brk++;
   if (uart_handle_break(port))
    goto recv_char;
  }
  if (intr_status & uint_st->sirfsoc_rx_oflow) {
   port->icount.overrun++;
   flag = TTY_OVERRUN;
  }
  if (intr_status & uint_st->sirfsoc_frm_err) {
   port->icount.frame++;
   flag = TTY_FRAME;
  }
  if (intr_status & uint_st->sirfsoc_parity_err) {
   port->icount.parity++;
   flag = TTY_PARITY;
  }
  wr_regl(port, ureg->sirfsoc_rx_fifo_op, SIRFUART_FIFO_RESET);
  wr_regl(port, ureg->sirfsoc_rx_fifo_op, 0);
  wr_regl(port, ureg->sirfsoc_rx_fifo_op, SIRFUART_FIFO_START);
  intr_status &= port->read_status_mask;
  uart_insert_char(port, intr_status,
     uint_en->sirfsoc_rx_oflow_en, 0, flag);
 }
recv_char:
 if ((sirfport->uart_reg->uart_type == SIRF_REAL_UART) &&
   (intr_status & SIRFUART_CTS_INT_ST(uint_st)) &&
   !sirfport->tx_dma_state) {
  cts_status = rd_regl(port, ureg->sirfsoc_afc_ctrl) &
     SIRFUART_AFC_CTS_STATUS;
  if (cts_status != 0)
   cts_status = 0;
  else
   cts_status = 1;
  uart_handle_cts_change(port, cts_status);
  wake_up_interruptible(&state->port.delta_msr_wait);
 }
 if (!sirfport->rx_dma_chan &&
  (intr_status & SIRFUART_RX_IO_INT_ST(uint_st))) {
  if (intr_status & uint_st->sirfsoc_rx_done) {
   if (!sirfport->is_atlas7) {
    wr_regl(port, ureg->sirfsoc_int_en_reg,
     rd_regl(port, ureg->sirfsoc_int_en_reg)
     & ~(uint_en->sirfsoc_rx_done_en));
    wr_regl(port, ureg->sirfsoc_int_en_reg,
    rd_regl(port, ureg->sirfsoc_int_en_reg)
    | (uint_en->sirfsoc_rx_timeout_en));
   } else {
    wr_regl(port, ureg->sirfsoc_int_en_clr_reg,
     uint_en->sirfsoc_rx_done_en);
    wr_regl(port, ureg->sirfsoc_int_en_reg,
     uint_en->sirfsoc_rx_timeout_en);
   }
  } else {
   if (intr_status & uint_st->sirfsoc_rx_timeout) {
    if (!sirfport->is_atlas7) {
     wr_regl(port, ureg->sirfsoc_int_en_reg,
     rd_regl(port, ureg->sirfsoc_int_en_reg)
     & ~(uint_en->sirfsoc_rx_timeout_en));
     wr_regl(port, ureg->sirfsoc_int_en_reg,
     rd_regl(port, ureg->sirfsoc_int_en_reg)
     | (uint_en->sirfsoc_rx_done_en));
    } else {
     wr_regl(port,
      ureg->sirfsoc_int_en_clr_reg,
      uint_en->sirfsoc_rx_timeout_en);
     wr_regl(port, ureg->sirfsoc_int_en_reg,
      uint_en->sirfsoc_rx_done_en);
    }
   }
   sirfsoc_uart_pio_rx_chars(port, port->fifosize);
  }
 }
 spin_unlock(&port->lock);
 tty_flip_buffer_push(&state->port);
 spin_lock(&port->lock);
 if (intr_status & uint_st->sirfsoc_txfifo_empty) {
  if (sirfport->tx_dma_chan)
   sirfsoc_uart_tx_with_dma(sirfport);
  else {
   if (uart_circ_empty(xmit) || uart_tx_stopped(port)) {
    spin_unlock(&port->lock);
    return IRQ_HANDLED;
   } else {
    sirfsoc_uart_pio_tx_chars(sirfport,
      port->fifosize);
    if ((uart_circ_empty(xmit)) &&
    (rd_regl(port, ureg->sirfsoc_tx_fifo_status) &
    ufifo_st->ff_empty(port)))
     sirfsoc_uart_stop_tx(port);
   }
  }
 }
 spin_unlock(&port->lock);

 return IRQ_HANDLED;
}
