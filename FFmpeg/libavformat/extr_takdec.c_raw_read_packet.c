
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_11__ {int * pb; TYPE_1__* priv_data; } ;
struct TYPE_10__ {scalar_t__ stream_index; } ;
struct TYPE_9__ {scalar_t__ data_end; scalar_t__ mlast_frame; } ;
typedef TYPE_1__ TAKDemuxContext ;
typedef TYPE_2__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR_EOF ;
 scalar_t__ FFMIN (scalar_t__,int) ;
 int av_get_packet (int *,TYPE_2__*,scalar_t__) ;
 scalar_t__ avio_tell (int *) ;
 int ff_raw_read_partial_packet (TYPE_3__*,TYPE_2__*) ;

__attribute__((used)) static int raw_read_packet(AVFormatContext *s, AVPacket *pkt)
{
    TAKDemuxContext *tc = s->priv_data;
    int ret;

    if (tc->mlast_frame) {
        AVIOContext *pb = s->pb;
        int64_t size, left;

        left = tc->data_end - avio_tell(pb);
        size = FFMIN(left, 1024);
        if (size <= 0)
            return AVERROR_EOF;

        ret = av_get_packet(pb, pkt, size);
        if (ret < 0)
            return ret;

        pkt->stream_index = 0;
    } else {
        ret = ff_raw_read_partial_packet(s, pkt);
    }

    return ret;
}
