
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_char ;
struct TYPE_5__ {int value; } ;
struct TYPE_6__ {TYPE_1__ n; } ;
struct var_t {TYPE_2__ u; } ;
struct spk_synth {scalar_t__ procspeech; TYPE_3__* io_ops; int (* flush ) (struct spk_synth*) ;} ;
struct TYPE_8__ {int spinlock; scalar_t__ flushing; } ;
struct TYPE_7__ {scalar_t__ (* synth_out ) (struct spk_synth*,scalar_t__) ;int (* tiocmset ) (int ,int ) ;} ;


 int DELAY ;
 int FULL ;
 int JIFFY ;
 scalar_t__ PROCSPEECH ;
 scalar_t__ SPACE ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int UART_MCR_RTS ;
 int jiffies ;
 int kthread_should_stop () ;
 int msecs_to_jiffies (int) ;
 int schedule_timeout (int ) ;
 int set_current_state (int ) ;
 TYPE_4__ speakup_info ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct var_t* spk_get_var (int ) ;
 int stub1 (struct spk_synth*) ;
 scalar_t__ stub2 (struct spk_synth*,scalar_t__) ;
 int stub3 (int ,int ) ;
 int stub4 (int ,int ) ;
 scalar_t__ stub5 (struct spk_synth*,scalar_t__) ;
 scalar_t__ stub6 (struct spk_synth*,scalar_t__) ;
 scalar_t__ synth_buffer_empty () ;
 int synth_buffer_getc () ;
 scalar_t__ synth_buffer_peek () ;
 int synth_buffer_skip_nonlatin1 () ;
 scalar_t__ time_after_eq (int,unsigned long) ;

__attribute__((used)) static void do_catch_up(struct spk_synth *synth)
{
 u_char ch;
 unsigned long flags;
 unsigned long jiff_max;
 struct var_t *jiffy_delta;
 struct var_t *delay_time;
 struct var_t *full_time;
 int full_time_val = 0;
 int delay_time_val = 0;
 int jiffy_delta_val = 0;

 jiffy_delta = spk_get_var(JIFFY);
 delay_time = spk_get_var(DELAY);
 full_time = spk_get_var(FULL);
 spin_lock_irqsave(&speakup_info.spinlock, flags);
 jiffy_delta_val = jiffy_delta->u.n.value;
 spin_unlock_irqrestore(&speakup_info.spinlock, flags);
 jiff_max = jiffies + jiffy_delta_val;

 while (!kthread_should_stop()) {
  spin_lock_irqsave(&speakup_info.spinlock, flags);
  jiffy_delta_val = jiffy_delta->u.n.value;
  full_time_val = full_time->u.n.value;
  delay_time_val = delay_time->u.n.value;
  if (speakup_info.flushing) {
   speakup_info.flushing = 0;
   spin_unlock_irqrestore(&speakup_info.spinlock, flags);
   synth->flush(synth);
   continue;
  }
  synth_buffer_skip_nonlatin1();
  if (synth_buffer_empty()) {
   spin_unlock_irqrestore(&speakup_info.spinlock, flags);
   break;
  }
  ch = synth_buffer_peek();
  set_current_state(TASK_INTERRUPTIBLE);
  full_time_val = full_time->u.n.value;
  spin_unlock_irqrestore(&speakup_info.spinlock, flags);
  if (!synth->io_ops->synth_out(synth, ch)) {
   synth->io_ops->tiocmset(0, UART_MCR_RTS);
   synth->io_ops->tiocmset(UART_MCR_RTS, 0);
   schedule_timeout(msecs_to_jiffies(full_time_val));
   continue;
  }
  if (time_after_eq(jiffies, jiff_max) && (ch == SPACE)) {
   spin_lock_irqsave(&speakup_info.spinlock, flags);
   jiffy_delta_val = jiffy_delta->u.n.value;
   full_time_val = full_time->u.n.value;
   delay_time_val = delay_time->u.n.value;
   spin_unlock_irqrestore(&speakup_info.spinlock, flags);
   if (synth->io_ops->synth_out(synth, synth->procspeech))
    schedule_timeout(msecs_to_jiffies
       (delay_time_val));
   else
    schedule_timeout(msecs_to_jiffies
       (full_time_val));
   jiff_max = jiffies + jiffy_delta_val;
  }
  set_current_state(TASK_RUNNING);
  spin_lock_irqsave(&speakup_info.spinlock, flags);
  synth_buffer_getc();
  spin_unlock_irqrestore(&speakup_info.spinlock, flags);
 }
 synth->io_ops->synth_out(synth, PROCSPEECH);
}
