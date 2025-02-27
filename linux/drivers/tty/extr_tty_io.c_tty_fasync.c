
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct file {int dummy; } ;


 int ENOTTY ;
 int __tty_fasync (int,struct file*,int) ;
 struct tty_struct* file_tty (struct file*) ;
 int tty_hung_up_p (struct file*) ;
 int tty_lock (struct tty_struct*) ;
 int tty_unlock (struct tty_struct*) ;

__attribute__((used)) static int tty_fasync(int fd, struct file *filp, int on)
{
 struct tty_struct *tty = file_tty(filp);
 int retval = -ENOTTY;

 tty_lock(tty);
 if (!tty_hung_up_p(filp))
  retval = __tty_fasync(fd, filp, on);
 tty_unlock(tty);

 return retval;
}
