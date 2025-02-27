
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef float* vec3_t ;
struct TYPE_8__ {float damageTime; float time; float damageX; int headStartYaw; int headEndYaw; int headEndPitch; scalar_t__ headStartTime; scalar_t__ headEndTime; int headStartPitch; TYPE_2__* snap; } ;
struct TYPE_7__ {scalar_t__ value; } ;
struct TYPE_5__ {int clientNum; } ;
struct TYPE_6__ {TYPE_1__ ps; } ;


 int CG_DrawHead (float,int,float,float,int ,float*) ;
 float DAMAGE_TIME ;
 double ICON_SIZE ;
 int M_PI ;
 size_t PITCH ;
 int VectorClear (float*) ;
 size_t YAW ;
 TYPE_4__ cg ;
 TYPE_3__ cg_animateStatusBarHead ;
 int cos (int) ;
 int crandom () ;
 int random () ;

__attribute__((used)) static void CG_DrawStatusBarHead( float x ) {
 vec3_t angles;
 float size, stretch;
 float frac;

 VectorClear( angles );

 if ( cg_animateStatusBarHead.value != 0 ) {

  if ( cg.damageTime && cg.time - cg.damageTime < DAMAGE_TIME ) {
   frac = (float)(cg.time - cg.damageTime ) / DAMAGE_TIME;
   size = ICON_SIZE * 1.25 * ( 1.5 - frac * 0.5 );

   stretch = size - ICON_SIZE * 1.25;

   x -= stretch * 0.5 + cg.damageX * stretch * 0.5;

   cg.headStartYaw = 180 + cg.damageX * 45;

   cg.headEndYaw = 180 + 20 * cos( crandom()*M_PI );
   cg.headEndPitch = 5 * cos( crandom()*M_PI );

   cg.headStartTime = cg.time;
   cg.headEndTime = cg.time + 100 + random() * 2000;
  } else {
   if ( cg.time >= cg.headEndTime ) {

    cg.headStartYaw = cg.headEndYaw;
    cg.headStartPitch = cg.headEndPitch;
    cg.headStartTime = cg.headEndTime;
    cg.headEndTime = cg.time + 100 + random() * 2000;

    cg.headEndYaw = 180 + 20 * cos( crandom()*M_PI );
    cg.headEndPitch = 5 * cos( crandom()*M_PI );
   }

   size = ICON_SIZE * 1.25;
  }


  if ( cg.headStartTime > cg.time ) {
   cg.headStartTime = cg.time;
  }

  frac = ( cg.time - cg.headStartTime ) / (float)( cg.headEndTime - cg.headStartTime );
  frac = frac * frac * ( 3 - 2 * frac );
  angles[YAW] = cg.headStartYaw + ( cg.headEndYaw - cg.headStartYaw ) * frac;
  angles[PITCH] = cg.headStartPitch + ( cg.headEndPitch - cg.headStartPitch ) * frac;
 } else {
  angles[YAW] = 180;
  angles[PITCH] = 5;
  size = ICON_SIZE * 1.25;
 }

 CG_DrawHead( x, 480 - size, size, size,
    cg.snap->ps.clientNum, angles );
}
