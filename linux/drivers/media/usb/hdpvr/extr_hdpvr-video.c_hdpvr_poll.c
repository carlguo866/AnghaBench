
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdpvr_device {scalar_t__ status; int wait_data; int io_mutex; int owner; int v4l2_dev; } ;
struct hdpvr_buffer {scalar_t__ status; } ;
struct file {int private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 scalar_t__ BUFSTAT_READY ;
 int EPOLLIN ;
 int EPOLLRDNORM ;
 int MSG_BUFFER ;
 scalar_t__ STATUS_IDLE ;
 int hdpvr_debug ;
 struct hdpvr_buffer* hdpvr_get_next_buffer (struct hdpvr_device*) ;
 scalar_t__ hdpvr_start_streaming (struct hdpvr_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int poll_requested_events (int *) ;
 int poll_wait (struct file*,int *,int *) ;
 int print_buffer_status () ;
 int v4l2_ctrl_poll (struct file*,int *) ;
 int v4l2_dbg (int ,int ,int *,char*) ;
 struct hdpvr_device* video_drvdata (struct file*) ;

__attribute__((used)) static __poll_t hdpvr_poll(struct file *filp, poll_table *wait)
{
 __poll_t req_events = poll_requested_events(wait);
 struct hdpvr_buffer *buf = ((void*)0);
 struct hdpvr_device *dev = video_drvdata(filp);
 __poll_t mask = v4l2_ctrl_poll(filp, wait);

 if (!(req_events & (EPOLLIN | EPOLLRDNORM)))
  return mask;

 mutex_lock(&dev->io_mutex);

 if (dev->status == STATUS_IDLE) {
  if (hdpvr_start_streaming(dev)) {
   v4l2_dbg(MSG_BUFFER, hdpvr_debug, &dev->v4l2_dev,
     "start_streaming failed\n");
   dev->status = STATUS_IDLE;
  } else {
   dev->owner = filp->private_data;
  }

  print_buffer_status();
 }
 mutex_unlock(&dev->io_mutex);

 buf = hdpvr_get_next_buffer(dev);

 if (!buf || buf->status != BUFSTAT_READY) {
  poll_wait(filp, &dev->wait_data, wait);
  buf = hdpvr_get_next_buffer(dev);
 }
 if (buf && buf->status == BUFSTAT_READY)
  mask |= EPOLLIN | EPOLLRDNORM;

 return mask;
}
