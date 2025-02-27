
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef void** vec3_t ;
struct TYPE_9__ {int trBase; } ;
struct TYPE_10__ {void** angles; TYPE_1__ pos; } ;
struct TYPE_13__ {TYPE_4__* client; TYPE_2__ s; } ;
typedef TYPE_5__ gentity_t ;
struct TYPE_11__ {void** stats; } ;
struct TYPE_12__ {TYPE_3__ ps; } ;


 size_t PITCH ;
 size_t ROLL ;
 size_t STAT_DEAD_YAW ;
 int VectorSubtract (int ,int ,void**) ;
 size_t YAW ;
 void* vectoyaw (void**) ;

void LookAtKiller( gentity_t *self, gentity_t *inflictor, gentity_t *attacker ) {
 vec3_t dir;
 vec3_t angles;

 if ( attacker && attacker != self ) {
  VectorSubtract (attacker->s.pos.trBase, self->s.pos.trBase, dir);
 } else if ( inflictor && inflictor != self ) {
  VectorSubtract (inflictor->s.pos.trBase, self->s.pos.trBase, dir);
 } else {
  self->client->ps.stats[STAT_DEAD_YAW] = self->s.angles[YAW];
  return;
 }

 self->client->ps.stats[STAT_DEAD_YAW] = vectoyaw ( dir );

 angles[YAW] = vectoyaw ( dir );
 angles[PITCH] = 0;
 angles[ROLL] = 0;
}
