
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct wl1271 {int dev; int * mbox_ptr; } ;


 int DEBUG_CMD ;
 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int WL1271_EVENT_TIMEOUT ;
 scalar_t__ WL1271_WAIT_EVENT_FAST_POLL_COUNT ;
 unsigned long jiffies ;
 int kfree (int*) ;
 int* kmalloc (int,int) ;
 unsigned long msecs_to_jiffies (int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int pm_runtime_put_noidle (int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;
 int wl1271_debug (int ,char*,int) ;
 int wlcore_read (struct wl1271*,int ,int*,int,int) ;

int wlcore_cmd_wait_for_event_or_timeout(struct wl1271 *wl,
      u32 mask, bool *timeout)
{
 u32 *events_vector;
 u32 event;
 unsigned long timeout_time;
 u16 poll_count = 0;
 int ret = 0;

 *timeout = 0;

 events_vector = kmalloc(sizeof(*events_vector), GFP_KERNEL | GFP_DMA);
 if (!events_vector)
  return -ENOMEM;

 timeout_time = jiffies + msecs_to_jiffies(WL1271_EVENT_TIMEOUT);

 ret = pm_runtime_get_sync(wl->dev);
 if (ret < 0) {
  pm_runtime_put_noidle(wl->dev);
  goto free_vector;
 }

 do {
  if (time_after(jiffies, timeout_time)) {
   wl1271_debug(DEBUG_CMD, "timeout waiting for event %d",
         (int)mask);
   *timeout = 1;
   goto out;
  }

  poll_count++;
  if (poll_count < WL1271_WAIT_EVENT_FAST_POLL_COUNT)
   usleep_range(50, 51);
  else
   usleep_range(1000, 5000);


  ret = wlcore_read(wl, wl->mbox_ptr[0], events_vector,
      sizeof(*events_vector), 0);
  if (ret < 0)
   goto out;

  event = *events_vector & mask;

  ret = wlcore_read(wl, wl->mbox_ptr[1], events_vector,
      sizeof(*events_vector), 0);
  if (ret < 0)
   goto out;

  event |= *events_vector & mask;
 } while (!event);

out:
 pm_runtime_mark_last_busy(wl->dev);
 pm_runtime_put_autosuspend(wl->dev);
free_vector:
 kfree(events_vector);
 return ret;
}
