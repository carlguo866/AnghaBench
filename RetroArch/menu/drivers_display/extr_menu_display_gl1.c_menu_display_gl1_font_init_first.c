
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int font_data_t ;


 int FONT_DRIVER_RENDER_OPENGL1_API ;
 int * font_driver_init_first (void*,char const*,float,int,int,int ) ;

__attribute__((used)) static bool menu_display_gl1_font_init_first(
      void **font_handle, void *video_data,
      const char *font_path, float menu_font_size,
      bool is_threaded)
{
   font_data_t **handle = (font_data_t**)font_handle;
   if (!(*handle = font_driver_init_first(video_data,
         font_path, menu_font_size, 1,
         is_threaded,
         FONT_DRIVER_RENDER_OPENGL1_API)))
       return 0;
   return 1;
}
