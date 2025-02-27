
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_10__ {int width; int height; TYPE_2__* priv_data; } ;
struct TYPE_9__ {int* linesize; scalar_t__* data; } ;
struct TYPE_8__ {TYPE_1__* vlc; } ;
struct TYPE_7__ {int bits; int table; } ;
typedef TYPE_2__ SheerVideoContext ;
typedef int GetBitContext ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVCodecContext ;


 int get_bits (int *,int) ;
 scalar_t__ get_bits1 (int *) ;
 int get_vlc2 (int *,int ,int ,int) ;

__attribute__((used)) static void decode_rgbx(AVCodecContext *avctx, AVFrame *p, GetBitContext *gb)
{
    SheerVideoContext *s = avctx->priv_data;
    uint16_t *dst_r, *dst_g, *dst_b;
    int x, y;

    dst_r = (uint16_t *)p->data[2];
    dst_g = (uint16_t *)p->data[0];
    dst_b = (uint16_t *)p->data[1];

    if (get_bits1(gb)) {
        for (x = 0; x < avctx->width; x++) {
            dst_r[x] = get_bits(gb, 10);
            dst_g[x] = get_bits(gb, 10);
            dst_b[x] = get_bits(gb, 10);
        }
    } else {
        int pred[4] = { 512, 512, 512, 0 };

        for (x = 0; x < avctx->width; x++) {
            int r, g, b;

            r = get_vlc2(gb, s->vlc[0].table, s->vlc[0].bits, 2);
            g = get_vlc2(gb, s->vlc[1].table, s->vlc[1].bits, 2);
            b = get_vlc2(gb, s->vlc[1].table, s->vlc[1].bits, 2);

            dst_r[x] = pred[0] = (r + pred[0]) & 0x3ff;
            dst_g[x] = pred[1] = (r + g + pred[1]) & 0x3ff;
            dst_b[x] = pred[2] = (r + g + b + pred[2]) & 0x3ff;
        }
    }

    dst_r += p->linesize[2] / 2;
    dst_g += p->linesize[0] / 2;
    dst_b += p->linesize[1] / 2;

    for (y = 1; y < avctx->height; y++) {
        if (get_bits1(gb)) {
            for (x = 0; x < avctx->width; x++) {
                dst_r[x] = get_bits(gb, 10);
                dst_g[x] = get_bits(gb, 10);
                dst_b[x] = get_bits(gb, 10);
            }
        } else {
            int pred_TL[4], pred_L[4], pred_T[4];
            int r, g, b;

            pred_TL[0] = pred_L[0] = dst_r[-p->linesize[2] / 2];
            pred_TL[1] = pred_L[1] = dst_g[-p->linesize[0] / 2];
            pred_TL[2] = pred_L[2] = dst_b[-p->linesize[1] / 2];

            for (x = 0; x < avctx->width; x++) {
                pred_T[0] = dst_r[-p->linesize[2] / 2 + x];
                pred_T[1] = dst_g[-p->linesize[0] / 2 + x];
                pred_T[2] = dst_b[-p->linesize[1] / 2 + x];

                r = get_vlc2(gb, s->vlc[0].table, s->vlc[0].bits, 2);
                g = get_vlc2(gb, s->vlc[1].table, s->vlc[1].bits, 2);
                b = get_vlc2(gb, s->vlc[1].table, s->vlc[1].bits, 2);

                dst_r[x] = pred_L[0] = (r + ((3 * (pred_T[0] + pred_L[0]) - 2 * pred_TL[0]) >> 2)) & 0x3ff;
                dst_g[x] = pred_L[1] = (r + g + ((3 * (pred_T[1] + pred_L[1]) - 2 * pred_TL[1]) >> 2)) & 0x3ff;
                dst_b[x] = pred_L[2] = (r + g + b + ((3 * (pred_T[2] + pred_L[2]) - 2 * pred_TL[2]) >> 2)) & 0x3ff;

                pred_TL[0] = pred_T[0];
                pred_TL[1] = pred_T[1];
                pred_TL[2] = pred_T[2];
            }
        }

        dst_r += p->linesize[2] / 2;
        dst_g += p->linesize[0] / 2;
        dst_b += p->linesize[1] / 2;
    }
}
