
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_mobile_lcdc_priv {int dummy; } ;
struct sh_mobile_lcdc_chan {int xres_virtual; unsigned long pan_y_offset; unsigned long dma_handle; unsigned long yres_virtual; unsigned long base_addr_y; unsigned long base_addr_c; struct sh_mobile_lcdc_priv* lcdc; TYPE_1__* format; } ;
struct fb_var_screeninfo {int yoffset; int xoffset; } ;
struct fb_info {struct sh_mobile_lcdc_chan* par; } ;
struct TYPE_2__ {int bpp; scalar_t__ yuv; } ;


 unsigned long LDRCNTR_MRS ;
 unsigned long LDRCNTR_SRS ;
 int LDSA1R ;
 int LDSA2R ;
 int _LDRCNTR ;
 scalar_t__ lcdc_chan_is_sublcd (struct sh_mobile_lcdc_chan*) ;
 unsigned long lcdc_read (struct sh_mobile_lcdc_priv*,int ) ;
 int lcdc_write (struct sh_mobile_lcdc_priv*,int ,unsigned long) ;
 int lcdc_write_chan_mirror (struct sh_mobile_lcdc_chan*,int ,unsigned long) ;
 int sh_mobile_lcdc_deferred_io_touch (struct fb_info*) ;

__attribute__((used)) static int sh_mobile_lcdc_pan(struct fb_var_screeninfo *var,
         struct fb_info *info)
{
 struct sh_mobile_lcdc_chan *ch = info->par;
 struct sh_mobile_lcdc_priv *priv = ch->lcdc;
 unsigned long ldrcntr;
 unsigned long base_addr_y, base_addr_c;
 unsigned long y_offset;
 unsigned long c_offset;

 if (!ch->format->yuv) {
  y_offset = (var->yoffset * ch->xres_virtual + var->xoffset)
    * ch->format->bpp / 8;
  c_offset = 0;
 } else {
  unsigned int xsub = ch->format->bpp < 24 ? 2 : 1;
  unsigned int ysub = ch->format->bpp < 16 ? 2 : 1;

  y_offset = var->yoffset * ch->xres_virtual + var->xoffset;
  c_offset = var->yoffset / ysub * ch->xres_virtual * 2 / xsub
    + var->xoffset * 2 / xsub;
 }




 if (y_offset == ch->pan_y_offset)
  return 0;


 base_addr_y = ch->dma_handle + y_offset;
 base_addr_c = ch->dma_handle + ch->xres_virtual * ch->yres_virtual
      + c_offset;

 ch->base_addr_y = base_addr_y;
 ch->base_addr_c = base_addr_c;
 ch->pan_y_offset = y_offset;

 lcdc_write_chan_mirror(ch, LDSA1R, base_addr_y);
 if (ch->format->yuv)
  lcdc_write_chan_mirror(ch, LDSA2R, base_addr_c);

 ldrcntr = lcdc_read(priv, _LDRCNTR);
 if (lcdc_chan_is_sublcd(ch))
  lcdc_write(ch->lcdc, _LDRCNTR, ldrcntr ^ LDRCNTR_SRS);
 else
  lcdc_write(ch->lcdc, _LDRCNTR, ldrcntr ^ LDRCNTR_MRS);


 sh_mobile_lcdc_deferred_io_touch(info);

 return 0;
}
