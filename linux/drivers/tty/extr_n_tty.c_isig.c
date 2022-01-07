
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int termios_rwsem; scalar_t__ link; struct n_tty_data* disc_data; } ;
struct n_tty_data {int output_lock; scalar_t__ echo_commit; scalar_t__ echo_mark; scalar_t__ echo_tail; scalar_t__ echo_head; } ;


 scalar_t__ L_NOFLSH (struct tty_struct*) ;
 int __isig (int,struct tty_struct*) ;
 int down_read (int *) ;
 int down_write (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int n_tty_packet_mode_flush (struct tty_struct*) ;
 int reset_buffer_flags (struct n_tty_data*) ;
 int tty_driver_flush_buffer (struct tty_struct*) ;
 int up_read (int *) ;
 int up_write (int *) ;

__attribute__((used)) static void isig(int sig, struct tty_struct *tty)
{
 struct n_tty_data *ldata = tty->disc_data;

 if (L_NOFLSH(tty)) {

  __isig(sig, tty);

 } else {
  up_read(&tty->termios_rwsem);
  down_write(&tty->termios_rwsem);

  __isig(sig, tty);


  mutex_lock(&ldata->output_lock);
  ldata->echo_head = ldata->echo_tail = 0;
  ldata->echo_mark = ldata->echo_commit = 0;
  mutex_unlock(&ldata->output_lock);


  tty_driver_flush_buffer(tty);


  reset_buffer_flags(tty->disc_data);


  if (tty->link)
   n_tty_packet_mode_flush(tty);

  up_write(&tty->termios_rwsem);
  down_read(&tty->termios_rwsem);
 }
}
