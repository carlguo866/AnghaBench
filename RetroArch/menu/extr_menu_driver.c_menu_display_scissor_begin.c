
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int height; unsigned int width; } ;
typedef TYPE_1__ video_frame_info_t ;
struct TYPE_6__ {int (* scissor_begin ) (TYPE_1__*,int,int,unsigned int,unsigned int) ;} ;


 TYPE_4__* menu_disp ;
 int stub1 (TYPE_1__*,int,int,unsigned int,unsigned int) ;

void menu_display_scissor_begin(video_frame_info_t *video_info, int x, int y, unsigned width, unsigned height)
{
   if (menu_disp && menu_disp->scissor_begin)
   {
      if (y < 0)
      {
         if (height < (unsigned)(-y))
            height = 0;
         else
            height += y;
         y = 0;
      }
      if (x < 0)
      {
         if (width < (unsigned)(-x))
            width = 0;
         else
            width += x;
         x = 0;
      }
      if (y >= (int)video_info->height)
      {
         height = 0;
         y = 0;
      }
      if (x >= (int)video_info->width)
      {
         width = 0;
         x = 0;
      }
      if ((y + height) > video_info->height)
         height = video_info->height - y;
      if ((x + width) > video_info->width)
         width = video_info->width - x;

      menu_disp->scissor_begin(video_info, x, y, width, height);
   }
}
