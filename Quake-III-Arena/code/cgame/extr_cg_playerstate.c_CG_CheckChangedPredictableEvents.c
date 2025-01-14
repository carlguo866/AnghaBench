
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int eventSequence; int* events; int * eventParms; } ;
typedef TYPE_2__ playerState_t ;
struct TYPE_8__ {int event; int eventParm; } ;
struct TYPE_10__ {int lerpOrigin; TYPE_1__ currentState; } ;
typedef TYPE_3__ centity_t ;
struct TYPE_12__ {int eventSequence; int* predictableEvents; TYPE_3__ predictedPlayerEntity; } ;
struct TYPE_11__ {scalar_t__ integer; } ;


 int CG_EntityEvent (TYPE_3__*,int ) ;
 int CG_Printf (char*) ;
 int MAX_PREDICTED_EVENTS ;
 int MAX_PS_EVENTS ;
 TYPE_5__ cg ;
 TYPE_4__ cg_showmiss ;

void CG_CheckChangedPredictableEvents( playerState_t *ps ) {
 int i;
 int event;
 centity_t *cent;

 cent = &cg.predictedPlayerEntity;
 for ( i = ps->eventSequence - MAX_PS_EVENTS ; i < ps->eventSequence ; i++ ) {

  if (i >= cg.eventSequence) {
   continue;
  }

  if (i > cg.eventSequence - MAX_PREDICTED_EVENTS) {

   if ( ps->events[i & (MAX_PS_EVENTS-1)] != cg.predictableEvents[i & (MAX_PREDICTED_EVENTS-1) ] ) {

    event = ps->events[ i & (MAX_PS_EVENTS-1) ];
    cent->currentState.event = event;
    cent->currentState.eventParm = ps->eventParms[ i & (MAX_PS_EVENTS-1) ];
    CG_EntityEvent( cent, cent->lerpOrigin );

    cg.predictableEvents[ i & (MAX_PREDICTED_EVENTS-1) ] = event;

    if ( cg_showmiss.integer ) {
     CG_Printf("WARNING: changed predicted event\n");
    }
   }
  }
 }
}
