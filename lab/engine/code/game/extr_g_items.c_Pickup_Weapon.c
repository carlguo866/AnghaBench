
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int count; int flags; TYPE_3__* item; TYPE_2__* client; } ;
typedef TYPE_4__ gentity_t ;
struct TYPE_17__ {scalar_t__ integer; } ;
struct TYPE_16__ {int integer; } ;
struct TYPE_15__ {int integer; } ;
struct TYPE_13__ {int quantity; size_t giTag; } ;
struct TYPE_11__ {int* ammo; int* stats; } ;
struct TYPE_12__ {TYPE_1__ ps; } ;


 int Add_Ammo (TYPE_4__*,int,int) ;
 int FL_DROPPED_ITEM ;
 scalar_t__ GT_TEAM ;
 size_t STAT_WEAPONS ;
 int WP_GRAPPLING_HOOK ;
 TYPE_7__ g_gametype ;
 TYPE_6__ g_weaponRespawn ;
 TYPE_5__ g_weaponTeamRespawn ;

int Pickup_Weapon (gentity_t *ent, gentity_t *other) {
 int quantity;

 if ( ent->count < 0 ) {
  quantity = 0;
 } else {
  if ( ent->count ) {
   quantity = ent->count;
  } else {
   quantity = ent->item->quantity;
  }


  if ( ! (ent->flags & FL_DROPPED_ITEM) && g_gametype.integer != GT_TEAM ) {


   if ( other->client->ps.ammo[ ent->item->giTag ] < quantity ) {
    quantity = quantity - other->client->ps.ammo[ ent->item->giTag ];
   } else {
    quantity = 1;
   }
  }
 }


 other->client->ps.stats[STAT_WEAPONS] |= ( 1 << ent->item->giTag );

 Add_Ammo( other, ent->item->giTag, quantity );

 if (ent->item->giTag == WP_GRAPPLING_HOOK)
  other->client->ps.ammo[ent->item->giTag] = -1;


 if ( g_gametype.integer == GT_TEAM ) {
  return g_weaponTeamRespawn.integer;
 }

 return g_weaponRespawn.integer;
}
