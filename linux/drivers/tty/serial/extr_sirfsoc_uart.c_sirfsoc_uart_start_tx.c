
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int fifosize; } ;
struct sirfsoc_uart_port {int is_atlas7; TYPE_1__* uart_reg; scalar_t__ tx_dma_chan; } ;
struct sirfsoc_register {int sirfsoc_int_en_reg; int sirfsoc_tx_fifo_op; int sirfsoc_tx_rx_en; } ;
struct sirfsoc_int_en {int sirfsoc_txfifo_empty_en; } ;
struct TYPE_2__ {scalar_t__ uart_type; struct sirfsoc_int_en uart_int_en; struct sirfsoc_register uart_reg; } ;


 int SIRFUART_FIFO_START ;
 int SIRFUART_FIFO_STOP ;
 int SIRFUART_TX_EN ;
 scalar_t__ SIRF_USP_UART ;
 int rd_regl (struct uart_port*,int ) ;
 int sirfsoc_uart_pio_tx_chars (struct sirfsoc_uart_port*,int ) ;
 int sirfsoc_uart_tx_with_dma (struct sirfsoc_uart_port*) ;
 struct sirfsoc_uart_port* to_sirfport (struct uart_port*) ;
 int wr_regl (struct uart_port*,int ,int) ;

__attribute__((used)) static void sirfsoc_uart_start_tx(struct uart_port *port)
{
 struct sirfsoc_uart_port *sirfport = to_sirfport(port);
 struct sirfsoc_register *ureg = &sirfport->uart_reg->uart_reg;
 struct sirfsoc_int_en *uint_en = &sirfport->uart_reg->uart_int_en;
 if (sirfport->tx_dma_chan)
  sirfsoc_uart_tx_with_dma(sirfport);
 else {
  if (sirfport->uart_reg->uart_type == SIRF_USP_UART)
   wr_regl(port, ureg->sirfsoc_tx_rx_en, rd_regl(port,
    ureg->sirfsoc_tx_rx_en) | SIRFUART_TX_EN);
  wr_regl(port, ureg->sirfsoc_tx_fifo_op, SIRFUART_FIFO_STOP);
  sirfsoc_uart_pio_tx_chars(sirfport, port->fifosize);
  wr_regl(port, ureg->sirfsoc_tx_fifo_op, SIRFUART_FIFO_START);
  if (!sirfport->is_atlas7)
   wr_regl(port, ureg->sirfsoc_int_en_reg,
     rd_regl(port, ureg->sirfsoc_int_en_reg)|
     uint_en->sirfsoc_txfifo_empty_en);
  else
   wr_regl(port, ureg->sirfsoc_int_en_reg,
     uint_en->sirfsoc_txfifo_empty_en);
 }
}
