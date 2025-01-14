
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fh {int dummy; } ;
struct v4l2_event_subscription {scalar_t__ type; } ;


 int EINVAL ;
 scalar_t__ UVC_EVENT_FIRST ;
 scalar_t__ UVC_EVENT_LAST ;
 int v4l2_event_subscribe (struct v4l2_fh*,struct v4l2_event_subscription const*,int,int *) ;

__attribute__((used)) static int
uvc_v4l2_subscribe_event(struct v4l2_fh *fh,
    const struct v4l2_event_subscription *sub)
{
 if (sub->type < UVC_EVENT_FIRST || sub->type > UVC_EVENT_LAST)
  return -EINVAL;

 return v4l2_event_subscribe(fh, sub, 2, ((void*)0));
}
