
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {float emph_coeff; float* overlap; float* samples; } ;
struct TYPE_11__ {int channels; TYPE_5__* block; } ;
struct TYPE_9__ {int framesize; } ;
struct TYPE_10__ {TYPE_2__ packet; TYPE_1__* avctx; } ;
struct TYPE_8__ {int frame_size; } ;
typedef TYPE_3__ OpusEncContext ;
typedef TYPE_4__ CeltFrame ;
typedef TYPE_5__ CeltBlock ;


 float CELT_EMPH_COEFF ;
 int CELT_OVERLAP ;
 int const OPUS_BLOCK_SIZE (int ) ;

__attribute__((used)) static void celt_apply_preemph_filter(OpusEncContext *s, CeltFrame *f)
{
    const int subframesize = s->avctx->frame_size;
    const int subframes = OPUS_BLOCK_SIZE(s->packet.framesize) / subframesize;


    for (int ch = 0; ch < f->channels; ch++) {
        CeltBlock *b = &f->block[ch];
        float m = b->emph_coeff;
        for (int i = 0; i < CELT_OVERLAP; i++) {
            float sample = b->overlap[i];
            b->overlap[i] = sample - m;
            m = sample * CELT_EMPH_COEFF;
        }
        b->emph_coeff = m;
    }


    for (int sf = 0; sf < subframes; sf++) {
        for (int ch = 0; ch < f->channels; ch++) {
            CeltBlock *b = &f->block[ch];
            float m = b->emph_coeff;
            for (int i = 0; i < subframesize; i++) {
                float sample = b->samples[sf*subframesize + i];
                b->samples[sf*subframesize + i] = sample - m;
                m = sample * CELT_EMPH_COEFF;
            }
            if (sf != (subframes - 1))
                b->emph_coeff = m;
        }
    }
}
