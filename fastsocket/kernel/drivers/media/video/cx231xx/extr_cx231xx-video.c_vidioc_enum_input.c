
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_input {unsigned int index; int std; int type; int name; } ;
struct file {int dummy; } ;
struct cx231xx_fh {struct cx231xx* dev; } ;
struct cx231xx {TYPE_1__* vdev; } ;
struct TYPE_4__ {size_t type; } ;
struct TYPE_3__ {int tvnorms; } ;


 size_t CX231XX_VMUX_CABLE ;
 size_t CX231XX_VMUX_TELEVISION ;
 int EINVAL ;
 TYPE_2__* INPUT (unsigned int) ;
 unsigned int MAX_CX231XX_INPUT ;
 int V4L2_INPUT_TYPE_CAMERA ;
 int V4L2_INPUT_TYPE_TUNER ;
 int * iname ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int vidioc_enum_input(struct file *file, void *priv,
        struct v4l2_input *i)
{
 struct cx231xx_fh *fh = priv;
 struct cx231xx *dev = fh->dev;
 unsigned int n;

 n = i->index;
 if (n >= MAX_CX231XX_INPUT)
  return -EINVAL;
 if (0 == INPUT(n)->type)
  return -EINVAL;

 i->index = n;
 i->type = V4L2_INPUT_TYPE_CAMERA;

 strcpy(i->name, iname[INPUT(n)->type]);

 if ((CX231XX_VMUX_TELEVISION == INPUT(n)->type) ||
     (CX231XX_VMUX_CABLE == INPUT(n)->type))
  i->type = V4L2_INPUT_TYPE_TUNER;

 i->std = dev->vdev->tvnorms;

 return 0;
}
