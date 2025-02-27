
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_14__ {TYPE_4__* priv_data; } ;
struct TYPE_13__ {int flags; } ;
struct TYPE_12__ {int count; size_t duration; } ;
struct TYPE_11__ {int entry; TYPE_1__* cluster; } ;
struct TYPE_10__ {size_t cts; } ;
typedef TYPE_2__ MOVTrack ;
typedef TYPE_3__ MOVStts ;
typedef TYPE_4__ MOVMuxContext ;
typedef int AVIOContext ;
typedef TYPE_5__ AVFormatContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int FF_MOV_FLAG_NEGATIVE_CTS_OFFSETS ;
 int av_free (TYPE_3__*) ;
 TYPE_3__* av_malloc_array (int,int) ;
 int avio_w8 (int *,int) ;
 int avio_wb24 (int *,int ) ;
 int avio_wb32 (int *,size_t) ;
 int ffio_wfourcc (int *,char*) ;

__attribute__((used)) static int mov_write_ctts_tag(AVFormatContext *s, AVIOContext *pb, MOVTrack *track)
{
    MOVMuxContext *mov = s->priv_data;
    MOVStts *ctts_entries;
    uint32_t entries = 0;
    uint32_t atom_size;
    int i;

    ctts_entries = av_malloc_array((track->entry + 1), sizeof(*ctts_entries));
    if (!ctts_entries)
        return AVERROR(ENOMEM);
    ctts_entries[0].count = 1;
    ctts_entries[0].duration = track->cluster[0].cts;
    for (i = 1; i < track->entry; i++) {
        if (track->cluster[i].cts == ctts_entries[entries].duration) {
            ctts_entries[entries].count++;
        } else {
            entries++;
            ctts_entries[entries].duration = track->cluster[i].cts;
            ctts_entries[entries].count = 1;
        }
    }
    entries++;
    atom_size = 16 + (entries * 8);
    avio_wb32(pb, atom_size);
    ffio_wfourcc(pb, "ctts");
    if (mov->flags & FF_MOV_FLAG_NEGATIVE_CTS_OFFSETS)
        avio_w8(pb, 1);
    else
        avio_w8(pb, 0);
    avio_wb24(pb, 0);
    avio_wb32(pb, entries);
    for (i = 0; i < entries; i++) {
        avio_wb32(pb, ctts_entries[i].count);
        avio_wb32(pb, ctts_entries[i].duration);
    }
    av_free(ctts_entries);
    return atom_size;
}
