
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct port* driver_data; } ;
struct port {int port; } ;
struct file {int dummy; } ;


 int tty_port_open (int *,struct tty_struct*,struct file*) ;

__attribute__((used)) static int ntty_open(struct tty_struct *tty, struct file *filp)
{
 struct port *port = tty->driver_data;
 return tty_port_open(&port->port, tty, filp);
}
