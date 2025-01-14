
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct ftdi_private {int flags; int latency; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ASYNC_LOW_LATENCY ;
 int sprintf (char*,char*,...) ;
 struct usb_serial_port* to_usb_serial_port (struct device*) ;
 struct ftdi_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static ssize_t show_latency_timer(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct usb_serial_port *port = to_usb_serial_port(dev);
 struct ftdi_private *priv = usb_get_serial_port_data(port);
 if (priv->flags & ASYNC_LOW_LATENCY)
  return sprintf(buf, "1\n");
 else
  return sprintf(buf, "%i\n", priv->latency);
}
