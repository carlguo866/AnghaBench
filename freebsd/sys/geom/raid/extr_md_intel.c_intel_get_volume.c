
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_raid_vol {scalar_t__ migr_state; } ;
struct intel_raid_map {size_t total_disks; int * disk_idx; } ;
struct intel_raid_conf {size_t total_disks; int * disk; } ;


 struct intel_raid_map* intel_get_map (struct intel_raid_vol*,int) ;

__attribute__((used)) static struct intel_raid_vol *
intel_get_volume(struct intel_raid_conf *meta, int i)
{
 struct intel_raid_vol *mvol;
 struct intel_raid_map *mmap;

 if (i > 1)
  return (((void*)0));
 mvol = (struct intel_raid_vol *)&meta->disk[meta->total_disks];
 for (; i > 0; i--) {
  mmap = intel_get_map(mvol, mvol->migr_state ? 1 : 0);
  mvol = (struct intel_raid_vol *)
      &mmap->disk_idx[mmap->total_disks];
 }
 return (mvol);
}
