
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct gsm_dlci* driver_data; } ;
struct tty_port {int count; } ;
struct gsm_dlci {scalar_t__ modem_rx; struct tty_port port; } ;
struct file {int dummy; } ;


 int gsm_dlci_begin_open (struct gsm_dlci*) ;
 int tty_port_block_til_ready (struct tty_port*,struct tty_struct*,struct file*) ;
 int tty_port_set_initialized (struct tty_port*,int) ;
 int tty_port_tty_set (struct tty_port*,struct tty_struct*) ;

__attribute__((used)) static int gsmtty_open(struct tty_struct *tty, struct file *filp)
{
 struct gsm_dlci *dlci = tty->driver_data;
 struct tty_port *port = &dlci->port;

 port->count++;
 tty_port_tty_set(port, tty);

 dlci->modem_rx = 0;


 tty_port_set_initialized(port, 1);

 gsm_dlci_begin_open(dlci);

 return tty_port_block_til_ready(port, tty, filp);
}
