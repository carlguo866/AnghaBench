
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct ltq_uart_port {int common_irq; } ;


 int free_irq (int ,struct uart_port*) ;
 struct ltq_uart_port* to_ltq_uart_port (struct uart_port*) ;

__attribute__((used)) static void free_irq_intel(struct uart_port *port)
{
 struct ltq_uart_port *ltq_port = to_ltq_uart_port(port);

 free_irq(ltq_port->common_irq, port);
}
