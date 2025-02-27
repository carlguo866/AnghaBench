
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct ti_port {int dummy; } ;


 scalar_t__ C_CRTSCTS (struct tty_struct*) ;
 scalar_t__ I_IXOFF (struct tty_struct*) ;
 int ti_stop_read (struct ti_port*,struct tty_struct*) ;
 struct ti_port* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static void ti_throttle(struct tty_struct *tty)
{
 struct usb_serial_port *port = tty->driver_data;
 struct ti_port *tport = usb_get_serial_port_data(port);

 if (I_IXOFF(tty) || C_CRTSCTS(tty))
  ti_stop_read(tport, tty);

}
