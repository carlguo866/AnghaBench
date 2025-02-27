
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {size_t index; struct raw3215_info* driver_data; } ;
struct tty_driver {int dummy; } ;
struct raw3215_info {int port; } ;


 int ENODEV ;
 struct raw3215_info** raw3215 ;
 int tty_port_install (int *,struct tty_driver*,struct tty_struct*) ;

__attribute__((used)) static int tty3215_install(struct tty_driver *driver, struct tty_struct *tty)
{
 struct raw3215_info *raw;

 raw = raw3215[tty->index];
 if (raw == ((void*)0))
  return -ENODEV;

 tty->driver_data = raw;

 return tty_port_install(&raw->port, driver, tty);
}
