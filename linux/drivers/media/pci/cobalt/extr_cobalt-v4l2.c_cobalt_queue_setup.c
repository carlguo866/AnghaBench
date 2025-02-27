
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {struct cobalt_stream* drv_priv; } ;
struct device {int dummy; } ;
struct cobalt_stream {unsigned int stride; unsigned int height; } ;


 int EINVAL ;
 unsigned int NR_BUFS ;

__attribute__((used)) static int cobalt_queue_setup(struct vb2_queue *q,
   unsigned int *num_buffers, unsigned int *num_planes,
   unsigned int sizes[], struct device *alloc_devs[])
{
 struct cobalt_stream *s = q->drv_priv;
 unsigned size = s->stride * s->height;

 if (*num_buffers < 3)
  *num_buffers = 3;
 if (*num_buffers > NR_BUFS)
  *num_buffers = NR_BUFS;
 if (*num_planes)
  return sizes[0] < size ? -EINVAL : 0;
 *num_planes = 1;
 sizes[0] = size;
 return 0;
}
