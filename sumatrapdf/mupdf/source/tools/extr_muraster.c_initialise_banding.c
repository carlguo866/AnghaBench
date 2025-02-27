
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int x1; int x0; int y1; int y0; } ;
struct TYPE_5__ {int colorspace; scalar_t__ format; scalar_t__ num_workers; int band_height_multiple; int n; int bander; scalar_t__ bands_rendered; TYPE_1__ ibounds; } ;
typedef TYPE_2__ render_details ;
typedef int fz_context ;





 scalar_t__ OUT_PAM ;
 scalar_t__ OUT_PBM ;
 scalar_t__ OUT_PGM ;
 scalar_t__ OUT_PKM ;
 scalar_t__ OUT_PPM ;
 int fz_new_pam_band_writer (int *,int ) ;
 int fz_new_pbm_band_writer (int *,int ) ;
 int fz_new_pkm_band_writer (int *,int ) ;
 int fz_new_pnm_band_writer (int *,int ) ;
 size_t max_band_memory ;
 int min_band_height ;
 int out ;
 int output_cs ;
 scalar_t__ output_format ;

__attribute__((used)) static void
initialise_banding(fz_context *ctx, render_details *render, int color)
{
 size_t min_band_mem;
 int bpp, h, w, reps;

 render->colorspace = output_cs;
 render->format = output_format;
 switch (render->colorspace)
 {
 case 129:
  bpp = 1;
  break;
 case 128:
  bpp = 2;
  break;
 default:
 case 130:
  bpp = 3;
  break;
 }

 w = render->ibounds.x1 - render->ibounds.x0;
 min_band_mem = bpp * w * min_band_height;
 reps = (int)(max_band_memory / min_band_mem);
 if (reps < 1)
  reps = 1;


 if (render->num_workers > 0)
 {
  int runs, num_bands;
  h = render->ibounds.y1 - render->ibounds.y0;
  num_bands = (h + min_band_height - 1) / min_band_height;

  runs = (num_bands + reps-1) / reps;

  runs = ((runs + render->num_workers - 1) / render->num_workers) * render->num_workers;

  reps = (num_bands + runs - 1) / runs;
 }

 render->band_height_multiple = reps;
 render->bands_rendered = 0;

 if (output_format == OUT_PGM || output_format == OUT_PPM)
 {
  render->bander = fz_new_pnm_band_writer(ctx, out);
  render->n = output_format == OUT_PGM ? 1 : 3;
 }
 else if (output_format == OUT_PAM)
 {
  render->bander = fz_new_pam_band_writer(ctx, out);
  render->n = 4;
 }
 else if (output_format == OUT_PBM)
 {
  render->bander = fz_new_pbm_band_writer(ctx, out);
  render->n = 1;
 }
 else if (output_format == OUT_PKM)
 {
  render->bander = fz_new_pkm_band_writer(ctx, out);
  render->n = 4;
 }
}
