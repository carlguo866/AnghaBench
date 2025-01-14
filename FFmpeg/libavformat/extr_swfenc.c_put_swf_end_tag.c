
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_5__ {int * pb; TYPE_1__* priv_data; } ;
struct TYPE_4__ {int tag_pos; int tag; } ;
typedef TYPE_1__ SWFContext ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 int SEEK_SET ;
 int TAG_LONG ;
 int av_assert0 (int) ;
 int avio_seek (int *,int,int ) ;
 int avio_tell (int *) ;
 int avio_wl16 (int *,int) ;
 int avio_wl32 (int *,int) ;

__attribute__((used)) static void put_swf_end_tag(AVFormatContext *s)
{
    SWFContext *swf = s->priv_data;
    AVIOContext *pb = s->pb;
    int64_t pos;
    int tag_len, tag;

    pos = avio_tell(pb);
    tag_len = pos - swf->tag_pos - 2;
    tag = swf->tag;
    avio_seek(pb, swf->tag_pos, SEEK_SET);
    if (tag & TAG_LONG) {
        tag &= ~TAG_LONG;
        avio_wl16(pb, (tag << 6) | 0x3f);
        avio_wl32(pb, tag_len - 4);
    } else {
        av_assert0(tag_len < 0x3f);
        avio_wl16(pb, (tag << 6) | tag_len);
    }
    avio_seek(pb, pos, SEEK_SET);
}
