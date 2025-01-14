
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_11__ {int frame_bit_len; int remaining_bits; } ;
typedef TYPE_4__ VqfContext ;
struct TYPE_13__ {TYPE_3__* internal; int pb; TYPE_5__** streams; TYPE_4__* priv_data; } ;
struct TYPE_9__ {int den; scalar_t__ num; } ;
struct TYPE_12__ {TYPE_2__ time_base; TYPE_1__* codecpar; int cur_dts; } ;
struct TYPE_10__ {scalar_t__ data_offset; } ;
struct TYPE_8__ {int bit_rate; } ;
typedef TYPE_5__ AVStream ;
typedef TYPE_6__ AVFormatContext ;


 int AVSEEK_FLAG_BACKWARD ;
 int AV_ROUND_DOWN ;
 int AV_ROUND_UP ;
 int SEEK_SET ;
 int av_rescale (int,int,int) ;
 int av_rescale_rnd (int,scalar_t__,int,int ) ;
 int avio_seek (int ,scalar_t__,int ) ;

__attribute__((used)) static int vqf_read_seek(AVFormatContext *s,
                         int stream_index, int64_t timestamp, int flags)
{
    VqfContext *c = s->priv_data;
    AVStream *st;
    int64_t ret;
    int64_t pos;

    st = s->streams[stream_index];
    pos = av_rescale_rnd(timestamp * st->codecpar->bit_rate,
                         st->time_base.num,
                         st->time_base.den * (int64_t)c->frame_bit_len,
                         (flags & AVSEEK_FLAG_BACKWARD) ?
                                                   AV_ROUND_DOWN : AV_ROUND_UP);
    pos *= c->frame_bit_len;

    st->cur_dts = av_rescale(pos, st->time_base.den,
                             st->codecpar->bit_rate * (int64_t)st->time_base.num);

    if ((ret = avio_seek(s->pb, ((pos-7) >> 3) + s->internal->data_offset, SEEK_SET)) < 0)
        return ret;

    c->remaining_bits = -7 - ((pos-7)&7);
    return 0;
}
