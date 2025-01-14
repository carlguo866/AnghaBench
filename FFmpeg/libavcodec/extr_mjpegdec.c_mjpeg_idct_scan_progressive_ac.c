
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {int lowres; } ;
struct TYPE_8__ {int (* idct_put ) (int *,int,int ) ;} ;
struct TYPE_9__ {int bits; int nb_components; int* linesize; int h_max; int* h_count; int v_max; int* v_count; int width; int height; int* coefs_finished; int* block_stride; TYPE_6__* avctx; TYPE_2__ idsp; int ** blocks; scalar_t__ bottom_field; scalar_t__ interlaced; TYPE_1__* picture_ptr; scalar_t__ lossless; } ;
struct TYPE_7__ {int ** data; } ;
typedef TYPE_3__ MJpegDecodeContext ;


 int AV_LOG_WARNING ;
 int av_log (TYPE_6__*,int ,char*,int) ;
 int * block ;
 int ** int16_t (int ) ;
 int shift_output (TYPE_3__*,int *,int) ;
 int stub1 (int *,int,int ) ;

__attribute__((used)) static void mjpeg_idct_scan_progressive_ac(MJpegDecodeContext *s)
{
    int mb_x, mb_y;
    int c;
    const int bytes_per_pixel = 1 + (s->bits > 8);
    const int block_size = s->lossless ? 1 : 8;

    for (c = 0; c < s->nb_components; c++) {
        uint8_t *data = s->picture_ptr->data[c];
        int linesize = s->linesize[c];
        int h = s->h_max / s->h_count[c];
        int v = s->v_max / s->v_count[c];
        int mb_width = (s->width + h * block_size - 1) / (h * block_size);
        int mb_height = (s->height + v * block_size - 1) / (v * block_size);

        if (~s->coefs_finished[c])
            av_log(s->avctx, AV_LOG_WARNING, "component %d is incomplete\n", c);

        if (s->interlaced && s->bottom_field)
            data += linesize >> 1;

        for (mb_y = 0; mb_y < mb_height; mb_y++) {
            uint8_t *ptr = data + (mb_y * linesize * 8 >> s->avctx->lowres);
            int block_idx = mb_y * s->block_stride[c];
            int16_t (*block)[64] = &s->blocks[c][block_idx];
            for (mb_x = 0; mb_x < mb_width; mb_x++, block++) {
                s->idsp.idct_put(ptr, linesize, *block);
                if (s->bits & 7)
                    shift_output(s, ptr, linesize);
                ptr += bytes_per_pixel*8 >> s->avctx->lowres;
            }
        }
    }
}
