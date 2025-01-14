
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_queue {struct cx8800_dev* drv_priv; } ;
struct device {int dummy; } ;
struct cx8800_dev {TYPE_1__* core; } ;
struct TYPE_2__ {int tvnorm; } ;


 int V4L2_STD_525_60 ;
 int VBI_LINE_LENGTH ;
 int VBI_LINE_NTSC_COUNT ;
 int VBI_LINE_PAL_COUNT ;

__attribute__((used)) static int queue_setup(struct vb2_queue *q,
         unsigned int *num_buffers, unsigned int *num_planes,
         unsigned int sizes[], struct device *alloc_devs[])
{
 struct cx8800_dev *dev = q->drv_priv;

 *num_planes = 1;
 if (dev->core->tvnorm & V4L2_STD_525_60)
  sizes[0] = VBI_LINE_NTSC_COUNT * VBI_LINE_LENGTH * 2;
 else
  sizes[0] = VBI_LINE_PAL_COUNT * VBI_LINE_LENGTH * 2;
 return 0;
}
