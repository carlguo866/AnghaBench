
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_8__ {int bits_per_pixel; int xres_virtual; int yres_virtual; int vmode; int pixclock; int xres; int left_margin; int right_margin; int hsync_len; int activate; scalar_t__ yoffset; scalar_t__ xoffset; } ;
struct TYPE_9__ {int ypanstep; int line_length; int smem_start; } ;
struct TYPE_7__ {int blit_x; int blit_y; } ;
struct fb_info {int screen_base; TYPE_3__ var; int node; TYPE_5__ fix; TYPE_2__ pixmap; int * tileops; int flags; struct arkfb_info* par; } ;
struct TYPE_6__ {int vgabase; } ;
struct arkfb_info {TYPE_1__ state; int dac; } ;


 int DAC_PSEUDO8_16 ;
 int DAC_PSEUDO8_8 ;
 int DAC_RGB0565_16 ;
 int DAC_RGB0888_16 ;
 int DAC_RGB1555_16 ;
 int DAC_RGB8888_16 ;
 int EINVAL ;
 int FBINFO_MISC_TILEBLITTING ;
 int FB_ACTIVATE_NOW ;
 int FB_VMODE_DOUBLE ;
 int FB_VMODE_INTERLACED ;
 int VGA_GFX_MODE ;
 int ark_line_compare_regs ;
 int ark_offset_regs ;
 int ark_set_pixclock (struct fb_info*,int) ;
 int ark_start_address_regs ;
 int ark_timing_regs ;
 int arkfb_formats ;
 int arkfb_tile_ops ;
 int dac_set_mode (int ,int ) ;
 int fb_dbg (struct fb_info*,char*,...) ;
 int fb_err (struct fb_info*,char*) ;
 int memset_io (int ,int,int) ;
 int svga_match_format (int ,TYPE_3__*,TYPE_5__*) ;
 int svga_set_default_atc_regs (int ) ;
 int svga_set_default_crt_regs (int ) ;
 int svga_set_default_gfx_regs (int ) ;
 int svga_set_default_seq_regs (int ) ;
 int svga_set_textmode_vga_regs (int ) ;
 int svga_set_timings (int ,int *,TYPE_3__*,int,int,int,int,int,int ) ;
 int svga_wcrt_mask (int ,int,int,int) ;
 int svga_wcrt_multi (int ,int ,int) ;
 int svga_wseq_mask (int ,int,int,int) ;
 int threshold ;
 int vga_wcrt (int ,int,int) ;
 int vga_wgfx (int ,int ,int) ;
 int vga_wseq (int ,int,int) ;

