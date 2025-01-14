
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int z; int momz; int tics; scalar_t__ health; size_t angle; TYPE_1__* info; void* y; void* x; void* momy; void* momx; struct TYPE_6__* tracer; } ;
typedef TYPE_2__ mobj_t ;
typedef int fixed_t ;
typedef size_t angle_t ;
struct TYPE_5__ {int speed; } ;


 size_t ANGLETOFINESHIFT ;
 int FRACUNIT ;
 void* FixedMul (int,int ) ;
 int MT_SMOKE ;
 int P_AproxDistance (void*,void*) ;
 int P_Random () ;
 TYPE_2__* P_SpawnMobj (void*,void*,int,int ) ;
 int P_SpawnPuff (void*,void*,int) ;
 size_t R_PointToAngle2 (void*,void*,void*,void*) ;
 int TRACEANGLE ;
 int * finecosine ;
 int * finesine ;
 int gametic ;

void A_Tracer (mobj_t* actor)
{
    angle_t exact;
    fixed_t dist;
    fixed_t slope;
    mobj_t* dest;
    mobj_t* th;

    if (gametic & 3)
 return;


    P_SpawnPuff (actor->x, actor->y, actor->z);

    th = P_SpawnMobj (actor->x-actor->momx,
        actor->y-actor->momy,
        actor->z, MT_SMOKE);

    th->momz = FRACUNIT;
    th->tics -= P_Random()&3;
    if (th->tics < 1)
 th->tics = 1;


    dest = actor->tracer;

    if (!dest || dest->health <= 0)
 return;


    exact = R_PointToAngle2 (actor->x,
        actor->y,
        dest->x,
        dest->y);

    if (exact != actor->angle)
    {
 if (exact - actor->angle > 0x80000000)
 {
     actor->angle -= TRACEANGLE;
     if (exact - actor->angle < 0x80000000)
  actor->angle = exact;
 }
 else
 {
     actor->angle += TRACEANGLE;
     if (exact - actor->angle > 0x80000000)
  actor->angle = exact;
 }
    }

    exact = actor->angle>>ANGLETOFINESHIFT;
    actor->momx = FixedMul (actor->info->speed, finecosine[exact]);
    actor->momy = FixedMul (actor->info->speed, finesine[exact]);


    dist = P_AproxDistance (dest->x - actor->x,
       dest->y - actor->y);

    dist = dist / actor->info->speed;

    if (dist < 1)
 dist = 1;
    slope = (dest->z+40*FRACUNIT - actor->z) / dist;

    if (slope < actor->momz)
 actor->momz -= FRACUNIT/8;
    else
 actor->momz += FRACUNIT/8;
}
