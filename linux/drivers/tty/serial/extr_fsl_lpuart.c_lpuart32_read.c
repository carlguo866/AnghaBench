
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct uart_port {int iotype; scalar_t__ membase; } ;




 scalar_t__ ioread32be (scalar_t__) ;
 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static inline u32 lpuart32_read(struct uart_port *port, u32 off)
{
 switch (port->iotype) {
 case 129:
  return readl(port->membase + off);
 case 128:
  return ioread32be(port->membase + off);
 default:
  return 0;
 }
}
