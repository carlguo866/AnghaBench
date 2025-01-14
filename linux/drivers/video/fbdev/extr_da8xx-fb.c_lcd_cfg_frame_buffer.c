
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct da8xx_fb_par {int palette_sz; } ;


 int EINVAL ;
 int LCD_RASTER_CTRL_REG ;
 int LCD_RASTER_ORDER ;
 int LCD_RASTER_TIMING_0_REG ;
 int LCD_RASTER_TIMING_1_REG ;
 int LCD_RASTER_TIMING_2_REG ;
 int LCD_V2_TFT_24BPP_MODE ;
 int LCD_V2_TFT_24BPP_UNPACK ;
 scalar_t__ LCD_VERSION_1 ;
 scalar_t__ LCD_VERSION_2 ;
 scalar_t__ lcd_revision ;
 int lcdc_read (int ) ;
 int lcdc_write (int,int ) ;

__attribute__((used)) static int lcd_cfg_frame_buffer(struct da8xx_fb_par *par, u32 width, u32 height,
  u32 bpp, u32 raster_order)
{
 u32 reg;

 if (bpp > 16 && lcd_revision == LCD_VERSION_1)
  return -EINVAL;



 if (lcd_revision == LCD_VERSION_1) {




  width &= 0x3f0;
 } else {




  width &= 0x7f0;
 }

 reg = lcdc_read(LCD_RASTER_TIMING_0_REG);
 reg &= 0xfffffc00;
 if (lcd_revision == LCD_VERSION_1) {
  reg |= ((width >> 4) - 1) << 4;
 } else {
  width = (width >> 4) - 1;
  reg |= ((width & 0x3f) << 4) | ((width & 0x40) >> 3);
 }
 lcdc_write(reg, LCD_RASTER_TIMING_0_REG);



 reg = lcdc_read(LCD_RASTER_TIMING_1_REG);
 reg = ((height - 1) & 0x3ff) | (reg & 0xfffffc00);
 lcdc_write(reg, LCD_RASTER_TIMING_1_REG);


 if (lcd_revision == LCD_VERSION_2) {
  reg = lcdc_read(LCD_RASTER_TIMING_2_REG);
  reg |= ((height - 1) & 0x400) << 16;
  lcdc_write(reg, LCD_RASTER_TIMING_2_REG);
 }


 reg = lcdc_read(LCD_RASTER_CTRL_REG) & ~(1 << 8);
 if (raster_order)
  reg |= LCD_RASTER_ORDER;

 par->palette_sz = 16 * 2;

 switch (bpp) {
 case 1:
 case 2:
 case 4:
 case 16:
  break;
 case 24:
  reg |= LCD_V2_TFT_24BPP_MODE;
  break;
 case 32:
  reg |= LCD_V2_TFT_24BPP_MODE;
  reg |= LCD_V2_TFT_24BPP_UNPACK;
  break;
 case 8:
  par->palette_sz = 256 * 2;
  break;

 default:
  return -EINVAL;
 }

 lcdc_write(reg, LCD_RASTER_CTRL_REG);

 return 0;
}
