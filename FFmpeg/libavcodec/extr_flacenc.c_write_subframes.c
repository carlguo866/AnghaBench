
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_8__ {size_t blocksize; TYPE_4__* subframes; } ;
struct TYPE_7__ {int lpc_coeff_precision; } ;
struct TYPE_11__ {int channels; int pb; TYPE_2__ frame; TYPE_1__ options; } ;
struct TYPE_9__ {int coding_mode; int porder; int* params; } ;
struct TYPE_10__ {int type_code; int wasted; scalar_t__ type; int obits; int order; TYPE_3__ rc; int * residual; int * coefs; int shift; } ;
typedef TYPE_4__ FlacSubframe ;
typedef TYPE_5__ FlacEncodeContext ;


 int * FFMIN (int *,int *) ;
 scalar_t__ FLAC_SUBFRAME_CONSTANT ;
 scalar_t__ FLAC_SUBFRAME_LPC ;
 scalar_t__ FLAC_SUBFRAME_VERBATIM ;
 int INT32_MAX ;
 int put_bits (int *,int,int) ;
 int put_sbits (int *,int,int ) ;
 int set_sr_golomb_flac (int *,int ,int,int ,int ) ;

__attribute__((used)) static void write_subframes(FlacEncodeContext *s)
{
    int ch;

    for (ch = 0; ch < s->channels; ch++) {
        FlacSubframe *sub = &s->frame.subframes[ch];
        int i, p, porder, psize;
        int32_t *part_end;
        int32_t *res = sub->residual;
        int32_t *frame_end = &sub->residual[s->frame.blocksize];


        put_bits(&s->pb, 1, 0);
        put_bits(&s->pb, 6, sub->type_code);
        put_bits(&s->pb, 1, !!sub->wasted);
        if (sub->wasted)
            put_bits(&s->pb, sub->wasted, 1);


        if (sub->type == FLAC_SUBFRAME_CONSTANT) {
            put_sbits(&s->pb, sub->obits, res[0]);
        } else if (sub->type == FLAC_SUBFRAME_VERBATIM) {
            while (res < frame_end)
                put_sbits(&s->pb, sub->obits, *res++);
        } else {

            for (i = 0; i < sub->order; i++)
                put_sbits(&s->pb, sub->obits, *res++);


            if (sub->type == FLAC_SUBFRAME_LPC) {
                int cbits = s->options.lpc_coeff_precision;
                put_bits( &s->pb, 4, cbits-1);
                put_sbits(&s->pb, 5, sub->shift);
                for (i = 0; i < sub->order; i++)
                    put_sbits(&s->pb, cbits, sub->coefs[i]);
            }


            put_bits(&s->pb, 2, sub->rc.coding_mode - 4);


            porder = sub->rc.porder;
            psize = s->frame.blocksize >> porder;
            put_bits(&s->pb, 4, porder);


            part_end = &sub->residual[psize];
            for (p = 0; p < 1 << porder; p++) {
                int k = sub->rc.params[p];
                put_bits(&s->pb, sub->rc.coding_mode, k);
                while (res < part_end)
                    set_sr_golomb_flac(&s->pb, *res++, k, INT32_MAX, 0);
                part_end = FFMIN(frame_end, part_end + psize);
            }
        }
    }
}
