
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct sc16is7xx_one {int line; } ;


 struct sc16is7xx_one* to_sc16is7xx_one (struct uart_port*,struct uart_port*) ;

__attribute__((used)) static int sc16is7xx_line(struct uart_port *port)
{
 struct sc16is7xx_one *one = to_sc16is7xx_one(port, port);

 return one->line;
}
