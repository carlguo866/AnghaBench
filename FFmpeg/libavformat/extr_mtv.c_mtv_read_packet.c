
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* internal; int * pb; TYPE_2__* priv_data; } ;
struct TYPE_10__ {int stream_index; int pos; } ;
struct TYPE_9__ {int img_segment_size; int full_segment_size; } ;
struct TYPE_8__ {int data_offset; } ;
typedef TYPE_2__ MTVDemuxContext ;
typedef TYPE_3__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_4__ AVFormatContext ;


 int MTV_ASUBCHUNK_DATA_SIZE ;
 scalar_t__ MTV_AUDIO_PADDING_SIZE ;
 int av_get_packet (int *,TYPE_3__*,int) ;
 int avio_skip (int *,scalar_t__) ;
 int avio_tell (int *) ;

__attribute__((used)) static int mtv_read_packet(AVFormatContext *s, AVPacket *pkt)
{
    MTVDemuxContext *mtv = s->priv_data;
    AVIOContext *pb = s->pb;
    int ret;

    if((avio_tell(pb) - s->internal->data_offset + mtv->img_segment_size) % mtv->full_segment_size)
    {
        avio_skip(pb, MTV_AUDIO_PADDING_SIZE);

        ret = av_get_packet(pb, pkt, MTV_ASUBCHUNK_DATA_SIZE);
        if(ret < 0)
            return ret;

        pkt->pos -= MTV_AUDIO_PADDING_SIZE;
        pkt->stream_index = 1;

    }else
    {
        ret = av_get_packet(pb, pkt, mtv->img_segment_size);
        if(ret < 0)
            return ret;

        pkt->stream_index = 0;
    }

    return ret;
}
