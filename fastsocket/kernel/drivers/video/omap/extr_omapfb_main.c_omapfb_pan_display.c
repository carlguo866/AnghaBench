
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omapfb_plane_struct {struct omapfb_device* fbdev; } ;
struct fb_var_screeninfo {scalar_t__ xoffset; scalar_t__ yoffset; } ;
struct omapfb_device {struct fb_var_screeninfo new_var; } ;
struct fb_info {struct fb_var_screeninfo var; struct omapfb_plane_struct* par; } ;


 int EINVAL ;
 int ctrl_change_mode (struct fb_info*) ;
 int memcpy (struct fb_var_screeninfo*,struct fb_var_screeninfo*,int) ;
 int omapfb_rqueue_lock (struct omapfb_device*) ;
 int omapfb_rqueue_unlock (struct omapfb_device*) ;
 scalar_t__ set_fb_var (struct fb_info*,struct fb_var_screeninfo*) ;

__attribute__((used)) static int omapfb_pan_display(struct fb_var_screeninfo *var,
          struct fb_info *fbi)
{
 struct omapfb_plane_struct *plane = fbi->par;
 struct omapfb_device *fbdev = plane->fbdev;
 int r = 0;

 omapfb_rqueue_lock(fbdev);
 if (var->xoffset != fbi->var.xoffset ||
     var->yoffset != fbi->var.yoffset) {
  struct fb_var_screeninfo *new_var = &fbdev->new_var;

  memcpy(new_var, &fbi->var, sizeof(*new_var));
  new_var->xoffset = var->xoffset;
  new_var->yoffset = var->yoffset;
  if (set_fb_var(fbi, new_var))
   r = -EINVAL;
  else {
   memcpy(&fbi->var, new_var, sizeof(*new_var));
   ctrl_change_mode(fbi);
  }
 }
 omapfb_rqueue_unlock(fbdev);

 return r;
}
