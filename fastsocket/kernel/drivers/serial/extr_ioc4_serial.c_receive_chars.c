
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct tty_struct* tty; } ;
struct uart_state {TYPE_1__ port; } ;
struct uart_icount {int rx; } ;
struct uart_port {int lock; struct uart_icount icount; struct uart_state* state; } ;
struct tty_struct {int dummy; } ;


 int IOC4_MAX_CHARS ;
 int do_read (struct uart_port*,unsigned char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_buffer_request_room (struct tty_struct*,int) ;
 int tty_flip_buffer_push (struct tty_struct*) ;
 int tty_insert_flip_string (struct tty_struct*,unsigned char*,int) ;

__attribute__((used)) static void receive_chars(struct uart_port *the_port)
{
 struct tty_struct *tty;
 unsigned char ch[IOC4_MAX_CHARS];
 int read_count, request_count = IOC4_MAX_CHARS;
 struct uart_icount *icount;
 struct uart_state *state = the_port->state;
 unsigned long pflags;


 if (!state)
  return;
 if (!state->port.tty)
  return;

 spin_lock_irqsave(&the_port->lock, pflags);
 tty = state->port.tty;

 request_count = tty_buffer_request_room(tty, IOC4_MAX_CHARS);

 if (request_count > 0) {
  icount = &the_port->icount;
  read_count = do_read(the_port, ch, request_count);
  if (read_count > 0) {
   tty_insert_flip_string(tty, ch, read_count);
   icount->rx += read_count;
  }
 }

 spin_unlock_irqrestore(&the_port->lock, pflags);

 tty_flip_buffer_push(tty);
}
