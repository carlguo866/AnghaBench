
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int line_length; scalar_t__ smem_start; int visual; } ;
struct TYPE_9__ {int bits_per_pixel; int yoffset; int xoffset; int yres; } ;
struct fb_info {TYPE_1__ fix; TYPE_5__ var; struct da8xx_fb_par* par; } ;
struct TYPE_8__ {int xres; } ;
struct TYPE_7__ {int bpp; } ;
struct da8xx_fb_par {scalar_t__ dma_end; scalar_t__ dma_start; int dev; TYPE_3__ mode; TYPE_2__ cfg; } ;


 int DA8XX_FRAME_WAIT ;
 int FB_VISUAL_PSEUDOCOLOR ;
 int FB_VISUAL_TRUECOLOR ;
 int LCD_DMA_FRM_BUF_BASE_ADDR_0_REG ;
 int LCD_DMA_FRM_BUF_BASE_ADDR_1_REG ;
 int LCD_DMA_FRM_BUF_CEILING_ADDR_0_REG ;
 int LCD_DMA_FRM_BUF_CEILING_ADDR_1_REG ;
 int da8xx_fb_is_raster_enabled () ;
 int dev_err (int ,char*) ;
 int fb_var_to_videomode (TYPE_3__*,TYPE_5__*) ;
 int lcd_disable_raster (int ) ;
 int lcd_enable_raster () ;
 int lcd_init (struct da8xx_fb_par*,TYPE_2__*,TYPE_3__*) ;
 int lcdc_write (scalar_t__,int ) ;

__attribute__((used)) static int da8xxfb_set_par(struct fb_info *info)
{
 struct da8xx_fb_par *par = info->par;
 int ret;
 bool raster = da8xx_fb_is_raster_enabled();

 if (raster)
  lcd_disable_raster(DA8XX_FRAME_WAIT);

 fb_var_to_videomode(&par->mode, &info->var);

 par->cfg.bpp = info->var.bits_per_pixel;

 info->fix.visual = (par->cfg.bpp <= 8) ?
    FB_VISUAL_PSEUDOCOLOR : FB_VISUAL_TRUECOLOR;
 info->fix.line_length = (par->mode.xres * par->cfg.bpp) / 8;

 ret = lcd_init(par, &par->cfg, &par->mode);
 if (ret < 0) {
  dev_err(par->dev, "lcd init failed\n");
  return ret;
 }

 par->dma_start = info->fix.smem_start +
    info->var.yoffset * info->fix.line_length +
    info->var.xoffset * info->var.bits_per_pixel / 8;
 par->dma_end = par->dma_start +
    info->var.yres * info->fix.line_length - 1;

 lcdc_write(par->dma_start, LCD_DMA_FRM_BUF_BASE_ADDR_0_REG);
 lcdc_write(par->dma_end, LCD_DMA_FRM_BUF_CEILING_ADDR_0_REG);
 lcdc_write(par->dma_start, LCD_DMA_FRM_BUF_BASE_ADDR_1_REG);
 lcdc_write(par->dma_end, LCD_DMA_FRM_BUF_CEILING_ADDR_1_REG);

 if (raster)
  lcd_enable_raster();

 return 0;
}