__attribute__((used)) static int arkfb_set_par(struct fb_info *info)
{
 struct arkfb_info *par = info->par;
 u32 value, mode, hmul, hdiv, offset_value, screen_size;
 u32 bpp = info->var.bits_per_pixel;
 u8 regval;

 if (bpp != 0) {
  info->fix.ypanstep = 1;
  info->fix.line_length = (info->var.xres_virtual * bpp) / 8;

  info->flags &= ~FBINFO_MISC_TILEBLITTING;
  info->tileops = ((void*)0);


  info->pixmap.blit_x = (bpp == 4) ? (1 << (8 - 1)) : (~(u32)0);
  info->pixmap.blit_y = ~(u32)0;

  offset_value = (info->var.xres_virtual * bpp) / 64;
  screen_size = info->var.yres_virtual * info->fix.line_length;
 } else {
  info->fix.ypanstep = 16;
  info->fix.line_length = 0;

  info->flags |= FBINFO_MISC_TILEBLITTING;
  info->tileops = &arkfb_tile_ops;


  info->pixmap.blit_x = 1 << (8 - 1);
  info->pixmap.blit_y = 1 << (16 - 1);

  offset_value = info->var.xres_virtual / 16;
  screen_size = (info->var.xres_virtual * info->var.yres_virtual) / 64;
 }

 info->var.xoffset = 0;
 info->var.yoffset = 0;
 info->var.activate = FB_ACTIVATE_NOW;


 svga_wcrt_mask(par->state.vgabase, 0x11, 0x00, 0x80);


 svga_wseq_mask(par->state.vgabase, 0x01, 0x20, 0x20);
 svga_wcrt_mask(par->state.vgabase, 0x17, 0x00, 0x80);


 svga_set_default_gfx_regs(par->state.vgabase);
 svga_set_default_atc_regs(par->state.vgabase);
 svga_set_default_seq_regs(par->state.vgabase);
 svga_set_default_crt_regs(par->state.vgabase);
 svga_wcrt_multi(par->state.vgabase, ark_line_compare_regs, 0xFFFFFFFF);
 svga_wcrt_multi(par->state.vgabase, ark_start_address_regs, 0);


 svga_wseq_mask(par->state.vgabase, 0x10, 0x1F, 0x1F);
 svga_wseq_mask(par->state.vgabase, 0x12, 0x03, 0x03);

 vga_wseq(par->state.vgabase, 0x13, info->fix.smem_start >> 16);
 vga_wseq(par->state.vgabase, 0x14, info->fix.smem_start >> 24);
 vga_wseq(par->state.vgabase, 0x15, 0);
 vga_wseq(par->state.vgabase, 0x16, 0);



 regval = 0x10 | ((threshold & 0x0E) >> 1) | (threshold & 0x01) << 7 | (threshold & 0x10) << 1;
 vga_wseq(par->state.vgabase, 0x18, regval);


 fb_dbg(info, "offset register       : %d\n", offset_value);
 svga_wcrt_multi(par->state.vgabase, ark_offset_regs, offset_value);


 svga_wcrt_mask(par->state.vgabase, 0x40, 0x08, 0x08);

 if (info->var.vmode & FB_VMODE_DOUBLE)
  svga_wcrt_mask(par->state.vgabase, 0x09, 0x80, 0x80);
 else
  svga_wcrt_mask(par->state.vgabase, 0x09, 0x00, 0x80);

 if (info->var.vmode & FB_VMODE_INTERLACED)
  svga_wcrt_mask(par->state.vgabase, 0x44, 0x04, 0x04);
 else
  svga_wcrt_mask(par->state.vgabase, 0x44, 0x00, 0x04);

 hmul = 1;
 hdiv = 1;
 mode = svga_match_format(arkfb_formats, &(info->var), &(info->fix));


 switch (mode) {
 case 0:
  fb_dbg(info, "text mode\n");
  svga_set_textmode_vga_regs(par->state.vgabase);

  vga_wseq(par->state.vgabase, 0x11, 0x10);
  svga_wcrt_mask(par->state.vgabase, 0x46, 0x00, 0x04);
  dac_set_mode(par->dac, DAC_PSEUDO8_8);

  break;
 case 1:
  fb_dbg(info, "4 bit pseudocolor\n");
  vga_wgfx(par->state.vgabase, VGA_GFX_MODE, 0x40);

  vga_wseq(par->state.vgabase, 0x11, 0x10);
  svga_wcrt_mask(par->state.vgabase, 0x46, 0x00, 0x04);
  dac_set_mode(par->dac, DAC_PSEUDO8_8);
  break;
 case 2:
  fb_dbg(info, "4 bit pseudocolor, planar\n");

  vga_wseq(par->state.vgabase, 0x11, 0x10);
  svga_wcrt_mask(par->state.vgabase, 0x46, 0x00, 0x04);
  dac_set_mode(par->dac, DAC_PSEUDO8_8);
  break;
 case 3:
  fb_dbg(info, "8 bit pseudocolor\n");

  vga_wseq(par->state.vgabase, 0x11, 0x16);

  if (info->var.pixclock > 20000) {
   fb_dbg(info, "not using multiplex\n");
   svga_wcrt_mask(par->state.vgabase, 0x46, 0x00, 0x04);
   dac_set_mode(par->dac, DAC_PSEUDO8_8);
  } else {
   fb_dbg(info, "using multiplex\n");
   svga_wcrt_mask(par->state.vgabase, 0x46, 0x04, 0x04);
   dac_set_mode(par->dac, DAC_PSEUDO8_16);
   hdiv = 2;
  }
  break;
 case 4:
  fb_dbg(info, "5/5/5 truecolor\n");

  vga_wseq(par->state.vgabase, 0x11, 0x1A);
  svga_wcrt_mask(par->state.vgabase, 0x46, 0x04, 0x04);
  dac_set_mode(par->dac, DAC_RGB1555_16);
  break;
 case 5:
  fb_dbg(info, "5/6/5 truecolor\n");

  vga_wseq(par->state.vgabase, 0x11, 0x1A);
  svga_wcrt_mask(par->state.vgabase, 0x46, 0x04, 0x04);
  dac_set_mode(par->dac, DAC_RGB0565_16);
  break;
 case 6:
  fb_dbg(info, "8/8/8 truecolor\n");

  vga_wseq(par->state.vgabase, 0x11, 0x16);
  svga_wcrt_mask(par->state.vgabase, 0x46, 0x04, 0x04);
  dac_set_mode(par->dac, DAC_RGB0888_16);
  hmul = 3;
  hdiv = 2;
  break;
 case 7:
  fb_dbg(info, "8/8/8/8 truecolor\n");

  vga_wseq(par->state.vgabase, 0x11, 0x1E);
  svga_wcrt_mask(par->state.vgabase, 0x46, 0x04, 0x04);
  dac_set_mode(par->dac, DAC_RGB8888_16);
  hmul = 2;
  break;
 default:
  fb_err(info, "unsupported mode - bug\n");
  return -EINVAL;
 }

 ark_set_pixclock(info, (hdiv * info->var.pixclock) / hmul);
 svga_set_timings(par->state.vgabase, &ark_timing_regs, &(info->var), hmul, hdiv,
    (info->var.vmode & FB_VMODE_DOUBLE) ? 2 : 1,
    (info->var.vmode & FB_VMODE_INTERLACED) ? 2 : 1,
     hmul, info->node);


 value = info->var.xres + info->var.left_margin + info->var.right_margin + info->var.hsync_len;
 value = ((value * hmul / hdiv) / 8) - 5;
 vga_wcrt(par->state.vgabase, 0x42, (value + 1) / 2);

 memset_io(info->screen_base, 0x00, screen_size);

 svga_wcrt_mask(par->state.vgabase, 0x17, 0x80, 0x80);
 svga_wseq_mask(par->state.vgabase, 0x01, 0x00, 0x20);

 return 0;
}
