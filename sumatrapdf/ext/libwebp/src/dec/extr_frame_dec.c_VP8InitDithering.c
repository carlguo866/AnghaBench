
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dithering_strength; int alpha_dithering_strength; } ;
typedef TYPE_1__ WebPDecoderOptions ;
struct TYPE_7__ {scalar_t__ uv_quant_; int dither_; } ;
typedef TYPE_2__ VP8QuantMatrix ;
struct TYPE_8__ {int dither_; int alpha_dithering_; int dithering_rg_; TYPE_2__* dqm_; } ;
typedef TYPE_3__ VP8Decoder ;


 scalar_t__ DITHER_AMP_TAB_SIZE ;
 int NUM_MB_SEGMENTS ;
 int VP8InitRandom (int *,float) ;
 int VP8_RANDOM_DITHER_FIX ;
 int assert (int ) ;
 int const* kQuantToDitherAmp ;

void VP8InitDithering(const WebPDecoderOptions* const options,
                      VP8Decoder* const dec) {
  assert(dec != ((void*)0));
  if (options != ((void*)0)) {
    const int d = options->dithering_strength;
    const int max_amp = (1 << VP8_RANDOM_DITHER_FIX) - 1;
    const int f = (d < 0) ? 0 : (d > 100) ? max_amp : (d * max_amp / 100);
    if (f > 0) {
      int s;
      int all_amp = 0;
      for (s = 0; s < NUM_MB_SEGMENTS; ++s) {
        VP8QuantMatrix* const dqm = &dec->dqm_[s];
        if (dqm->uv_quant_ < DITHER_AMP_TAB_SIZE) {
          const int idx = (dqm->uv_quant_ < 0) ? 0 : dqm->uv_quant_;
          dqm->dither_ = (f * kQuantToDitherAmp[idx]) >> 3;
        }
        all_amp |= dqm->dither_;
      }
      if (all_amp != 0) {
        VP8InitRandom(&dec->dithering_rg_, 1.0f);
        dec->dither_ = 1;
      }
    }

    dec->alpha_dithering_ = options->alpha_dithering_strength;
    if (dec->alpha_dithering_ > 100) {
      dec->alpha_dithering_ = 100;
    } else if (dec->alpha_dithering_ < 0) {
      dec->alpha_dithering_ = 0;
    }
  }
}
