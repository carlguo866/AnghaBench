
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct wiimote_data {TYPE_1__ state; } ;
typedef int cmd ;
typedef int __u8 ;


 int WIIPROTO_FLAG_RUMBLE ;
 int WIIPROTO_REQ_RUMBLE ;
 int wiimote_queue (struct wiimote_data*,int*,int) ;
 int wiiproto_keep_rumble (struct wiimote_data*,int*) ;

void wiiproto_req_rumble(struct wiimote_data *wdata, __u8 rumble)
{
 __u8 cmd[2];

 rumble = !!rumble;
 if (rumble == !!(wdata->state.flags & WIIPROTO_FLAG_RUMBLE))
  return;

 if (rumble)
  wdata->state.flags |= WIIPROTO_FLAG_RUMBLE;
 else
  wdata->state.flags &= ~WIIPROTO_FLAG_RUMBLE;

 cmd[0] = WIIPROTO_REQ_RUMBLE;
 cmd[1] = 0;

 wiiproto_keep_rumble(wdata, &cmd[1]);
 wiimote_queue(wdata, cmd, sizeof(cmd));
}
