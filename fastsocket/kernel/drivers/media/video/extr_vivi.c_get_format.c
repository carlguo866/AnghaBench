
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vivi_fmt {scalar_t__ fourcc; } ;
struct TYPE_3__ {scalar_t__ pixelformat; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;


 unsigned int ARRAY_SIZE (struct vivi_fmt*) ;
 struct vivi_fmt* formats ;

__attribute__((used)) static struct vivi_fmt *get_format(struct v4l2_format *f)
{
 struct vivi_fmt *fmt;
 unsigned int k;

 for (k = 0; k < ARRAY_SIZE(formats); k++) {
  fmt = &formats[k];
  if (fmt->fourcc == f->fmt.pix.pixelformat)
   break;
 }

 if (k == ARRAY_SIZE(formats))
  return ((void*)0);

 return &formats[k];
}
