
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nouveau_fifo {int uevent; } ;
struct TYPE_5__ {int func; } ;
struct nouveau_fence_uevent {TYPE_2__ handler; struct nouveau_fence_priv* priv; } ;
struct nouveau_fence_priv {int waiting; } ;
struct nouveau_fence {int timeout; struct nouveau_channel* channel; } ;
struct nouveau_channel {TYPE_1__* drm; } ;
struct TYPE_4__ {struct nouveau_fence_priv* fence; int device; } ;


 int EBUSY ;
 int jiffies ;
 int nouveau_event_get (int ,int ,TYPE_2__*) ;
 int nouveau_event_put (int ,int ,TYPE_2__*) ;
 int nouveau_fence_done (struct nouveau_fence*) ;
 int nouveau_fence_wait_uevent_handler ;
 struct nouveau_fifo* nouveau_fifo (int ) ;
 scalar_t__ time_after_eq (int,int) ;
 scalar_t__ time_before (int,int) ;
 scalar_t__ unlikely (int) ;
 int wait_event (int ,int ) ;
 int wait_event_interruptible (int ,int ) ;
 int wait_event_interruptible_timeout (int ,int ,unsigned long) ;
 int wait_event_timeout (int ,int ,unsigned long) ;

__attribute__((used)) static int
nouveau_fence_wait_uevent(struct nouveau_fence *fence, bool intr)

{
 struct nouveau_channel *chan = fence->channel;
 struct nouveau_fifo *pfifo = nouveau_fifo(chan->drm->device);
 struct nouveau_fence_priv *priv = chan->drm->fence;
 struct nouveau_fence_uevent uevent = {
  .handler.func = nouveau_fence_wait_uevent_handler,
  .priv = priv,
 };
 int ret = 0;

 nouveau_event_get(pfifo->uevent, 0, &uevent.handler);

 if (fence->timeout) {
  unsigned long timeout = fence->timeout - jiffies;

  if (time_before(jiffies, fence->timeout)) {
   if (intr) {
    ret = wait_event_interruptible_timeout(
      priv->waiting,
      nouveau_fence_done(fence),
      timeout);
   } else {
    ret = wait_event_timeout(priv->waiting,
      nouveau_fence_done(fence),
      timeout);
   }
  }

  if (ret >= 0) {
   fence->timeout = jiffies + ret;
   if (time_after_eq(jiffies, fence->timeout))
    ret = -EBUSY;
  }
 } else {
  if (intr) {
   ret = wait_event_interruptible(priv->waiting,
     nouveau_fence_done(fence));
  } else {
   wait_event(priv->waiting, nouveau_fence_done(fence));
  }
 }

 nouveau_event_put(pfifo->uevent, 0, &uevent.handler);
 if (unlikely(ret < 0))
  return ret;

 return 0;
}
