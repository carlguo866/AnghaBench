
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct md_rdev {int raid_disk; int saved_raid_disk; int sysfs_state; int flags; TYPE_2__* mddev; } ;
typedef int ssize_t ;
struct TYPE_6__ {int raid_disks; int delta_disks; TYPE_1__* pers; int recovery; int thread; } ;
struct TYPE_5__ {int (* hot_add_disk ) (TYPE_2__*,struct md_rdev*) ;int * hot_remove_disk; } ;


 int Bitmap_sync ;
 int Blocked ;
 int EBUSY ;
 int EEXIST ;
 int EINVAL ;
 int ENOSPC ;
 int Faulty ;
 int In_sync ;
 int Journal ;
 int MD_RECOVERY_NEEDED ;
 int MD_RECOVERY_RUNNING ;
 int WriteMostly ;
 int clear_bit (int ,int *) ;
 int kstrtouint (char const*,int,unsigned int*) ;
 int md_wakeup_thread (int ) ;
 int remove_and_add_spares (TYPE_2__*,struct md_rdev*) ;
 int set_bit (int ,int *) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int stub1 (TYPE_2__*,struct md_rdev*) ;
 scalar_t__ sysfs_link_rdev (TYPE_2__*,struct md_rdev*) ;
 int sysfs_notify_dirent_safe (int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static ssize_t
slot_store(struct md_rdev *rdev, const char *buf, size_t len)
{
 int slot;
 int err;

 if (test_bit(Journal, &rdev->flags))
  return -EBUSY;
 if (strncmp(buf, "none", 4)==0)
  slot = -1;
 else {
  err = kstrtouint(buf, 10, (unsigned int *)&slot);
  if (err < 0)
   return err;
 }
 if (rdev->mddev->pers && slot == -1) {







  if (rdev->raid_disk == -1)
   return -EEXIST;

  if (rdev->mddev->pers->hot_remove_disk == ((void*)0))
   return -EINVAL;
  clear_bit(Blocked, &rdev->flags);
  remove_and_add_spares(rdev->mddev, rdev);
  if (rdev->raid_disk >= 0)
   return -EBUSY;
  set_bit(MD_RECOVERY_NEEDED, &rdev->mddev->recovery);
  md_wakeup_thread(rdev->mddev->thread);
 } else if (rdev->mddev->pers) {



  int err;

  if (rdev->raid_disk != -1)
   return -EBUSY;

  if (test_bit(MD_RECOVERY_RUNNING, &rdev->mddev->recovery))
   return -EBUSY;

  if (rdev->mddev->pers->hot_add_disk == ((void*)0))
   return -EINVAL;

  if (slot >= rdev->mddev->raid_disks &&
      slot >= rdev->mddev->raid_disks + rdev->mddev->delta_disks)
   return -ENOSPC;

  rdev->raid_disk = slot;
  if (test_bit(In_sync, &rdev->flags))
   rdev->saved_raid_disk = slot;
  else
   rdev->saved_raid_disk = -1;
  clear_bit(In_sync, &rdev->flags);
  clear_bit(Bitmap_sync, &rdev->flags);
  err = rdev->mddev->pers->
   hot_add_disk(rdev->mddev, rdev);
  if (err) {
   rdev->raid_disk = -1;
   return err;
  } else
   sysfs_notify_dirent_safe(rdev->sysfs_state);
  if (sysfs_link_rdev(rdev->mddev, rdev))
                           ;

 } else {
  if (slot >= rdev->mddev->raid_disks &&
      slot >= rdev->mddev->raid_disks + rdev->mddev->delta_disks)
   return -ENOSPC;
  rdev->raid_disk = slot;

  clear_bit(Faulty, &rdev->flags);
  clear_bit(WriteMostly, &rdev->flags);
  set_bit(In_sync, &rdev->flags);
  sysfs_notify_dirent_safe(rdev->sysfs_state);
 }
 return len;
}
