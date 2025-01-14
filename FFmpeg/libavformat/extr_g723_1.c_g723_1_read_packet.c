
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int pb; } ;
struct TYPE_7__ {int* data; int duration; int size; scalar_t__ stream_index; int pos; } ;
typedef TYPE_1__ AVPacket ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR_EOF ;
 int av_new_packet (TYPE_1__*,int) ;
 int av_packet_unref (TYPE_1__*) ;
 int avio_r8 (int ) ;
 int avio_read (int ,int*,int) ;
 int avio_tell (int ) ;
 int* frame_size ;

__attribute__((used)) static int g723_1_read_packet(AVFormatContext *s, AVPacket *pkt)
{
    int size, byte, ret;

    pkt->pos = avio_tell(s->pb);
    byte = avio_r8(s->pb);
    size = frame_size[byte & 3];

    ret = av_new_packet(pkt, size);
    if (ret < 0)
        return ret;

    pkt->data[0] = byte;
    pkt->duration = 240;
    pkt->stream_index = 0;

    ret = avio_read(s->pb, pkt->data + 1, size - 1);
    if (ret < size - 1) {
        av_packet_unref(pkt);
        return ret < 0 ? ret : AVERROR_EOF;
    }

    return pkt->size;
}
