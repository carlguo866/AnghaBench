
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_9__ {int allsolid; } ;
typedef TYPE_2__ trace_t ;
struct TYPE_11__ {TYPE_1__* ps; int tracemask; int maxs; int mins; int (* trace ) (TYPE_2__*,scalar_t__*,int ,int ,scalar_t__*,int ,int ) ;scalar_t__ debugLevel; } ;
struct TYPE_10__ {int groundPlane; int walking; TYPE_2__ groundTrace; } ;
struct TYPE_8__ {int groundEntityNum; int clientNum; scalar_t__* origin; } ;


 int Com_Printf (char*,int ) ;
 int ENTITYNUM_NONE ;
 int VectorCopy (scalar_t__*,scalar_t__*) ;
 int c_pmove ;
 TYPE_6__* pm ;
 TYPE_5__ pml ;
 int qfalse ;
 int qtrue ;
 int stub1 (TYPE_2__*,scalar_t__*,int ,int ,scalar_t__*,int ,int ) ;
 int stub2 (TYPE_2__*,scalar_t__*,int ,int ,scalar_t__*,int ,int ) ;

__attribute__((used)) static int PM_CorrectAllSolid( trace_t *trace ) {
 int i, j, k;
 vec3_t point;

 if ( pm->debugLevel ) {
  Com_Printf("%i:allsolid\n", c_pmove);
 }


 for (i = -1; i <= 1; i++) {
  for (j = -1; j <= 1; j++) {
   for (k = -1; k <= 1; k++) {
    VectorCopy(pm->ps->origin, point);
    point[0] += (float) i;
    point[1] += (float) j;
    point[2] += (float) k;
    pm->trace (trace, point, pm->mins, pm->maxs, point, pm->ps->clientNum, pm->tracemask);
    if ( !trace->allsolid ) {
     point[0] = pm->ps->origin[0];
     point[1] = pm->ps->origin[1];
     point[2] = pm->ps->origin[2] - 0.25;

     pm->trace (trace, pm->ps->origin, pm->mins, pm->maxs, point, pm->ps->clientNum, pm->tracemask);
     pml.groundTrace = *trace;
     return qtrue;
    }
   }
  }
 }

 pm->ps->groundEntityNum = ENTITYNUM_NONE;
 pml.groundPlane = qfalse;
 pml.walking = qfalse;

 return qfalse;
}
