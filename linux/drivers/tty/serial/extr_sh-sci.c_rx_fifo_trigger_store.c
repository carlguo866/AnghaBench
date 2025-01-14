
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ type; } ;
struct sci_port {int rx_trigger; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ PORT_SCIFA ;
 scalar_t__ PORT_SCIFB ;
 struct uart_port* dev_get_drvdata (struct device*) ;
 int kstrtol (char const*,int ,long*) ;
 int scif_set_rtrg (struct uart_port*,int) ;
 struct sci_port* to_sci_port (struct uart_port*) ;

__attribute__((used)) static ssize_t rx_fifo_trigger_store(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct uart_port *port = dev_get_drvdata(dev);
 struct sci_port *sci = to_sci_port(port);
 int ret;
 long r;

 ret = kstrtol(buf, 0, &r);
 if (ret)
  return ret;

 sci->rx_trigger = scif_set_rtrg(port, r);
 if (port->type == PORT_SCIFA || port->type == PORT_SCIFB)
  scif_set_rtrg(port, 1);

 return count;
}
