
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct osd_layer_config {void* ypos; void* xpos; scalar_t__ ysize; scalar_t__ xsize; } ;
struct TYPE_4__ {struct osd_layer_config config; } ;
struct vpbe_layer {TYPE_2__ layer_info; } ;
struct vpbe_display {struct vpbe_device* vpbe_dev; } ;
struct TYPE_3__ {scalar_t__ yres; scalar_t__ xres; } ;
struct vpbe_device {int v4l2_dev; TYPE_1__ current_timings; } ;


 int debug ;
 void* min (unsigned int,scalar_t__) ;
 int v4l2_dbg (int,int ,int *,char*,void*,void*) ;

__attribute__((used)) static void vpbe_disp_adj_position(struct vpbe_display *disp_dev,
   struct vpbe_layer *layer,
   int top, int left)
{
 struct osd_layer_config *cfg = &layer->layer_info.config;
 struct vpbe_device *vpbe_dev = disp_dev->vpbe_dev;

 cfg->xpos = min((unsigned int)left,
   vpbe_dev->current_timings.xres - cfg->xsize);
 cfg->ypos = min((unsigned int)top,
   vpbe_dev->current_timings.yres - cfg->ysize);

 v4l2_dbg(1, debug, &vpbe_dev->v4l2_dev,
  "new xpos = %d, ypos = %d\n",
  cfg->xpos, cfg->ypos);
}
