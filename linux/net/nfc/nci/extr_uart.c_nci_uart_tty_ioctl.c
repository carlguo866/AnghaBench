
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {scalar_t__ disc_data; } ;
struct nci_uart {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;

 int n_tty_ioctl_helper (struct tty_struct*,struct file*,unsigned int,unsigned long) ;
 int nci_uart_set_driver (struct tty_struct*,unsigned int) ;

__attribute__((used)) static int nci_uart_tty_ioctl(struct tty_struct *tty, struct file *file,
         unsigned int cmd, unsigned long arg)
{
 struct nci_uart *nu = (void *)tty->disc_data;
 int err = 0;

 switch (cmd) {
 case 128:
  if (!nu)
   return nci_uart_set_driver(tty, (unsigned int)arg);
  else
   return -EBUSY;
  break;
 default:
  err = n_tty_ioctl_helper(tty, file, cmd, arg);
  break;
 }

 return err;
}
