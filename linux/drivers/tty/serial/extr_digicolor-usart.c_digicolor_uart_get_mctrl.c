
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 unsigned int TIOCM_CTS ;

__attribute__((used)) static unsigned int digicolor_uart_get_mctrl(struct uart_port *port)
{
 return TIOCM_CTS;
}
