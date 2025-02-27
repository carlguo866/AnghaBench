
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int status; int actual_length; struct catc* context; } ;
struct ctrl_queue {int (* callback ) (struct catc*,struct ctrl_queue*) ;scalar_t__ buf; scalar_t__ len; scalar_t__ dir; } ;
struct catc {int ctrl_tail; scalar_t__ ctrl_head; int ctrl_lock; int flags; scalar_t__ ctrl_buf; struct ctrl_queue* ctrl_queue; } ;


 int CTRL_QUEUE ;
 int CTRL_RUNNING ;
 int catc_ctrl_run (struct catc*) ;
 int clear_bit (int ,int *) ;
 int dbg (char*,int,int ) ;
 int memcpy (scalar_t__,scalar_t__,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct catc*,struct ctrl_queue*) ;

__attribute__((used)) static void catc_ctrl_done(struct urb *urb)
{
 struct catc *catc = urb->context;
 struct ctrl_queue *q;
 unsigned long flags;
 int status = urb->status;

 if (status)
  dbg("ctrl_done, status %d, len %d.", status, urb->actual_length);

 spin_lock_irqsave(&catc->ctrl_lock, flags);

 q = catc->ctrl_queue + catc->ctrl_tail;

 if (q->dir) {
  if (q->buf && q->len)
   memcpy(q->buf, catc->ctrl_buf, q->len);
  else
   q->buf = catc->ctrl_buf;
 }

 if (q->callback)
  q->callback(catc, q);

 catc->ctrl_tail = (catc->ctrl_tail + 1) & (CTRL_QUEUE - 1);

 if (catc->ctrl_head != catc->ctrl_tail)
  catc_ctrl_run(catc);
 else
  clear_bit(CTRL_RUNNING, &catc->flags);

 spin_unlock_irqrestore(&catc->ctrl_lock, flags);
}
