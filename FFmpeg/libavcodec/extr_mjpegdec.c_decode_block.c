
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
typedef int int16_t ;
struct TYPE_7__ {int* permutated; } ;
struct TYPE_8__ {int* last_dc; int gb; TYPE_2__ scantable; int avctx; TYPE_1__** vlcs; } ;
struct TYPE_6__ {int table; } ;
typedef TYPE_3__ MJpegDecodeContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int CLOSE_READER (int ,int *) ;
 int GET_CACHE (int ,int *) ;
 int GET_VLC (int,int ,int *,int ,int,int) ;
 int LAST_SKIP_BITS (int ,int *,int) ;
 int MIN_CACHE_BITS ;
 int NEG_USR32 (int,int) ;
 int OPEN_READER (int ,int *) ;
 int UPDATE_CACHE (int ,int *) ;
 int av_clip_int16 (int) ;
 int av_log (int ,int ,char*,...) ;
 int mjpeg_decode_dc (TYPE_3__*,int) ;
 int re ;

__attribute__((used)) static int decode_block(MJpegDecodeContext *s, int16_t *block, int component,
                        int dc_index, int ac_index, uint16_t *quant_matrix)
{
    int code, i, j, level, val;


    val = mjpeg_decode_dc(s, dc_index);
    if (val == 0xfffff) {
        av_log(s->avctx, AV_LOG_ERROR, "error dc\n");
        return AVERROR_INVALIDDATA;
    }
    val = val * (unsigned)quant_matrix[0] + s->last_dc[component];
    val = av_clip_int16(val);
    s->last_dc[component] = val;
    block[0] = val;

    i = 0;
    {OPEN_READER(re, &s->gb);
    do {
        UPDATE_CACHE(re, &s->gb);
        GET_VLC(code, re, &s->gb, s->vlcs[1][ac_index].table, 9, 2);

        i += ((unsigned)code) >> 4;
            code &= 0xf;
        if (code) {
            if (code > MIN_CACHE_BITS - 16)
                UPDATE_CACHE(re, &s->gb);

            {
                int cache = GET_CACHE(re, &s->gb);
                int sign = (~cache) >> 31;
                level = (NEG_USR32(sign ^ cache,code) ^ sign) - sign;
            }

            LAST_SKIP_BITS(re, &s->gb, code);

            if (i > 63) {
                av_log(s->avctx, AV_LOG_ERROR, "error count: %d\n", i);
                return AVERROR_INVALIDDATA;
            }
            j = s->scantable.permutated[i];
            block[j] = level * quant_matrix[i];
        }
    } while (i < 63);
    CLOSE_READER(re, &s->gb);}

    return 0;
}
