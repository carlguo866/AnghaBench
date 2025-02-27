
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mouse_last_x; int mouse_x; int mouse_last_y; int mouse_y; unsigned int mouse_l; unsigned int mouse_m; unsigned int mouse_r; int display; int win; scalar_t__ grab_mouse; } ;
typedef TYPE_1__ x11_input_t ;
struct video_viewport {int full_width; int full_height; scalar_t__ height; scalar_t__ width; scalar_t__ y; scalar_t__ x; } ;
typedef int Window ;


 unsigned int Button1Mask ;
 unsigned int Button2Mask ;
 unsigned int Button3Mask ;
 int False ;
 int None ;
 int XQueryPointer (int ,int ,int *,int *,int*,int*,int*,int*,unsigned int*) ;
 int XSync (int ,int ) ;
 int XWarpPointer (int ,int ,int ,int ,int ,int ,int ,int,int) ;
 scalar_t__ g_x11_entered ;
 int video_driver_get_viewport_info (struct video_viewport*) ;
 scalar_t__ video_driver_has_focus () ;

__attribute__((used)) static void x_input_poll_mouse(x11_input_t *x11)
{
   unsigned mask;
   int root_x, root_y, win_x, win_y;
   Window root_win, child_win;

   x11->mouse_last_x = x11->mouse_x;
   x11->mouse_last_y = x11->mouse_y;

   XQueryPointer(x11->display,
            x11->win,
            &root_win, &child_win,
            &root_x, &root_y,
            &win_x, &win_y,
            &mask);

   if (g_x11_entered)
   {
      x11->mouse_x = win_x;
      x11->mouse_y = win_y;
      x11->mouse_l = mask & Button1Mask;
      x11->mouse_m = mask & Button2Mask;
      x11->mouse_r = mask & Button3Mask;


      if (x11->grab_mouse && video_driver_has_focus())
      {
         int mid_w, mid_h;
         struct video_viewport vp;

         vp.x = 0;
         vp.y = 0;
         vp.width = 0;
         vp.height = 0;
         vp.full_width = 0;
         vp.full_height = 0;

         video_driver_get_viewport_info(&vp);

         mid_w = vp.full_width >> 1;
         mid_h = vp.full_height >> 1;

         if (x11->mouse_x != mid_w || x11->mouse_y != mid_h)
         {
            XWarpPointer(x11->display, None,
                  x11->win, 0, 0, 0, 0,
                  mid_w, mid_h);
            XSync(x11->display, False);
         }
         x11->mouse_last_x = mid_w;
         x11->mouse_last_y = mid_h;
      }
   }
}
