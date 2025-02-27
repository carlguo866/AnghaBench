
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ next_pts; } ;
struct TYPE_5__ {scalar_t__ next_pts; } ;
struct TYPE_7__ {TYPE_2__ a; scalar_t__ has_audio; TYPE_1__ v; scalar_t__ has_video; } ;
typedef TYPE_3__ mp_media_t ;
typedef scalar_t__ int64_t ;



__attribute__((used)) static inline int64_t mp_media_get_base_pts(mp_media_t *m)
{
 int64_t base_ts = 0;

 if (m->has_video && m->v.next_pts > base_ts)
  base_ts = m->v.next_pts;
 if (m->has_audio && m->a.next_pts > base_ts)
  base_ts = m->a.next_pts;

 return base_ts;
}
