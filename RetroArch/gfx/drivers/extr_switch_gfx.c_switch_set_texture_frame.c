
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scaler_ctx {unsigned int in_width; unsigned int in_height; unsigned int in_stride; unsigned int out_width; unsigned int out_height; int out_stride; int scaler_type; int out_fmt; int in_fmt; } ;
struct TYPE_3__ {unsigned int width; unsigned int height; unsigned int tgtw; unsigned int tgth; scalar_t__ pixels; struct scaler_ctx scaler; } ;
struct TYPE_4__ {TYPE_1__ menu_texture; } ;
typedef TYPE_2__ switch_video_t ;


 int RARCH_ERR (char*) ;
 int SCALER_FMT_ABGR8888 ;
 int SCALER_FMT_ARGB8888 ;
 int SCALER_FMT_RGB565 ;
 int SCALER_TYPE_POINT ;
 int free (scalar_t__) ;
 scalar_t__ malloc (unsigned int) ;
 int memcpy (scalar_t__,void const*,unsigned int) ;
 int scaler_ctx_gen_filter (struct scaler_ctx*) ;
 int scaler_ctx_gen_reset (struct scaler_ctx*) ;

__attribute__((used)) static void switch_set_texture_frame(
      void *data, const void *frame, bool rgb32,
      unsigned width, unsigned height, float alpha)
{
   switch_video_t *sw = data;

   if ( !sw->menu_texture.pixels ||
         sw->menu_texture.width != width ||
         sw->menu_texture.height != height)
   {
      struct scaler_ctx *sctx;
      int xsf, ysf, sf;
      if (sw->menu_texture.pixels)
         free(sw->menu_texture.pixels);

      sw->menu_texture.pixels = malloc(width * height * (rgb32 ? 4 : 2));
      if (!sw->menu_texture.pixels)
      {
         RARCH_ERR("failed to allocate buffer for menu texture\n");
         return;
      }

      xsf = 1280 / width;
      ysf = 720 / height;
      sf = xsf;

      if (ysf < sf)
       sf = ysf;

      sw->menu_texture.width = width;
      sw->menu_texture.height = height;
      sw->menu_texture.tgtw = width * sf;
      sw->menu_texture.tgth = height * sf;

      sctx = &sw->menu_texture.scaler;
      scaler_ctx_gen_reset(sctx);

      sctx->in_width = width;
      sctx->in_height = height;
      sctx->in_stride = width * (rgb32 ? 4 : 2);
      sctx->in_fmt = rgb32 ? SCALER_FMT_ARGB8888 : SCALER_FMT_RGB565;

      sctx->out_width = sw->menu_texture.tgtw;
      sctx->out_height = sw->menu_texture.tgth;
      sctx->out_stride = 1280 * 4;
      sctx->out_fmt = SCALER_FMT_ABGR8888;

      sctx->scaler_type = SCALER_TYPE_POINT;

      if (!scaler_ctx_gen_filter(sctx))
      {
         RARCH_ERR("failed to generate scaler for menu texture\n");
         return;
      }
   }

   memcpy(sw->menu_texture.pixels, frame, width * height * (rgb32 ? 4 : 2));
}
