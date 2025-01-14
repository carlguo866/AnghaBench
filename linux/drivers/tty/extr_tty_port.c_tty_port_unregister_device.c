
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_port {int dummy; } ;
struct tty_driver {int dummy; } ;


 int serdev_tty_port_unregister (struct tty_port*) ;
 int tty_unregister_device (struct tty_driver*,unsigned int) ;

void tty_port_unregister_device(struct tty_port *port,
  struct tty_driver *driver, unsigned index)
{
 int ret;

 ret = serdev_tty_port_unregister(port);
 if (ret == 0)
  return;

 tty_unregister_device(driver, index);
}
