
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uvesafb_par {scalar_t__ pmi_start; } ;
struct fb_var_screeninfo {int yoffset; int xoffset; } ;
struct TYPE_2__ {int line_length; } ;
struct fb_info {TYPE_1__ fix; struct uvesafb_par* par; } ;



__attribute__((used)) static int uvesafb_pan_display(struct fb_var_screeninfo *var,
  struct fb_info *info)
{
 return 0;
}
