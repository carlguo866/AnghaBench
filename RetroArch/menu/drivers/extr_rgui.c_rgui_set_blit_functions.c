
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int blit_line ;
 int blit_line_extended ;
 int blit_line_extended_shadow ;
 int blit_line_regular ;
 int blit_line_regular_shadow ;
 int blit_symbol ;
 int blit_symbol_regular ;
 int blit_symbol_shadow ;

__attribute__((used)) static void rgui_set_blit_functions(bool draw_shadow, bool extended_ascii)
{
   if (draw_shadow)
   {
      if (extended_ascii)
         blit_line = blit_line_extended_shadow;
      else
         blit_line = blit_line_regular_shadow;

      blit_symbol = blit_symbol_shadow;
   }
   else
   {
      if (extended_ascii)
         blit_line = blit_line_extended;
      else
         blit_line = blit_line_regular;

      blit_symbol = blit_symbol_regular;
   }
}
