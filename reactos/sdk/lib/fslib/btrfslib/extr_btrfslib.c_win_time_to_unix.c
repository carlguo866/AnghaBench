
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONGLONG ;
struct TYPE_6__ {int seconds; int nanoseconds; } ;
struct TYPE_5__ {int QuadPart; } ;
typedef TYPE_1__ LARGE_INTEGER ;
typedef TYPE_2__ BTRFS_TIME ;



__attribute__((used)) static __inline void win_time_to_unix(LARGE_INTEGER t, BTRFS_TIME* out) {
    ULONGLONG l = t.QuadPart - 116444736000000000;

    out->seconds = l / 10000000;
    out->nanoseconds = (l % 10000000) * 100;
}
