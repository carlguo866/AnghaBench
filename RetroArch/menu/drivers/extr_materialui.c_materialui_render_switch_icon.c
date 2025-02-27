
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int video_frame_info_t ;
struct TYPE_6__ {scalar_t__* list; } ;
struct TYPE_5__ {float* list_switch_on_background; float* list_switch_off_background; float* list_switch_on; float* list_switch_off; } ;
struct TYPE_7__ {TYPE_2__ textures; scalar_t__ icon_size; scalar_t__ nav_bar_layout_width; scalar_t__ landscape_entry_margin; scalar_t__ margin; TYPE_1__ colors; } ;
typedef TYPE_3__ materialui_handle_t ;


 size_t MUI_TEXTURE_SWITCH_BG ;
 unsigned int MUI_TEXTURE_SWITCH_OFF ;
 unsigned int MUI_TEXTURE_SWITCH_ON ;
 int materialui_draw_icon (int *,scalar_t__,scalar_t__,int,float,unsigned int,unsigned int,int ,int,float*) ;

__attribute__((used)) static void materialui_render_switch_icon(
      materialui_handle_t *mui,
      video_frame_info_t *video_info,
      float y,
      unsigned width, unsigned height, int x_offset,
      bool on)
{
   unsigned switch_texture_index = on ?
         MUI_TEXTURE_SWITCH_ON : MUI_TEXTURE_SWITCH_OFF;
   float *bg_color = on ?
         mui->colors.list_switch_on_background : mui->colors.list_switch_off_background;
   float *switch_color = on ?
         mui->colors.list_switch_on : mui->colors.list_switch_off;
   int x =
         x_offset + (int)width - (int)mui->margin - (int)mui->landscape_entry_margin -
               (int)mui->nav_bar_layout_width - (int)mui->icon_size;


   if (mui->textures.list[MUI_TEXTURE_SWITCH_BG])
      materialui_draw_icon(video_info,
            mui->icon_size,
            mui->textures.list[MUI_TEXTURE_SWITCH_BG],
            x,
            y,
            width,
            height,
            0,
            1,
            bg_color);


   if (mui->textures.list[switch_texture_index])
      materialui_draw_icon(video_info,
            mui->icon_size,
            mui->textures.list[switch_texture_index],
            x,
            y,
            width,
            height,
            0,
            1,
            switch_color);
}
