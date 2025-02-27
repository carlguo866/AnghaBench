
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int width; int height; int left; int top; } ;
struct v4l2_selection {scalar_t__ type; int target; TYPE_1__ r; } ;
struct file {int dummy; } ;
struct cx18 {int is_50hz; } ;
struct TYPE_4__ {struct cx18* cx; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;


 TYPE_2__* fh2id (void*) ;

__attribute__((used)) static int cx18_g_selection(struct file *file, void *fh,
       struct v4l2_selection *sel)
{
 struct cx18 *cx = fh2id(fh)->cx;

 if (sel->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;
 switch (sel->target) {
 case 129:
 case 128:
  sel->r.top = sel->r.left = 0;
  sel->r.width = 720;
  sel->r.height = cx->is_50hz ? 576 : 480;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
