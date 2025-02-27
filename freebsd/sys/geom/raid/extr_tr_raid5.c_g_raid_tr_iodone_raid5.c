
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_raid_tr_object {int dummy; } ;
struct g_raid_subdisk {int dummy; } ;
struct bio {scalar_t__ bio_error; scalar_t__ bio_inbed; scalar_t__ bio_children; int bio_length; int bio_completed; struct bio* bio_parent; } ;


 int g_destroy_bio (struct bio*) ;
 int g_raid_iodone (struct bio*,scalar_t__) ;

__attribute__((used)) static void
g_raid_tr_iodone_raid5(struct g_raid_tr_object *tr,
    struct g_raid_subdisk *sd, struct bio *bp)
{
 struct bio *pbp;

 pbp = bp->bio_parent;
 if (pbp->bio_error == 0)
  pbp->bio_error = bp->bio_error;
 pbp->bio_inbed++;
 g_destroy_bio(bp);
 if (pbp->bio_children == pbp->bio_inbed) {
  pbp->bio_completed = pbp->bio_length;
  g_raid_iodone(pbp, pbp->bio_error);
 }
}
