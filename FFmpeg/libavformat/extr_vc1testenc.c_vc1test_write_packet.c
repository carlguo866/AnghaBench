
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * pb; TYPE_1__* priv_data; } ;
struct TYPE_7__ {int size; int flags; int pts; int data; } ;
struct TYPE_6__ {int frames; } ;
typedef TYPE_1__ RCVContext ;
typedef TYPE_2__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;


 int AV_PKT_FLAG_KEY ;
 int avio_wl32 (int *,int) ;
 int avio_write (int *,int ,int) ;

__attribute__((used)) static int vc1test_write_packet(AVFormatContext *s, AVPacket *pkt)
{
    RCVContext *ctx = s->priv_data;
    AVIOContext *pb = s->pb;

    if (!pkt->size)
        return 0;
    avio_wl32(pb, pkt->size | ((pkt->flags & AV_PKT_FLAG_KEY) ? 0x80000000 : 0));
    avio_wl32(pb, pkt->pts);
    avio_write(pb, pkt->data, pkt->size);
    ctx->frames++;

    return 0;
}
