
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OMAPFB_AUTO_UPDATE ;
 int omap_lcdc_set_update_mode (int ) ;

__attribute__((used)) static void omap_lcdc_resume(void)
{
 omap_lcdc_set_update_mode(OMAPFB_AUTO_UPDATE);
}
