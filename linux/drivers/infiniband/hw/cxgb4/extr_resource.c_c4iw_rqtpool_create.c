
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* vr; } ;
struct c4iw_rdev {int rqt_pool; TYPE_4__ lldi; } ;
struct TYPE_6__ {int start; int size; } ;
struct TYPE_5__ {scalar_t__ size; } ;
struct TYPE_7__ {TYPE_2__ rq; TYPE_1__ srq; } ;


 int ENOMEM ;
 int MIN_RQT_SHIFT ;
 int T4_RQT_ENTRY_SIZE ;
 scalar_t__ gen_pool_add (int ,unsigned int,unsigned int,int) ;
 int gen_pool_create (int,int) ;
 unsigned int min (unsigned int,unsigned int) ;
 int pr_debug (char*,unsigned int,unsigned int) ;
 int pr_warn (char*,unsigned int,unsigned int) ;

int c4iw_rqtpool_create(struct c4iw_rdev *rdev)
{
 unsigned rqt_start, rqt_chunk, rqt_top;
 int skip = 0;

 rdev->rqt_pool = gen_pool_create(MIN_RQT_SHIFT, -1);
 if (!rdev->rqt_pool)
  return -ENOMEM;





 if (rdev->lldi.vr->srq.size)
  skip = T4_RQT_ENTRY_SIZE;

 rqt_start = rdev->lldi.vr->rq.start + skip;
 rqt_chunk = rdev->lldi.vr->rq.size - skip;
 rqt_top = rqt_start + rqt_chunk;

 while (rqt_start < rqt_top) {
  rqt_chunk = min(rqt_top - rqt_start + 1, rqt_chunk);
  if (gen_pool_add(rdev->rqt_pool, rqt_start, rqt_chunk, -1)) {
   pr_debug("failed to add RQT chunk (%x/%x)\n",
     rqt_start, rqt_chunk);
   if (rqt_chunk <= 1024 << MIN_RQT_SHIFT) {
    pr_warn("Failed to add all RQT chunks (%x/%x)\n",
     rqt_start, rqt_top - rqt_start);
    return 0;
   }
   rqt_chunk >>= 1;
  } else {
   pr_debug("added RQT chunk (%x/%x)\n",
     rqt_start, rqt_chunk);
   rqt_start += rqt_chunk;
  }
 }
 return 0;
}
