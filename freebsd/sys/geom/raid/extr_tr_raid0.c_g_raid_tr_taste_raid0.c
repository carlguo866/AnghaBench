
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_raid_volume {int dummy; } ;
struct g_raid_tr_raid0_object {int trso_starting; } ;
struct g_raid_tr_object {TYPE_1__* tro_volume; } ;
struct TYPE_2__ {scalar_t__ v_raid_level; scalar_t__ v_raid_level_qualifier; } ;


 int G_RAID_TR_TASTE_FAIL ;
 int G_RAID_TR_TASTE_SUCCEED ;
 scalar_t__ G_RAID_VOLUME_RLQ_NONE ;
 scalar_t__ G_RAID_VOLUME_RL_RAID0 ;

__attribute__((used)) static int
g_raid_tr_taste_raid0(struct g_raid_tr_object *tr, struct g_raid_volume *volume)
{
 struct g_raid_tr_raid0_object *trs;

 trs = (struct g_raid_tr_raid0_object *)tr;
 if (tr->tro_volume->v_raid_level != G_RAID_VOLUME_RL_RAID0 ||
     tr->tro_volume->v_raid_level_qualifier != G_RAID_VOLUME_RLQ_NONE)
  return (G_RAID_TR_TASTE_FAIL);
 trs->trso_starting = 1;
 return (G_RAID_TR_TASTE_SUCCEED);
}
