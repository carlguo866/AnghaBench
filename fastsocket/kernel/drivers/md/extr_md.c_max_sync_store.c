
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {unsigned long long resync_max; unsigned long long resync_min; scalar_t__ ro; int recovery_wait; scalar_t__ chunk_sectors; int recovery; } ;
typedef size_t ssize_t ;
typedef unsigned long long sector_t ;


 size_t EBUSY ;
 size_t EINVAL ;
 int MD_RECOVERY_RUNNING ;
 unsigned long long MaxSector ;
 scalar_t__ kstrtoull (char const*,int,unsigned long long*) ;
 scalar_t__ sector_div (unsigned long long,scalar_t__) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 scalar_t__ test_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static ssize_t
max_sync_store(struct mddev *mddev, const char *buf, size_t len)
{
 if (strncmp(buf, "max", 3) == 0)
  mddev->resync_max = MaxSector;
 else {
  unsigned long long max;
  if (kstrtoull(buf, 10, &max))
   return -EINVAL;
  if (max < mddev->resync_min)
   return -EINVAL;
  if (max < mddev->resync_max &&
      mddev->ro == 0 &&
      test_bit(MD_RECOVERY_RUNNING, &mddev->recovery))
   return -EBUSY;


  if (mddev->chunk_sectors) {
   sector_t temp = max;
   if (sector_div(temp, mddev->chunk_sectors))
    return -EINVAL;
  }
  mddev->resync_max = max;
 }
 wake_up(&mddev->recovery_wait);
 return len;
}
