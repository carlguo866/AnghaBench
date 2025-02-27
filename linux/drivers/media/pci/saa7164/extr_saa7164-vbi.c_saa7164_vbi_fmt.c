
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int samples_per_line; int sampling_rate; int* start; int* count; int reserved; scalar_t__ flags; scalar_t__ offset; int sample_format; } ;
struct TYPE_4__ {TYPE_1__ vbi; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct file {int dummy; } ;


 int V4L2_PIX_FMT_GREY ;
 int memset (int ,int ,int) ;

__attribute__((used)) static int saa7164_vbi_fmt(struct file *file, void *priv,
      struct v4l2_format *f)
{

 f->fmt.vbi.samples_per_line = 1440;
 f->fmt.vbi.sampling_rate = 27000000;
 f->fmt.vbi.sample_format = V4L2_PIX_FMT_GREY;
 f->fmt.vbi.offset = 0;
 f->fmt.vbi.flags = 0;
 f->fmt.vbi.start[0] = 10;
 f->fmt.vbi.count[0] = 18;
 f->fmt.vbi.start[1] = 263 + 10 + 1;
 f->fmt.vbi.count[1] = 18;
 memset(f->fmt.vbi.reserved, 0, sizeof(f->fmt.vbi.reserved));
 return 0;
}
