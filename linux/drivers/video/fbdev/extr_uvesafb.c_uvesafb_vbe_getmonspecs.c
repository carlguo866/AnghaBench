
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;
struct vbe_mode_ib {int y_res; int x_res; } ;
struct uvesafb_par {int nocrtc; int vbe_modes_cnt; struct vbe_mode_ib* vbe_modes; } ;
struct uvesafb_ktask {int dummy; } ;
struct fb_videomode {int dummy; } ;
struct fb_var_screeninfo {int gtf; int dclkmax; int hfmax; int vfmin; int hfmin; int modedb_len; struct fb_videomode* modedb; int yres; int xres; scalar_t__ vfmax; scalar_t__ dclkmin; } ;
struct fb_info {int modelist; struct fb_var_screeninfo monspecs; struct uvesafb_par* par; } ;


 int FB_IGNOREMON ;
 int FB_VSYNCTIMINGS ;
 int VESA_MODEDB_SIZE ;
 int fb_add_videomode (struct fb_videomode*,int *) ;
 int fb_get_mode (int,int,struct fb_var_screeninfo*,struct fb_info*) ;
 int fb_var_to_videomode (struct fb_videomode*,struct fb_var_screeninfo*) ;
 int maxclk ;
 int maxhf ;
 scalar_t__ maxvf ;
 int memset (struct fb_var_screeninfo*,int ,int) ;
 int pr_info (char*,...) ;
 scalar_t__ uvesafb_is_valid_mode (struct fb_videomode*,struct fb_info*) ;
 scalar_t__ uvesafb_vbe_getedid (struct uvesafb_ktask*,struct fb_info*) ;
 struct fb_videomode* vesa_modes ;

__attribute__((used)) static void uvesafb_vbe_getmonspecs(struct uvesafb_ktask *task,
        struct fb_info *info)
{
 struct uvesafb_par *par = info->par;
 int i;

 memset(&info->monspecs, 0, sizeof(info->monspecs));






 if (uvesafb_vbe_getedid(task, info)) {
  info->monspecs.gtf = 0;
  par->nocrtc = 1;
 }


 if (maxclk)
  info->monspecs.dclkmax = maxclk * 1000000;
 if (maxvf)
  info->monspecs.vfmax = maxvf;
 if (maxhf)
  info->monspecs.hfmax = maxhf * 1000;





 if (info->monspecs.gtf == 0 && maxclk && maxvf && maxhf) {
  info->monspecs.dclkmin = 0;
  info->monspecs.vfmin = 60;
  info->monspecs.hfmin = 29000;
  info->monspecs.gtf = 1;
  par->nocrtc = 0;
 }

 if (info->monspecs.gtf)
  pr_info("monitor limits: vf = %d Hz, hf = %d kHz, clk = %d MHz\n",
   info->monspecs.vfmax,
   (int)(info->monspecs.hfmax / 1000),
   (int)(info->monspecs.dclkmax / 1000000));
 else
  pr_info("no monitor limits have been set, default refresh rate will be used\n");


 for (i = 0; i < par->vbe_modes_cnt; i++) {
  struct fb_var_screeninfo var;
  struct vbe_mode_ib *mode;
  struct fb_videomode vmode;

  mode = &par->vbe_modes[i];
  memset(&var, 0, sizeof(var));

  var.xres = mode->x_res;
  var.yres = mode->y_res;

  fb_get_mode(FB_VSYNCTIMINGS | FB_IGNOREMON, 60, &var, info);
  fb_var_to_videomode(&vmode, &var);
  fb_add_videomode(&vmode, &info->modelist);
 }


 for (i = 0; i < VESA_MODEDB_SIZE; i++) {
  if (uvesafb_is_valid_mode((struct fb_videomode *)
      &vesa_modes[i], info))
   fb_add_videomode(&vesa_modes[i], &info->modelist);
 }

 for (i = 0; i < info->monspecs.modedb_len; i++) {
  if (uvesafb_is_valid_mode(&info->monspecs.modedb[i], info))
   fb_add_videomode(&info->monspecs.modedb[i],
     &info->modelist);
 }

 return;
}
