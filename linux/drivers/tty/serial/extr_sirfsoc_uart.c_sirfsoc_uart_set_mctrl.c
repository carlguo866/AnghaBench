
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct sirfsoc_uart_port {int rts_gpio; TYPE_1__* uart_reg; int ms_enabled; int hw_flow_ctrl; } ;
struct sirfsoc_register {int sirfsoc_afc_ctrl; int sirfsoc_mode1; int sirfsoc_line_ctrl; } ;
struct TYPE_2__ {scalar_t__ uart_type; struct sirfsoc_register uart_reg; } ;


 unsigned int SIRFSOC_USP_LOOP_BACK_CTRL ;
 int SIRFUART_AFC_CTRL_RX_THD ;
 unsigned int SIRFUART_LOOP_BACK ;
 scalar_t__ SIRF_REAL_UART ;
 unsigned int TIOCM_LOOP ;
 unsigned int TIOCM_RTS ;
 int gpio_set_value (int ,int) ;
 int rd_regl (struct uart_port*,int ) ;
 struct sirfsoc_uart_port* to_sirfport (struct uart_port*) ;
 int wr_regl (struct uart_port*,int ,unsigned int) ;

__attribute__((used)) static void sirfsoc_uart_set_mctrl(struct uart_port *port, unsigned int mctrl)
{
 struct sirfsoc_uart_port *sirfport = to_sirfport(port);
 struct sirfsoc_register *ureg = &sirfport->uart_reg->uart_reg;
 unsigned int assert = mctrl & TIOCM_RTS;
 unsigned int val = assert ? SIRFUART_AFC_CTRL_RX_THD : 0x0;
 unsigned int current_val;

 if (mctrl & TIOCM_LOOP) {
  if (sirfport->uart_reg->uart_type == SIRF_REAL_UART)
   wr_regl(port, ureg->sirfsoc_line_ctrl,
    rd_regl(port, ureg->sirfsoc_line_ctrl) |
    SIRFUART_LOOP_BACK);
  else
   wr_regl(port, ureg->sirfsoc_mode1,
    rd_regl(port, ureg->sirfsoc_mode1) |
    SIRFSOC_USP_LOOP_BACK_CTRL);
 } else {
  if (sirfport->uart_reg->uart_type == SIRF_REAL_UART)
   wr_regl(port, ureg->sirfsoc_line_ctrl,
    rd_regl(port, ureg->sirfsoc_line_ctrl) &
    ~SIRFUART_LOOP_BACK);
  else
   wr_regl(port, ureg->sirfsoc_mode1,
    rd_regl(port, ureg->sirfsoc_mode1) &
    ~SIRFSOC_USP_LOOP_BACK_CTRL);
 }

 if (!sirfport->hw_flow_ctrl || !sirfport->ms_enabled)
  return;
 if (sirfport->uart_reg->uart_type == SIRF_REAL_UART) {
  current_val = rd_regl(port, ureg->sirfsoc_afc_ctrl) & ~0xFF;
  val |= current_val;
  wr_regl(port, ureg->sirfsoc_afc_ctrl, val);
 } else {
  if (!val)
   gpio_set_value(sirfport->rts_gpio, 1);
  else
   gpio_set_value(sirfport->rts_gpio, 0);
 }
}
