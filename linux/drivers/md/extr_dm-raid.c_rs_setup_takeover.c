
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mddev {unsigned int raid_disks; int flags; scalar_t__ recovery_cp; void* layout; } ;
struct raid_set {unsigned int raid_disks; unsigned int raid10_copies; scalar_t__ rebuild_disks; TYPE_1__* dev; int raid_type; int data_offset; struct mddev md; } ;
struct md_rdev {int new_data_offset; scalar_t__ recovery_offset; int flags; scalar_t__ data_offset; } ;
typedef int sector_t ;
struct TYPE_2__ {struct md_rdev rdev; } ;


 int ALGORITHM_RAID10_FAR ;
 int ALGORITHM_RAID10_NEAR ;
 int EINVAL ;
 int Faulty ;
 int In_sync ;
 int MD_ARRAY_FIRST_USE ;
 scalar_t__ MaxSector ;
 int __reorder_raid_disk_indexes (struct raid_set*) ;
 int clear_bit (int ,int *) ;
 void* raid10_format_to_md_layout (struct raid_set*,int ,unsigned int) ;
 scalar_t__ rs_is_raid0 (struct raid_set*) ;
 scalar_t__ rs_is_raid1 (struct raid_set*) ;
 scalar_t__ rt_is_raid10 (int ) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (unsigned int,void*) ;

__attribute__((used)) static int rs_setup_takeover(struct raid_set *rs)
{
 struct mddev *mddev = &rs->md;
 struct md_rdev *rdev;
 unsigned int d = mddev->raid_disks = rs->raid_disks;
 sector_t new_data_offset = rs->dev[0].rdev.data_offset ? 0 : rs->data_offset;

 if (rt_is_raid10(rs->raid_type)) {
  if (rs_is_raid0(rs)) {

   __reorder_raid_disk_indexes(rs);


   mddev->layout = raid10_format_to_md_layout(rs, ALGORITHM_RAID10_FAR,
           rs->raid10_copies);
  } else if (rs_is_raid1(rs))

   mddev->layout = raid10_format_to_md_layout(rs, ALGORITHM_RAID10_NEAR,
           rs->raid_disks);
  else
   return -EINVAL;

 }

 clear_bit(MD_ARRAY_FIRST_USE, &mddev->flags);
 mddev->recovery_cp = MaxSector;

 while (d--) {
  rdev = &rs->dev[d].rdev;

  if (test_bit(d, (void *) rs->rebuild_disks)) {
   clear_bit(In_sync, &rdev->flags);
   clear_bit(Faulty, &rdev->flags);
   mddev->recovery_cp = rdev->recovery_offset = 0;

   set_bit(MD_ARRAY_FIRST_USE, &mddev->flags);
  }

  rdev->new_data_offset = new_data_offset;
 }

 return 0;
}
