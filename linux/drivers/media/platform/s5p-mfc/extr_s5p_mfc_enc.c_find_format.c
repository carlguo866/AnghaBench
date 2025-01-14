
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pixelformat; } ;
struct TYPE_4__ {TYPE_1__ pix_mp; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct s5p_mfc_fmt {scalar_t__ fourcc; unsigned int type; } ;


 unsigned int NUM_FORMATS ;
 struct s5p_mfc_fmt* formats ;

__attribute__((used)) static struct s5p_mfc_fmt *find_format(struct v4l2_format *f, unsigned int t)
{
 unsigned int i;

 for (i = 0; i < NUM_FORMATS; i++) {
  if (formats[i].fourcc == f->fmt.pix_mp.pixelformat &&
      formats[i].type == t)
   return &formats[i];
 }
 return ((void*)0);
}
