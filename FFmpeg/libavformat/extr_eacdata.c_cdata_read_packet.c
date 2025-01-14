
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int pb; TYPE_1__* priv_data; } ;
struct TYPE_8__ {scalar_t__ pts; } ;
struct TYPE_7__ {int channels; int audio_pts; } ;
typedef TYPE_1__ CdataDemuxContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFormatContext ;


 int av_get_packet (int ,TYPE_2__*,int) ;

__attribute__((used)) static int cdata_read_packet(AVFormatContext *s, AVPacket *pkt)
{
    CdataDemuxContext *cdata = s->priv_data;
    int packet_size = 76*cdata->channels;

    int ret = av_get_packet(s->pb, pkt, packet_size);
    if (ret < 0)
        return ret;
    pkt->pts = cdata->audio_pts++;
    return 0;
}
