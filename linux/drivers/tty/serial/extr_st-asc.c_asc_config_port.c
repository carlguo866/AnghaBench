
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int type; } ;


 int PORT_ASC ;
 int UART_CONFIG_TYPE ;

__attribute__((used)) static void asc_config_port(struct uart_port *port, int flags)
{
 if ((flags & UART_CONFIG_TYPE))
  port->type = PORT_ASC;
}
