
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int serial; } ;


 int pr_debug (char*,char const*) ;

__attribute__((used)) static int mos7840_port_paranoia_check(struct usb_serial_port *port,
           const char *function)
{
 if (!port) {
  pr_debug("%s - port == NULL\n", function);
  return -1;
 }
 if (!port->serial) {
  pr_debug("%s - port->serial == NULL\n", function);
  return -1;
 }

 return 0;
}
