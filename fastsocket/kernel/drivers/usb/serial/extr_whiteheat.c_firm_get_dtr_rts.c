
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct whiteheat_simple {scalar_t__ port; } ;
struct usb_serial_port {TYPE_1__* serial; scalar_t__ number; } ;
typedef int get_dr_command ;
typedef int __u8 ;
struct TYPE_2__ {scalar_t__ minor; } ;


 int WHITEHEAT_GET_DTR_RTS ;
 int firm_send_command (struct usb_serial_port*,int ,int *,int) ;

__attribute__((used)) static int firm_get_dtr_rts(struct usb_serial_port *port)
{
 struct whiteheat_simple get_dr_command;

 get_dr_command.port = port->number - port->serial->minor + 1;
 return firm_send_command(port, WHITEHEAT_GET_DTR_RTS,
   (__u8 *)&get_dr_command, sizeof(get_dr_command));
}
