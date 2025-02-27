
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct offb_par {scalar_t__ cmap_type; scalar_t__ cmap_adr; } ;
struct fb_info {scalar_t__ par; } ;


 scalar_t__ AVIVO_DC_LUTA_BLACK_OFFSET_BLUE ;
 scalar_t__ AVIVO_DC_LUTA_BLACK_OFFSET_GREEN ;
 scalar_t__ AVIVO_DC_LUTA_BLACK_OFFSET_RED ;
 scalar_t__ AVIVO_DC_LUTA_CONTROL ;
 scalar_t__ AVIVO_DC_LUTA_WHITE_OFFSET_BLUE ;
 scalar_t__ AVIVO_DC_LUTA_WHITE_OFFSET_GREEN ;
 scalar_t__ AVIVO_DC_LUTA_WHITE_OFFSET_RED ;
 scalar_t__ AVIVO_DC_LUTB_BLACK_OFFSET_BLUE ;
 scalar_t__ AVIVO_DC_LUTB_BLACK_OFFSET_GREEN ;
 scalar_t__ AVIVO_DC_LUTB_BLACK_OFFSET_RED ;
 scalar_t__ AVIVO_DC_LUTB_CONTROL ;
 scalar_t__ AVIVO_DC_LUTB_WHITE_OFFSET_BLUE ;
 scalar_t__ AVIVO_DC_LUTB_WHITE_OFFSET_GREEN ;
 scalar_t__ AVIVO_DC_LUTB_WHITE_OFFSET_RED ;
 scalar_t__ AVIVO_DC_LUT_RW_MODE ;
 scalar_t__ AVIVO_DC_LUT_RW_SELECT ;
 scalar_t__ AVIVO_DC_LUT_WRITE_EN_MASK ;
 scalar_t__ cmap_avivo ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int offb_set_par(struct fb_info *info)
{
 struct offb_par *par = (struct offb_par *) info->par;


 if (par->cmap_type == cmap_avivo) {
  writel(0, par->cmap_adr + AVIVO_DC_LUTA_CONTROL);
  writel(0, par->cmap_adr + AVIVO_DC_LUTA_BLACK_OFFSET_BLUE);
  writel(0, par->cmap_adr + AVIVO_DC_LUTA_BLACK_OFFSET_GREEN);
  writel(0, par->cmap_adr + AVIVO_DC_LUTA_BLACK_OFFSET_RED);
  writel(0x0000ffff, par->cmap_adr + AVIVO_DC_LUTA_WHITE_OFFSET_BLUE);
  writel(0x0000ffff, par->cmap_adr + AVIVO_DC_LUTA_WHITE_OFFSET_GREEN);
  writel(0x0000ffff, par->cmap_adr + AVIVO_DC_LUTA_WHITE_OFFSET_RED);
  writel(0, par->cmap_adr + AVIVO_DC_LUTB_CONTROL);
  writel(0, par->cmap_adr + AVIVO_DC_LUTB_BLACK_OFFSET_BLUE);
  writel(0, par->cmap_adr + AVIVO_DC_LUTB_BLACK_OFFSET_GREEN);
  writel(0, par->cmap_adr + AVIVO_DC_LUTB_BLACK_OFFSET_RED);
  writel(0x0000ffff, par->cmap_adr + AVIVO_DC_LUTB_WHITE_OFFSET_BLUE);
  writel(0x0000ffff, par->cmap_adr + AVIVO_DC_LUTB_WHITE_OFFSET_GREEN);
  writel(0x0000ffff, par->cmap_adr + AVIVO_DC_LUTB_WHITE_OFFSET_RED);
  writel(1, par->cmap_adr + AVIVO_DC_LUT_RW_SELECT);
  writel(0, par->cmap_adr + AVIVO_DC_LUT_RW_MODE);
  writel(0x0000003f, par->cmap_adr + AVIVO_DC_LUT_WRITE_EN_MASK);
  writel(0, par->cmap_adr + AVIVO_DC_LUT_RW_SELECT);
  writel(0, par->cmap_adr + AVIVO_DC_LUT_RW_MODE);
  writel(0x0000003f, par->cmap_adr + AVIVO_DC_LUT_WRITE_EN_MASK);
 }
 return 0;
}
