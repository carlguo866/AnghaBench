
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ acp1; } ;
struct TYPE_18__ {TYPE_1__ function; struct TYPE_18__* next; } ;
typedef TYPE_4__ thinker_t ;
struct TYPE_19__ {int tag; } ;
typedef TYPE_5__ sector_t ;
struct TYPE_20__ {int flags; scalar_t__ type; unsigned int angle; int reactiontime; scalar_t__ momz; scalar_t__ momy; scalar_t__ momx; TYPE_3__* player; scalar_t__ z; scalar_t__ y; scalar_t__ x; scalar_t__ floorz; TYPE_2__* subsector; } ;
typedef TYPE_6__ mobj_t ;
struct TYPE_21__ {int tag; } ;
typedef TYPE_7__ line_t ;
typedef scalar_t__ fixed_t ;
typedef scalar_t__ actionf_p1 ;
struct TYPE_17__ {scalar_t__ viewheight; scalar_t__ viewz; } ;
struct TYPE_16__ {TYPE_5__* sector; } ;


 unsigned int ANGLETOFINESHIFT ;
 int MF_MISSILE ;
 scalar_t__ MT_TELEPORTMAN ;
 int MT_TFOG ;
 scalar_t__ P_MobjThinker ;
 TYPE_6__* P_SpawnMobj (scalar_t__,scalar_t__,scalar_t__,int ) ;
 int P_TeleportMove (TYPE_6__*,scalar_t__,scalar_t__) ;
 int S_StartSound (TYPE_6__*,int ) ;
 int* finecosine ;
 int* finesine ;
 int numsectors ;
 TYPE_5__* sectors ;
 int sfx_telept ;
 TYPE_4__ thinkercap ;

int
EV_Teleport
( line_t* line,
  int side,
  mobj_t* thing )
{
    int i;
    int tag;
    mobj_t* m;
    mobj_t* fog;
    unsigned an;
    thinker_t* thinker;
    sector_t* sector;
    fixed_t oldx;
    fixed_t oldy;
    fixed_t oldz;


    if (thing->flags & MF_MISSILE)
 return 0;



    if (side == 1)
 return 0;


    tag = line->tag;
    for (i = 0; i < numsectors; i++)
    {
 if (sectors[ i ].tag == tag )
 {
     thinker = thinkercap.next;
     for (thinker = thinkercap.next;
   thinker != &thinkercap;
   thinker = thinker->next)
     {

  if (thinker->function.acp1 != (actionf_p1)P_MobjThinker)
      continue;

  m = (mobj_t *)thinker;


  if (m->type != MT_TELEPORTMAN )
      continue;

  sector = m->subsector->sector;

  if (sector-sectors != i )
      continue;

  oldx = thing->x;
  oldy = thing->y;
  oldz = thing->z;

  if (!P_TeleportMove (thing, m->x, m->y))
      return 0;

  thing->z = thing->floorz;
  if (thing->player)
      thing->player->viewz = thing->z+thing->player->viewheight;


  fog = P_SpawnMobj (oldx, oldy, oldz, MT_TFOG);
  S_StartSound (fog, sfx_telept);
  an = m->angle >> ANGLETOFINESHIFT;
  fog = P_SpawnMobj (m->x+20*finecosine[an], m->y+20*finesine[an]
       , thing->z, MT_TFOG);


  S_StartSound (fog, sfx_telept);


  if (thing->player)
      thing->reactiontime = 18;

  thing->angle = m->angle;
  thing->momx = thing->momy = thing->momz = 0;
  return 1;
     }
 }
    }
    return 0;
}
