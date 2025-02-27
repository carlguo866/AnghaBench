
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dispc_device {int dummy; } ;
typedef enum omap_plane_id { ____Placeholder_omap_plane_id } omap_plane_id ;
typedef enum omap_color_component { ____Placeholder_omap_color_component } omap_color_component ;


 int dispc_ovl_set_fir (struct dispc_device*,int,int,int,int) ;
 int dispc_ovl_set_scale_coef (struct dispc_device*,int,int,int,int,int) ;

__attribute__((used)) static void dispc_ovl_set_scale_param(struct dispc_device *dispc,
          enum omap_plane_id plane,
          u16 orig_width, u16 orig_height,
          u16 out_width, u16 out_height,
          bool five_taps, u8 rotation,
          enum omap_color_component color_comp)
{
 int fir_hinc, fir_vinc;

 fir_hinc = 1024 * orig_width / out_width;
 fir_vinc = 1024 * orig_height / out_height;

 dispc_ovl_set_scale_coef(dispc, plane, fir_hinc, fir_vinc, five_taps,
     color_comp);
 dispc_ovl_set_fir(dispc, plane, fir_hinc, fir_vinc, color_comp);
}
