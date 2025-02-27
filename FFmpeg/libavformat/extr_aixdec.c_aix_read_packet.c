
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_7__ {int nb_streams; int pb; } ;
struct TYPE_6__ {unsigned int stream_index; unsigned int duration; int pos; } ;
typedef TYPE_1__ AVPacket ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR_EOF ;
 int AVERROR_INVALIDDATA ;
 unsigned int MKTAG (char,char,char,char) ;
 int av_get_packet (int ,TYPE_1__*,unsigned int) ;
 scalar_t__ avio_feof (int ) ;
 unsigned int avio_r8 (int ) ;
 unsigned int avio_rb16 (int ) ;
 void* avio_rb32 (int ) ;
 unsigned int avio_rl32 (int ) ;
 int avio_skip (int ,unsigned int) ;
 int avio_tell (int ) ;

__attribute__((used)) static int aix_read_packet(AVFormatContext *s, AVPacket *pkt)
{
    unsigned size, index, duration, chunk;
    int64_t pos;
    int sequence, ret, i;

    pos = avio_tell(s->pb);
    if (avio_feof(s->pb))
        return AVERROR_EOF;
    chunk = avio_rl32(s->pb);
    size = avio_rb32(s->pb);
    if (chunk == MKTAG('A','I','X','E')) {
        avio_skip(s->pb, size);
        for (i = 0; i < s->nb_streams; i++) {
            if (avio_feof(s->pb))
                return AVERROR_EOF;
            chunk = avio_rl32(s->pb);
            size = avio_rb32(s->pb);
            avio_skip(s->pb, size);
        }
        pos = avio_tell(s->pb);
        chunk = avio_rl32(s->pb);
        size = avio_rb32(s->pb);
    }

    if (chunk != MKTAG('A','I','X','P'))
        return AVERROR_INVALIDDATA;
    if (size <= 8)
        return AVERROR_INVALIDDATA;
    index = avio_r8(s->pb);
    if (avio_r8(s->pb) != s->nb_streams || index >= s->nb_streams)
        return AVERROR_INVALIDDATA;
    duration = avio_rb16(s->pb);
    sequence = avio_rb32(s->pb);
    if (sequence < 0) {
        avio_skip(s->pb, size - 8);
        return 0;
    }

    ret = av_get_packet(s->pb, pkt, size - 8);
    pkt->stream_index = index;
    pkt->duration = duration;
    pkt->pos = pos;
    return ret;
}
