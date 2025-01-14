
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct tty_struct {int name; struct isi_port* driver_data; } ;
struct isi_port {int status; } ;
struct file {int dummy; } ;


 int ENODEV ;
 int ISI_CTS ;
 int ISI_DCD ;
 int ISI_DSR ;
 int ISI_DTR ;
 int ISI_RI ;
 int ISI_RTS ;
 int TIOCM_CAR ;
 int TIOCM_CTS ;
 int TIOCM_DSR ;
 int TIOCM_DTR ;
 int TIOCM_RI ;
 int TIOCM_RTS ;
 scalar_t__ isicom_paranoia_check (struct isi_port*,int ,char*) ;

__attribute__((used)) static int isicom_tiocmget(struct tty_struct *tty, struct file *file)
{
 struct isi_port *port = tty->driver_data;

 u16 status = port->status;

 if (isicom_paranoia_check(port, tty->name, "isicom_ioctl"))
  return -ENODEV;

 return ((status & ISI_RTS) ? TIOCM_RTS : 0) |
  ((status & ISI_DTR) ? TIOCM_DTR : 0) |
  ((status & ISI_DCD) ? TIOCM_CAR : 0) |
  ((status & ISI_DSR) ? TIOCM_DSR : 0) |
  ((status & ISI_CTS) ? TIOCM_CTS : 0) |
  ((status & ISI_RI ) ? TIOCM_RI : 0);
}
