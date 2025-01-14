
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
typedef int pm_message_t ;
struct TYPE_6__ {struct usb_interface* interface; } ;
struct TYPE_5__ {struct usb_interface* interface; } ;


 int HSO_MAX_NET_DEVICES ;
 int HSO_SERIAL_TTY_MINORS ;
 int hso_stop_net_device (TYPE_2__*) ;
 int hso_stop_serial_device (TYPE_1__*) ;
 TYPE_2__** network_table ;
 TYPE_1__** serial_table ;

__attribute__((used)) static int hso_suspend(struct usb_interface *iface, pm_message_t message)
{
 int i, result;


 for (i = 0; i < HSO_SERIAL_TTY_MINORS; i++) {
  if (serial_table[i] && (serial_table[i]->interface == iface)) {
   result = hso_stop_serial_device(serial_table[i]);
   if (result)
    goto out;
  }
 }


 for (i = 0; i < HSO_MAX_NET_DEVICES; i++) {
  if (network_table[i] &&
      (network_table[i]->interface == iface)) {
   result = hso_stop_net_device(network_table[i]);
   if (result)
    goto out;
  }
 }

out:
 return 0;
}
