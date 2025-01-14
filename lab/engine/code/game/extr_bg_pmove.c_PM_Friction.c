
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_8__ {int waterlevel; TYPE_2__* ps; } ;
struct TYPE_5__ {int surfaceFlags; } ;
struct TYPE_7__ {float frametime; TYPE_1__ groundTrace; scalar_t__ walking; } ;
struct TYPE_6__ {float* velocity; int pm_flags; scalar_t__ pm_type; scalar_t__* powerups; } ;


 int PMF_TIME_KNOCKBACK ;
 scalar_t__ PM_SPECTATOR ;
 size_t PW_FLIGHT ;
 int SURF_SLICK ;
 int VectorCopy (float*,scalar_t__*) ;
 float VectorLength (scalar_t__*) ;
 TYPE_4__* pm ;
 float pm_flightfriction ;
 float pm_friction ;
 float pm_spectatorfriction ;
 float pm_stopspeed ;
 float pm_waterfriction ;
 TYPE_3__ pml ;

__attribute__((used)) static void PM_Friction( void ) {
 vec3_t vec;
 float *vel;
 float speed, newspeed, control;
 float drop;

 vel = pm->ps->velocity;

 VectorCopy( vel, vec );
 if ( pml.walking ) {
  vec[2] = 0;
 }

 speed = VectorLength(vec);
 if (speed < 1) {
  vel[0] = 0;
  vel[1] = 0;

  return;
 }

 drop = 0;


 if ( pm->waterlevel <= 1 ) {
  if ( pml.walking && !(pml.groundTrace.surfaceFlags & SURF_SLICK) ) {

   if ( ! (pm->ps->pm_flags & PMF_TIME_KNOCKBACK) ) {
    control = speed < pm_stopspeed ? pm_stopspeed : speed;
    drop += control*pm_friction*pml.frametime;
   }
  }
 }


 if ( pm->waterlevel ) {
  drop += speed*pm_waterfriction*pm->waterlevel*pml.frametime;
 }


 if ( pm->ps->powerups[PW_FLIGHT]) {
  drop += speed*pm_flightfriction*pml.frametime;
 }

 if ( pm->ps->pm_type == PM_SPECTATOR) {
  drop += speed*pm_spectatorfriction*pml.frametime;
 }


 newspeed = speed - drop;
 if (newspeed < 0) {
  newspeed = 0;
 }
 newspeed /= speed;

 vel[0] = vel[0] * newspeed;
 vel[1] = vel[1] * newspeed;
 vel[2] = vel[2] * newspeed;
}
