
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int size; } ;
struct i810fb_par {TYPE_1__ fb; } ;
struct fb_videomode {int dummy; } ;
struct fb_var_screeninfo {int yres_virtual; int xres_virtual; int bits_per_pixel; int yres; int xres; } ;
struct TYPE_6__ {int dclkmax; int dclkmin; scalar_t__ modedb_len; int hfmin; int hfmax; int vfmin; int vfmax; scalar_t__ gtf; } ;
struct TYPE_5__ {int yres; } ;
struct fb_info {TYPE_3__ monspecs; int modelist; TYPE_2__ var; struct i810fb_par* par; } ;


 int EINVAL ;
 int ENOMEM ;
 int FB_MAXTIMINGS ;
 int HFMAX ;
 int HFMIN ;
 int VFMAX ;
 int VFMIN ;
 struct fb_videomode* fb_find_best_mode (struct fb_var_screeninfo*,int *) ;
 scalar_t__ fb_get_mode (int ,int ,struct fb_var_screeninfo*,struct fb_info*) ;
 int fb_validate_mode (struct fb_var_screeninfo*,struct fb_info*) ;
 int fb_videomode_to_var (struct fb_var_screeninfo*,struct fb_videomode const*) ;
 int get_line_length (struct i810fb_par*,int,int) ;
 int printk (char*,...) ;

__attribute__((used)) static int i810_check_params(struct fb_var_screeninfo *var,
        struct fb_info *info)
{
 struct i810fb_par *par = info->par;
 int line_length, vidmem, mode_valid = 0, retval = 0;
 u32 vyres = var->yres_virtual, vxres = var->xres_virtual;




 line_length = get_line_length(par, vxres, var->bits_per_pixel);
 vidmem = line_length*vyres;

 if (vidmem > par->fb.size) {
  vyres = par->fb.size/line_length;
  if (vyres < var->yres) {
   vyres = info->var.yres;
   vxres = par->fb.size/vyres;
   vxres /= var->bits_per_pixel >> 3;
   line_length = get_line_length(par, vxres,
            var->bits_per_pixel);
   vidmem = line_length * info->var.yres;
   if (vxres < var->xres) {
    printk("i810fb: required video memory, "
           "%d bytes, for %dx%d-%d (virtual) "
           "is out of range\n",
           vidmem, vxres, vyres,
           var->bits_per_pixel);
    return -ENOMEM;
   }
  }
 }

 var->xres_virtual = vxres;
 var->yres_virtual = vyres;




 switch (var->bits_per_pixel) {
 case 8:
  info->monspecs.dclkmax = 234000000;
  break;
 case 16:
  info->monspecs.dclkmax = 229000000;
  break;
 case 24:
 case 32:
  info->monspecs.dclkmax = 204000000;
  break;
 }

 info->monspecs.dclkmin = 15000000;

 if (!fb_validate_mode(var, info))
  mode_valid = 1;
 if (!mode_valid && info->monspecs.modedb_len == 0) {
  if (fb_get_mode(FB_MAXTIMINGS, 0, var, info)) {
   int default_sync = (info->monspecs.hfmin-HFMIN)
    |(info->monspecs.hfmax-HFMAX)
    |(info->monspecs.vfmin-VFMIN)
    |(info->monspecs.vfmax-VFMAX);
   printk("i810fb: invalid video mode%s\n",
          default_sync ? "" : ". Specifying "
          "vsyncN/hsyncN parameters may help");
   retval = -EINVAL;
  }
 }

 return retval;
}
