
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int flags; int properties; } ;
struct TYPE_7__ {int nreslevels; scalar_t__ nreslevels2decode; int log2_cblk_width; int log2_cblk_height; int cblk_style; int transform; int csty; int* log2_prec_widths; int* log2_prec_heights; } ;
struct TYPE_6__ {scalar_t__ reduction_factor; TYPE_5__* avctx; int g; } ;
typedef TYPE_1__ Jpeg2000DecoderContext ;
typedef TYPE_2__ Jpeg2000CodingStyle ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_CODEC_FLAG_BITEXACT ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 int EINVAL ;
 int FF_CODEC_PROPERTY_LOSSLESS ;
 int FF_DWT53 ;
 int FF_DWT97 ;
 int FF_DWT97_INT ;
 int JPEG2000_CBLK_BYPASS ;
 int JPEG2000_CSTY_PREC ;
 scalar_t__ JPEG2000_MAX_RESLEVELS ;
 int av_log (TYPE_5__*,int ,char*,...) ;
 int bytestream2_get_byte (int *) ;
 int bytestream2_get_bytes_left (int *) ;
 int bytestream2_get_byteu (int *) ;
 int memset (int*,int,int) ;

__attribute__((used)) static int get_cox(Jpeg2000DecoderContext *s, Jpeg2000CodingStyle *c)
{
    uint8_t byte;

    if (bytestream2_get_bytes_left(&s->g) < 5) {
        av_log(s->avctx, AV_LOG_ERROR, "Insufficient space for COX\n");
        return AVERROR_INVALIDDATA;
    }



    c->nreslevels = bytestream2_get_byteu(&s->g) + 1;
    if (c->nreslevels >= JPEG2000_MAX_RESLEVELS) {
        av_log(s->avctx, AV_LOG_ERROR, "nreslevels %d is invalid\n", c->nreslevels);
        return AVERROR_INVALIDDATA;
    }

    if (c->nreslevels <= s->reduction_factor) {




        av_log(s->avctx, AV_LOG_ERROR, "reduction_factor too large for this bitstream, max is %d\n", c->nreslevels - 1);
        s->reduction_factor = c->nreslevels - 1;
        return AVERROR(EINVAL);
    }


    c->nreslevels2decode = c->nreslevels - s->reduction_factor;

    c->log2_cblk_width = (bytestream2_get_byteu(&s->g) & 15) + 2;
    c->log2_cblk_height = (bytestream2_get_byteu(&s->g) & 15) + 2;

    if (c->log2_cblk_width > 10 || c->log2_cblk_height > 10 ||
        c->log2_cblk_width + c->log2_cblk_height > 12) {
        av_log(s->avctx, AV_LOG_ERROR, "cblk size invalid\n");
        return AVERROR_INVALIDDATA;
    }

    c->cblk_style = bytestream2_get_byteu(&s->g);
    if (c->cblk_style != 0) {
        av_log(s->avctx, AV_LOG_WARNING, "extra cblk styles %X\n", c->cblk_style);
        if (c->cblk_style & JPEG2000_CBLK_BYPASS)
            av_log(s->avctx, AV_LOG_WARNING, "Selective arithmetic coding bypass\n");
    }
    c->transform = bytestream2_get_byteu(&s->g);

    if ((s->avctx->flags & AV_CODEC_FLAG_BITEXACT) && (c->transform == FF_DWT97))
        c->transform = FF_DWT97_INT;
    else if (c->transform == FF_DWT53) {
        s->avctx->properties |= FF_CODEC_PROPERTY_LOSSLESS;
    }

    if (c->csty & JPEG2000_CSTY_PREC) {
        int i;
        for (i = 0; i < c->nreslevels; i++) {
            byte = bytestream2_get_byte(&s->g);
            c->log2_prec_widths[i] = byte & 0x0F;
            c->log2_prec_heights[i] = (byte >> 4) & 0x0F;
            if (i)
                if (c->log2_prec_widths[i] == 0 || c->log2_prec_heights[i] == 0) {
                    av_log(s->avctx, AV_LOG_ERROR, "PPx %d PPy %d invalid\n",
                           c->log2_prec_widths[i], c->log2_prec_heights[i]);
                    c->log2_prec_widths[i] = c->log2_prec_heights[i] = 1;
                    return AVERROR_INVALIDDATA;
                }
        }
    } else {
        memset(c->log2_prec_widths , 15, sizeof(c->log2_prec_widths ));
        memset(c->log2_prec_heights, 15, sizeof(c->log2_prec_heights));
    }
    return 0;
}
