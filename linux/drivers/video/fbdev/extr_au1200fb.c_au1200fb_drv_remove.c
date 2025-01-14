
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ len; } ;
struct fb_info {int pseudo_palette; TYPE_1__ cmap; } ;
struct au1200fb_platdata {int dummy; } ;


 struct fb_info** _au1200fb_infos ;
 int au1200_setpanel (int *,struct au1200fb_platdata*) ;
 int device_count ;
 int fb_dealloc_cmap (TYPE_1__*) ;
 int framebuffer_release (struct fb_info*) ;
 int free_irq (int ,void*) ;
 int kfree (int ) ;
 struct au1200fb_platdata* platform_get_drvdata (struct platform_device*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int unregister_framebuffer (struct fb_info*) ;

__attribute__((used)) static int au1200fb_drv_remove(struct platform_device *dev)
{
 struct au1200fb_platdata *pd = platform_get_drvdata(dev);
 struct fb_info *fbi;
 int plane;


 au1200_setpanel(((void*)0), pd);

 for (plane = 0; plane < device_count; ++plane) {
  fbi = _au1200fb_infos[plane];


  unregister_framebuffer(fbi);
  if (fbi->cmap.len != 0)
   fb_dealloc_cmap(&fbi->cmap);
  kfree(fbi->pseudo_palette);

  framebuffer_release(fbi);
  _au1200fb_infos[plane] = ((void*)0);
 }

 free_irq(platform_get_irq(dev, 0), (void *)dev);

 return 0;
}
