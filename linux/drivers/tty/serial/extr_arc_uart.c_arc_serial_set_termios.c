
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int uartclk; int lock; } ;
struct ktermios {int c_cflag; } ;
struct arc_uart_port {int baud; } ;


 int CMSPAR ;
 int CRTSCTS ;
 int CS8 ;
 int CSIZE ;
 int UART_ALL_IRQ_DISABLE (struct uart_port*) ;
 int UART_RX_IRQ_ENABLE (struct uart_port*) ;
 int UART_SET_BAUDH (struct uart_port*,unsigned int) ;
 int UART_SET_BAUDL (struct uart_port*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct arc_uart_port* to_arc_port (struct uart_port*) ;
 scalar_t__ tty_termios_baud_rate (struct ktermios*) ;
 int tty_termios_copy_hw (struct ktermios*,struct ktermios*) ;
 int tty_termios_encode_baud_rate (struct ktermios*,unsigned int,unsigned int) ;
 unsigned int uart_get_baud_rate (struct uart_port*,struct ktermios*,struct ktermios*,int ,int) ;
 int uart_update_timeout (struct uart_port*,int,unsigned int) ;

__attribute__((used)) static void
arc_serial_set_termios(struct uart_port *port, struct ktermios *new,
         struct ktermios *old)
{
 struct arc_uart_port *uart = to_arc_port(port);
 unsigned int baud, uartl, uarth, hw_val;
 unsigned long flags;
 baud = uart_get_baud_rate(port, new, old, 0, 460800);

 hw_val = port->uartclk / (uart->baud * 4) - 1;
 uartl = hw_val & 0xFF;
 uarth = (hw_val >> 8) & 0xFF;

 spin_lock_irqsave(&port->lock, flags);

 UART_ALL_IRQ_DISABLE(port);

 UART_SET_BAUDL(port, uartl);
 UART_SET_BAUDH(port, uarth);

 UART_RX_IRQ_ENABLE(port);





 new->c_cflag &= ~(CMSPAR|CRTSCTS|CSIZE);
 new->c_cflag |= CS8;

 if (old)
  tty_termios_copy_hw(new, old);


 if (tty_termios_baud_rate(new))
  tty_termios_encode_baud_rate(new, baud, baud);

 uart_update_timeout(port, new->c_cflag, baud);

 spin_unlock_irqrestore(&port->lock, flags);
}
