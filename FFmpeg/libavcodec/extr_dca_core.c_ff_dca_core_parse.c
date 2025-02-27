
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {int err_recognition; } ;
struct TYPE_8__ {int frame_size; TYPE_6__* avctx; int gb; int gb_in; scalar_t__ x96_pos; scalar_t__ xxch_pos; scalar_t__ xch_pos; scalar_t__ ext_audio_mask; } ;
typedef TYPE_1__ DCACoreDecoder ;


 int AVERROR_INVALIDDATA ;
 int AV_EF_EXPLODE ;
 int AV_LOG_ERROR ;
 int HEADER_CORE ;
 int alloc_sample_buffer (TYPE_1__*) ;
 int av_log (TYPE_6__*,int ,char*) ;
 scalar_t__ ff_dca_seek_bits (int *,int) ;
 int init_get_bits8 (int *,int *,int) ;
 int parse_frame_data (TYPE_1__*,int ,int ) ;
 int parse_frame_header (TYPE_1__*) ;
 int parse_optional_info (TYPE_1__*) ;

int ff_dca_core_parse(DCACoreDecoder *s, uint8_t *data, int size)
{
    int ret;

    s->ext_audio_mask = 0;
    s->xch_pos = s->xxch_pos = s->x96_pos = 0;

    if ((ret = init_get_bits8(&s->gb, data, size)) < 0)
        return ret;
    s->gb_in = s->gb;

    if ((ret = parse_frame_header(s)) < 0)
        return ret;
    if ((ret = alloc_sample_buffer(s)) < 0)
        return ret;
    if ((ret = parse_frame_data(s, HEADER_CORE, 0)) < 0)
        return ret;
    if ((ret = parse_optional_info(s)) < 0)
        return ret;


    if (s->frame_size > size)
        s->frame_size = size;

    if (ff_dca_seek_bits(&s->gb, s->frame_size * 8)) {
        av_log(s->avctx, AV_LOG_ERROR, "Read past end of core frame\n");
        if (s->avctx->err_recognition & AV_EF_EXPLODE)
            return AVERROR_INVALIDDATA;
    }

    return 0;
}
