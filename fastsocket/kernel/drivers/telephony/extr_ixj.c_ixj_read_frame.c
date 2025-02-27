
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int rec_frame_size; scalar_t__ rec_codec; int intercom; int read_buffer_ready; scalar_t__* ixj_signals; int poll_q; int read_q; int frameswritten; scalar_t__ DSPbase; void** read_buffer; int framesread; } ;
typedef TYPE_1__ IXJ ;


 scalar_t__ G729 ;
 int IsRxReady (TYPE_1__*) ;
 scalar_t__ IsTxReady (TYPE_1__*) ;
 int POLL_OUT ;
 size_t SIG_READ_READY ;
 TYPE_1__* get_ixj (int) ;
 void* inb_p (scalar_t__) ;
 int ixj_kill_fasync (TYPE_1__*,size_t,int ) ;
 int outb_p (void*,scalar_t__) ;
 int udelay (int) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void ixj_read_frame(IXJ *j)
{
 int cnt, dly;

 if (j->read_buffer) {
  for (cnt = 0; cnt < j->rec_frame_size * 2; cnt += 2) {
   if (!(cnt % 16) && !IsRxReady(j)) {
    dly = 0;
    while (!IsRxReady(j)) {
     if (dly++ > 5) {
      dly = 0;
      break;
     }
     udelay(10);
    }
   }

   if (j->rec_codec == G729 && (cnt == 0 || cnt == 10 || cnt == 20)) {
    inb_p(j->DSPbase + 0x0E);
    inb_p(j->DSPbase + 0x0F);
   }
   *(j->read_buffer + cnt) = inb_p(j->DSPbase + 0x0E);
   *(j->read_buffer + cnt + 1) = inb_p(j->DSPbase + 0x0F);
  }
  ++j->framesread;
  if (j->intercom != -1) {
   if (IsTxReady(get_ixj(j->intercom))) {
    for (cnt = 0; cnt < j->rec_frame_size * 2; cnt += 2) {
     if (!(cnt % 16) && !IsTxReady(j)) {
      dly = 0;
      while (!IsTxReady(j)) {
       if (dly++ > 5) {
        dly = 0;
        break;
       }
       udelay(10);
      }
     }
     outb_p(*(j->read_buffer + cnt), get_ixj(j->intercom)->DSPbase + 0x0C);
     outb_p(*(j->read_buffer + cnt + 1), get_ixj(j->intercom)->DSPbase + 0x0D);
    }
    get_ixj(j->intercom)->frameswritten++;
   }
  } else {
   j->read_buffer_ready = 1;
   wake_up_interruptible(&j->read_q);

   wake_up_interruptible(&j->poll_q);

   if(j->ixj_signals[SIG_READ_READY])
    ixj_kill_fasync(j, SIG_READ_READY, POLL_OUT);
  }
 }
}
