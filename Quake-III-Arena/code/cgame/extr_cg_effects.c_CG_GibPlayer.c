
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_8__ {int integer; } ;
struct TYPE_7__ {int integer; } ;
struct TYPE_5__ {int gibLeg; int gibIntestine; int gibForearm; int gibFoot; int gibFist; int gibChest; int gibArm; int gibAbdomen; int gibBrain; int gibSkull; } ;
struct TYPE_6__ {TYPE_1__ media; } ;


 int CG_LaunchGib (int*,int*,int ) ;
 int GIB_JUMP ;
 int GIB_VELOCITY ;
 int VectorCopy (int*,int*) ;
 TYPE_4__ cg_blood ;
 TYPE_3__ cg_gibs ;
 TYPE_2__ cgs ;
 int crandom () ;
 int rand () ;

void CG_GibPlayer( vec3_t playerOrigin ) {
 vec3_t origin, velocity;

 if ( !cg_blood.integer ) {
  return;
 }

 VectorCopy( playerOrigin, origin );
 velocity[0] = crandom()*GIB_VELOCITY;
 velocity[1] = crandom()*GIB_VELOCITY;
 velocity[2] = GIB_JUMP + crandom()*GIB_VELOCITY;
 if ( rand() & 1 ) {
  CG_LaunchGib( origin, velocity, cgs.media.gibSkull );
 } else {
  CG_LaunchGib( origin, velocity, cgs.media.gibBrain );
 }


 if ( !cg_gibs.integer ) {
  return;
 }

 VectorCopy( playerOrigin, origin );
 velocity[0] = crandom()*GIB_VELOCITY;
 velocity[1] = crandom()*GIB_VELOCITY;
 velocity[2] = GIB_JUMP + crandom()*GIB_VELOCITY;
 CG_LaunchGib( origin, velocity, cgs.media.gibAbdomen );

 VectorCopy( playerOrigin, origin );
 velocity[0] = crandom()*GIB_VELOCITY;
 velocity[1] = crandom()*GIB_VELOCITY;
 velocity[2] = GIB_JUMP + crandom()*GIB_VELOCITY;
 CG_LaunchGib( origin, velocity, cgs.media.gibArm );

 VectorCopy( playerOrigin, origin );
 velocity[0] = crandom()*GIB_VELOCITY;
 velocity[1] = crandom()*GIB_VELOCITY;
 velocity[2] = GIB_JUMP + crandom()*GIB_VELOCITY;
 CG_LaunchGib( origin, velocity, cgs.media.gibChest );

 VectorCopy( playerOrigin, origin );
 velocity[0] = crandom()*GIB_VELOCITY;
 velocity[1] = crandom()*GIB_VELOCITY;
 velocity[2] = GIB_JUMP + crandom()*GIB_VELOCITY;
 CG_LaunchGib( origin, velocity, cgs.media.gibFist );

 VectorCopy( playerOrigin, origin );
 velocity[0] = crandom()*GIB_VELOCITY;
 velocity[1] = crandom()*GIB_VELOCITY;
 velocity[2] = GIB_JUMP + crandom()*GIB_VELOCITY;
 CG_LaunchGib( origin, velocity, cgs.media.gibFoot );

 VectorCopy( playerOrigin, origin );
 velocity[0] = crandom()*GIB_VELOCITY;
 velocity[1] = crandom()*GIB_VELOCITY;
 velocity[2] = GIB_JUMP + crandom()*GIB_VELOCITY;
 CG_LaunchGib( origin, velocity, cgs.media.gibForearm );

 VectorCopy( playerOrigin, origin );
 velocity[0] = crandom()*GIB_VELOCITY;
 velocity[1] = crandom()*GIB_VELOCITY;
 velocity[2] = GIB_JUMP + crandom()*GIB_VELOCITY;
 CG_LaunchGib( origin, velocity, cgs.media.gibIntestine );

 VectorCopy( playerOrigin, origin );
 velocity[0] = crandom()*GIB_VELOCITY;
 velocity[1] = crandom()*GIB_VELOCITY;
 velocity[2] = GIB_JUMP + crandom()*GIB_VELOCITY;
 CG_LaunchGib( origin, velocity, cgs.media.gibLeg );

 VectorCopy( playerOrigin, origin );
 velocity[0] = crandom()*GIB_VELOCITY;
 velocity[1] = crandom()*GIB_VELOCITY;
 velocity[2] = GIB_JUMP + crandom()*GIB_VELOCITY;
 CG_LaunchGib( origin, velocity, cgs.media.gibLeg );
}
