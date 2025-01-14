
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_8__ {float trDuration; int trType; } ;
struct TYPE_9__ {TYPE_1__ pos; int loopSound; int origin; } ;
struct TYPE_10__ {float speed; int wait; TYPE_2__ s; int think; scalar_t__ nextthink; int soundLoop; int pos1; int pos2; struct TYPE_10__* nextTrain; } ;
typedef TYPE_3__ gentity_t ;
struct TYPE_11__ {scalar_t__ time; } ;


 int G_UseTargets (TYPE_3__*,int *) ;
 int MOVER_1TO2 ;
 int SetMoverState (TYPE_3__*,int ,scalar_t__) ;
 int TR_STATIONARY ;
 int Think_BeginMoving ;
 int VectorCopy (int ,int ) ;
 float VectorLength (int ) ;
 int VectorSubtract (int ,int ,int ) ;
 TYPE_4__ level ;

void Reached_Train( gentity_t *ent ) {
 gentity_t *next;
 float speed;
 vec3_t move;
 float length;


 next = ent->nextTrain;
 if ( !next || !next->nextTrain ) {
  return;
 }


 G_UseTargets( next, ((void*)0) );


 ent->nextTrain = next->nextTrain;
 VectorCopy( next->s.origin, ent->pos1 );
 VectorCopy( next->nextTrain->s.origin, ent->pos2 );


 if ( next->speed ) {
  speed = next->speed;
 } else {

  speed = ent->speed;
 }
 if ( speed < 1 ) {
  speed = 1;
 }


 VectorSubtract( ent->pos2, ent->pos1, move );
 length = VectorLength( move );

 ent->s.pos.trDuration = length * 1000 / speed;


 ent->s.loopSound = next->soundLoop;


 SetMoverState( ent, MOVER_1TO2, level.time );


 if ( next->wait ) {
  ent->nextthink = level.time + next->wait * 1000;
  ent->think = Think_BeginMoving;
  ent->s.pos.trType = TR_STATIONARY;
 }
}
