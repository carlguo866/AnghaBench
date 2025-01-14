
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_t {int type; int cid; int parameter; int * at_state; int * arg; void* ptr; } ;
struct cardstate {unsigned int ev_tail; unsigned int ev_head; int ev_lock; struct event_t* events; int dev; } ;


 int DEBUG_EVENT ;
 unsigned int MAX_EVENTS ;
 int dev_err (int ,char*) ;
 int gig_dbg (int ,char*,int,int) ;
 int kfree (void*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void add_cid_event(struct cardstate *cs, int cid, int type,
     void *ptr, int parameter)
{
 unsigned long flags;
 unsigned next, tail;
 struct event_t *event;

 gig_dbg(DEBUG_EVENT, "queueing event %d for cid %d", type, cid);

 spin_lock_irqsave(&cs->ev_lock, flags);

 tail = cs->ev_tail;
 next = (tail + 1) % MAX_EVENTS;
 if (unlikely(next == cs->ev_head)) {
  dev_err(cs->dev, "event queue full\n");
  kfree(ptr);
 } else {
  event = cs->events + tail;
  event->type = type;
  event->cid = cid;
  event->ptr = ptr;
  event->arg = ((void*)0);
  event->parameter = parameter;
  event->at_state = ((void*)0);
  cs->ev_tail = next;
 }

 spin_unlock_irqrestore(&cs->ev_lock, flags);
}
