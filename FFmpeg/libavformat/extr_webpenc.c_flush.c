
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_11__ {int size; char* data; scalar_t__ pts; scalar_t__ duration; } ;
struct TYPE_8__ {int wrote_webp_header; int frame_count; TYPE_6__ last_pkt; int loop; } ;
typedef TYPE_2__ WebpContext ;
struct TYPE_10__ {int pb; TYPE_3__** streams; TYPE_2__* priv_data; } ;
struct TYPE_9__ {TYPE_1__* codecpar; } ;
struct TYPE_7__ {scalar_t__ width; scalar_t__ height; } ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVFormatContext ;


 scalar_t__ AV_NOPTS_VALUE ;
 scalar_t__ AV_RL32 (char*) ;
 int av_packet_unref (TYPE_6__*) ;
 int avio_w8 (int ,unsigned int) ;
 int avio_wl16 (int ,int ) ;
 int avio_wl24 (int ,scalar_t__) ;
 int avio_wl32 (int ,int) ;
 int avio_write (int ,char*,int) ;

__attribute__((used)) static int flush(AVFormatContext *s, int trailer, int64_t pts)
{
    WebpContext *w = s->priv_data;
    AVStream *st = s->streams[0];

    if (w->last_pkt.size) {
        int skip = 0;
        unsigned flags = 0;
        int vp8x = 0;

        if (w->last_pkt.size < 4)
            return 0;
        if (AV_RL32(w->last_pkt.data) == AV_RL32("RIFF"))
            skip = 12;

        if (w->last_pkt.size < skip + 4)
            return 0;
        if (AV_RL32(w->last_pkt.data + skip) == AV_RL32("VP8X")) {
            flags |= w->last_pkt.data[skip + 4 + 4];
            vp8x = 1;
            skip += AV_RL32(w->last_pkt.data + skip + 4) + 8;
        }

        if (!w->wrote_webp_header) {
            avio_write(s->pb, "RIFF\0\0\0\0WEBP", 12);
            w->wrote_webp_header = 1;
            if (w->frame_count > 1)
                w->frame_count = 1;
        }

        if (w->frame_count == 1) {
            if (!trailer) {
                vp8x = 1;
                flags |= 2 + 16;
            }

            if (vp8x) {
                avio_write(s->pb, "VP8X", 4);
                avio_wl32(s->pb, 10);
                avio_w8(s->pb, flags);
                avio_wl24(s->pb, 0);
                avio_wl24(s->pb, st->codecpar->width - 1);
                avio_wl24(s->pb, st->codecpar->height - 1);
            }
            if (!trailer) {
                avio_write(s->pb, "ANIM", 4);
                avio_wl32(s->pb, 6);
                avio_wl32(s->pb, 0xFFFFFFFF);
                avio_wl16(s->pb, w->loop);
            }
        }

        if (w->frame_count > trailer) {
            avio_write(s->pb, "ANMF", 4);
            avio_wl32(s->pb, 16 + w->last_pkt.size - skip);
            avio_wl24(s->pb, 0);
            avio_wl24(s->pb, 0);
            avio_wl24(s->pb, st->codecpar->width - 1);
            avio_wl24(s->pb, st->codecpar->height - 1);
            if (w->last_pkt.pts != AV_NOPTS_VALUE && pts != AV_NOPTS_VALUE) {
                avio_wl24(s->pb, pts - w->last_pkt.pts);
            } else
                avio_wl24(s->pb, w->last_pkt.duration);
            avio_w8(s->pb, 0);
        }
        avio_write(s->pb, w->last_pkt.data + skip, w->last_pkt.size - skip);
        av_packet_unref(&w->last_pkt);
    }

    return 0;
}
