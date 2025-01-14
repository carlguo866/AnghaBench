
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct g_raid_volume {int v_disks_count; scalar_t__ v_strip_size; struct g_raid_subdisk* v_subdisks; } ;
struct g_raid_subdisk {int sd_pos; int sd_state; scalar_t__ sd_rebuild_pos; int sd_recovery; } ;
typedef scalar_t__ off_t ;


 scalar_t__ ABS (scalar_t__) ;
 int G_RAID_SUBDISK_LOAD (struct g_raid_subdisk*) ;
 int G_RAID_SUBDISK_LOAD_SCALE ;
 scalar_t__ G_RAID_SUBDISK_POS (struct g_raid_subdisk*) ;




 scalar_t__ G_RAID_SUBDISK_TRACK_SIZE ;
 int INT_MAX ;
 int N ;
 int min (int ,int) ;

__attribute__((used)) static int
g_raid_tr_raid1e_select_read_disk(struct g_raid_volume *vol,
    int no, off_t off, off_t len, u_int mask)
{
 struct g_raid_subdisk *sd;
 off_t offset;
 int i, best, prio, bestprio;

 best = -1;
 bestprio = INT_MAX;
 for (i = 0; i < N; i++) {
  sd = &vol->v_subdisks[(no + i) % vol->v_disks_count];
  offset = off;
  if (no + i >= vol->v_disks_count)
   offset += vol->v_strip_size;

  prio = G_RAID_SUBDISK_LOAD(sd);
  if ((mask & (1 << sd->sd_pos)) != 0)
   continue;
  switch (sd->sd_state) {
  case 131:
   break;
  case 129:
   if (offset + off < sd->sd_rebuild_pos)
    break;

  case 128:
   prio += i << 24;
   break;
  case 130:
   if (offset + off < sd->sd_rebuild_pos)
    break;

  default:
   continue;
  }
  prio += min(sd->sd_recovery, 255) << 16;

  if (G_RAID_SUBDISK_POS(sd) == offset)
   prio -= 2 * G_RAID_SUBDISK_LOAD_SCALE;
  else

  if (ABS(G_RAID_SUBDISK_POS(sd) - offset) <
      G_RAID_SUBDISK_TRACK_SIZE)
   prio -= 1 * G_RAID_SUBDISK_LOAD_SCALE;
  if (prio < bestprio) {
   bestprio = prio;
   best = i;
  }
 }
 return (best);
}
