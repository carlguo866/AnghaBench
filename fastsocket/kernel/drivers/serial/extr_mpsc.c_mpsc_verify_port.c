
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct serial_struct {scalar_t__ type; scalar_t__ irq; scalar_t__ io_type; int baud_base; void* iomem_base; scalar_t__ port; scalar_t__ hub6; } ;
struct TYPE_2__ {scalar_t__ irq; int uartclk; scalar_t__ iobase; scalar_t__ mapbase; int line; } ;
struct mpsc_port_info {TYPE_1__ port; } ;


 int EINVAL ;
 scalar_t__ PORT_MPSC ;
 scalar_t__ PORT_UNKNOWN ;
 scalar_t__ SERIAL_IO_MEM ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static int mpsc_verify_port(struct uart_port *port, struct serial_struct *ser)
{
 struct mpsc_port_info *pi = (struct mpsc_port_info *)port;
 int rc = 0;

 pr_debug("mpsc_verify_port[%d]: Verifying port data\n", pi->port.line);

 if (ser->type != PORT_UNKNOWN && ser->type != PORT_MPSC)
  rc = -EINVAL;
 else if (pi->port.irq != ser->irq)
  rc = -EINVAL;
 else if (ser->io_type != SERIAL_IO_MEM)
  rc = -EINVAL;
 else if (pi->port.uartclk / 16 != ser->baud_base)
  rc = -EINVAL;
 else if ((void *)pi->port.mapbase != ser->iomem_base)
  rc = -EINVAL;
 else if (pi->port.iobase != ser->port)
  rc = -EINVAL;
 else if (ser->hub6 != 0)
  rc = -EINVAL;

 return rc;
}
