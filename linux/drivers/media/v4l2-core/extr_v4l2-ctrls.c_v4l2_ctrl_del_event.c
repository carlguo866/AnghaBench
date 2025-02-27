
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subscribed_event {int node; int id; TYPE_1__* fh; } ;
struct v4l2_ctrl {int dummy; } ;
struct TYPE_2__ {int ctrl_handler; } ;


 int list_del (int *) ;
 struct v4l2_ctrl* v4l2_ctrl_find (int ,int ) ;
 int v4l2_ctrl_lock (struct v4l2_ctrl*) ;
 int v4l2_ctrl_unlock (struct v4l2_ctrl*) ;

__attribute__((used)) static void v4l2_ctrl_del_event(struct v4l2_subscribed_event *sev)
{
 struct v4l2_ctrl *ctrl = v4l2_ctrl_find(sev->fh->ctrl_handler, sev->id);

 if (ctrl == ((void*)0))
  return;

 v4l2_ctrl_lock(ctrl);
 list_del(&sev->node);
 v4l2_ctrl_unlock(ctrl);
}
