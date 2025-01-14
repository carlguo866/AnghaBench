
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_20__ {int* linesize; int ** data; int format; } ;
struct TYPE_19__ {int log2_chroma_w; int log2_chroma_h; TYPE_1__* comp; } ;
struct TYPE_16__ {int ** md5; } ;
struct TYPE_17__ {TYPE_3__ picture_hash; } ;
struct TYPE_15__ {int (* bswap16_buf ) (int *,int const*,int) ;} ;
struct TYPE_18__ {TYPE_10__* avctx; TYPE_4__ sei; int md5_ctx; int * checksum_buf; TYPE_2__ bdsp; int checksum_buf_size; int poc; } ;
struct TYPE_14__ {int depth; } ;
struct TYPE_13__ {int coded_width; int coded_height; } ;
typedef TYPE_5__ HEVCContext ;
typedef TYPE_6__ AVPixFmtDescriptor ;
typedef TYPE_7__ AVFrame ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int ENOMEM ;
 int FFMAX3 (int,int,int) ;
 int av_fast_malloc (int **,int *,int ) ;
 int av_log (TYPE_10__*,int ,char*,...) ;
 int av_md5_final (int ,int *) ;
 int av_md5_init (int ) ;
 int av_md5_update (int ,int const*,int) ;
 TYPE_6__* av_pix_fmt_desc_get (int ) ;
 int memcmp (int *,int *,int) ;
 int print_md5 (TYPE_10__*,int ,int *) ;
 int stub1 (int *,int const*,int) ;

__attribute__((used)) static int verify_md5(HEVCContext *s, AVFrame *frame)
{
    const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(frame->format);
    int pixel_shift;
    int i, j;

    if (!desc)
        return AVERROR(EINVAL);

    pixel_shift = desc->comp[0].depth > 8;

    av_log(s->avctx, AV_LOG_DEBUG, "Verifying checksum for frame with POC %d: ",
           s->poc);
    for (i = 0; frame->data[i]; i++) {
        int width = s->avctx->coded_width;
        int height = s->avctx->coded_height;
        int w = (i == 1 || i == 2) ? (width >> desc->log2_chroma_w) : width;
        int h = (i == 1 || i == 2) ? (height >> desc->log2_chroma_h) : height;
        uint8_t md5[16];

        av_md5_init(s->md5_ctx);
        for (j = 0; j < h; j++) {
            const uint8_t *src = frame->data[i] + j * frame->linesize[i];







            av_md5_update(s->md5_ctx, src, w << pixel_shift);
        }
        av_md5_final(s->md5_ctx, md5);

        if (!memcmp(md5, s->sei.picture_hash.md5[i], 16)) {
            av_log (s->avctx, AV_LOG_DEBUG, "plane %d - correct ", i);
            print_md5(s->avctx, AV_LOG_DEBUG, md5);
            av_log (s->avctx, AV_LOG_DEBUG, "; ");
        } else {
            av_log (s->avctx, AV_LOG_ERROR, "mismatching checksum of plane %d - ", i);
            print_md5(s->avctx, AV_LOG_ERROR, md5);
            av_log (s->avctx, AV_LOG_ERROR, " != ");
            print_md5(s->avctx, AV_LOG_ERROR, s->sei.picture_hash.md5[i]);
            av_log (s->avctx, AV_LOG_ERROR, "\n");
            return AVERROR_INVALIDDATA;
        }
    }

    av_log(s->avctx, AV_LOG_DEBUG, "\n");

    return 0;
}
