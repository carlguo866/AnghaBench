
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ iotype; int regshift; } ;
struct uart_8250_port {TYPE_1__ port; } ;


 scalar_t__ UPIO_AU ;
 scalar_t__ is_omap_port (struct uart_8250_port*) ;

__attribute__((used)) static unsigned int serial8250_port_size(struct uart_8250_port *pt)
{
 if (pt->port.iotype == UPIO_AU)
  return 0x100000;




 return 8 << pt->port.regshift;
}
