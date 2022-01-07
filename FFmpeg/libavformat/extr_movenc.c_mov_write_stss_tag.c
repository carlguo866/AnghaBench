
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int int64_t ;
struct TYPE_5__ {int entry; TYPE_1__* cluster; } ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_2__ MOVTrack ;
typedef int AVIOContext ;


 int MOV_SYNC_SAMPLE ;
 int SEEK_SET ;
 int avio_seek (int *,int ,int ) ;
 int avio_tell (int *) ;
 int avio_wb32 (int *,int) ;
 int ffio_wfourcc (int *,char*) ;
 int update_size (int *,int ) ;

__attribute__((used)) static int mov_write_stss_tag(AVIOContext *pb, MOVTrack *track, uint32_t flag)
{
    int64_t curpos, entryPos;
    int i, index = 0;
    int64_t pos = avio_tell(pb);
    avio_wb32(pb, 0);
    ffio_wfourcc(pb, flag == MOV_SYNC_SAMPLE ? "stss" : "stps");
    avio_wb32(pb, 0);
    entryPos = avio_tell(pb);
    avio_wb32(pb, track->entry);
    for (i = 0; i < track->entry; i++) {
        if (track->cluster[i].flags & flag) {
            avio_wb32(pb, i + 1);
            index++;
        }
    }
    curpos = avio_tell(pb);
    avio_seek(pb, entryPos, SEEK_SET);
    avio_wb32(pb, index);
    avio_seek(pb, curpos, SEEK_SET);
    return update_size(pb, pos);
}
