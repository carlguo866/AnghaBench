
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_control {int value; int id; } ;
struct TYPE_4__ {TYPE_1__* mc_head; } ;
struct pvr2_v4l2_fh {TYPE_2__ channel; } ;
struct pvr2_hdw {int dummy; } ;
struct file {struct pvr2_v4l2_fh* private_data; } ;
struct TYPE_3__ {struct pvr2_hdw* hdw; } ;


 int pvr2_ctrl_get_value (int ,int*) ;
 int pvr2_hdw_get_ctrl_v4l (struct pvr2_hdw*,int ) ;

__attribute__((used)) static int pvr2_g_ctrl(struct file *file, void *priv, struct v4l2_control *vc)
{
 struct pvr2_v4l2_fh *fh = file->private_data;
 struct pvr2_hdw *hdw = fh->channel.mc_head->hdw;
 int val = 0;
 int ret;

 ret = pvr2_ctrl_get_value(pvr2_hdw_get_ctrl_v4l(hdw, vc->id),
   &val);
 vc->value = val;
 return ret;
}
