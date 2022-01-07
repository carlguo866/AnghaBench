
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_6__ {int dpcm_direction; int mb_intra; size_t chroma_format; int gb; int ** dpcm_macroblock; int avctx; int ** block32; int qscale; } ;
typedef TYPE_1__ MpegEncContext ;


 int AVERROR_INVALIDDATA ;
 int SLICE_END ;
 int SLICE_OK ;
 int check_marker (int ,int *,char*) ;
 scalar_t__ get_bits1 (int *) ;
 unsigned int get_bits_left (int *) ;
 int* mpeg4_block_count ;
 scalar_t__ mpeg4_decode_dpcm_macroblock (TYPE_1__*,int ,int) ;
 scalar_t__ mpeg4_decode_studio_block (TYPE_1__*,int ,int) ;
 int mpeg_get_qscale (TYPE_1__*) ;
 int next_start_code_studio (int *) ;
 scalar_t__ show_bits (int *,unsigned int) ;
 int skip_bits1 (int *) ;

__attribute__((used)) static int mpeg4_decode_studio_mb(MpegEncContext *s, int16_t block_[12][64])
{
    int i;

    s->dpcm_direction = 0;



    s->mb_intra = 1;
    if (get_bits1(&s->gb)) {


        if (!get_bits1(&s->gb)) {
            skip_bits1(&s->gb);
            s->qscale = mpeg_get_qscale(s);
        }

        for (i = 0; i < mpeg4_block_count[s->chroma_format]; i++) {
            if (mpeg4_decode_studio_block(s, (*s->block32)[i], i) < 0)
                return AVERROR_INVALIDDATA;
        }
    } else {

        check_marker(s->avctx, &s->gb, "DPCM block start");
        s->dpcm_direction = get_bits1(&s->gb) ? -1 : 1;
        for (i = 0; i < 3; i++) {
            if (mpeg4_decode_dpcm_macroblock(s, (*s->dpcm_macroblock)[i], i) < 0)
                return AVERROR_INVALIDDATA;
        }
    }

    if (get_bits_left(&s->gb) >= 24 && show_bits(&s->gb, 23) == 0) {
        next_start_code_studio(&s->gb);
        return SLICE_END;
    }


    if (get_bits_left(&s->gb) == 0)
        return SLICE_END;


    if (get_bits_left(&s->gb) < 8U && show_bits(&s->gb, get_bits_left(&s->gb)) == 0)
        return SLICE_END;

    return SLICE_OK;
}
