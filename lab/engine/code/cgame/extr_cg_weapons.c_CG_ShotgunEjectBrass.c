
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_15__ {int hModel; int axis; int origin; } ;
typedef TYPE_4__ refEntity_t ;
struct TYPE_13__ {int* trBase; int* trDelta; scalar_t__ trTime; int trType; } ;
struct TYPE_14__ {int trDelta; int trBase; scalar_t__ trTime; int trType; } ;
struct TYPE_16__ {float bounceFactor; int leMarkType; int leBounceSoundType; int leFlags; TYPE_2__ angles; TYPE_3__ pos; scalar_t__ startTime; scalar_t__ endTime; int leType; TYPE_4__ refEntity; } ;
typedef TYPE_5__ localEntity_t ;
struct TYPE_17__ {int lerpOrigin; int lerpAngles; } ;
typedef TYPE_6__ centity_t ;
struct TYPE_20__ {scalar_t__ time; } ;
struct TYPE_19__ {int integer; } ;
struct TYPE_12__ {int shotgunBrassModel; } ;
struct TYPE_18__ {TYPE_1__ media; } ;


 int AnglesToAxis (int ,int**) ;
 int AxisCopy (int ,int ) ;
 TYPE_5__* CG_AllocLocalEntity () ;
 int CG_PointContents (int ,int) ;
 int CONTENTS_WATER ;
 int LEBS_BRASS ;
 int LEF_TUMBLE ;
 int LEMT_NONE ;
 int LE_FRAGMENT ;
 int TR_GRAVITY ;
 int TR_LINEAR ;
 int VectorAdd (int ,int*,int ) ;
 int VectorCopy (int ,int ) ;
 int VectorScale (int*,float,int ) ;
 int axisDefault ;
 TYPE_9__ cg ;
 TYPE_8__ cg_brassTime ;
 TYPE_7__ cgs ;
 int crandom () ;
 int rand () ;
 int random () ;

__attribute__((used)) static void CG_ShotgunEjectBrass( centity_t *cent ) {
 localEntity_t *le;
 refEntity_t *re;
 vec3_t velocity, xvelocity;
 vec3_t offset, xoffset;
 vec3_t v[3];
 int i;

 if ( cg_brassTime.integer <= 0 ) {
  return;
 }

 for ( i = 0; i < 2; i++ ) {
  float waterScale = 1.0f;

  le = CG_AllocLocalEntity();
  re = &le->refEntity;

  velocity[0] = 60 + 60 * crandom();
  if ( i == 0 ) {
   velocity[1] = 40 + 10 * crandom();
  } else {
   velocity[1] = -40 + 10 * crandom();
  }
  velocity[2] = 100 + 50 * crandom();

  le->leType = LE_FRAGMENT;
  le->startTime = cg.time;
  le->endTime = le->startTime + cg_brassTime.integer*3 + cg_brassTime.integer * random();

  le->pos.trType = TR_GRAVITY;
  le->pos.trTime = cg.time;

  AnglesToAxis( cent->lerpAngles, v );

  offset[0] = 8;
  offset[1] = 0;
  offset[2] = 24;

  xoffset[0] = offset[0] * v[0][0] + offset[1] * v[1][0] + offset[2] * v[2][0];
  xoffset[1] = offset[0] * v[0][1] + offset[1] * v[1][1] + offset[2] * v[2][1];
  xoffset[2] = offset[0] * v[0][2] + offset[1] * v[1][2] + offset[2] * v[2][2];
  VectorAdd( cent->lerpOrigin, xoffset, re->origin );
  VectorCopy( re->origin, le->pos.trBase );
  if ( CG_PointContents( re->origin, -1 ) & CONTENTS_WATER ) {
   waterScale = 0.10f;
  }

  xvelocity[0] = velocity[0] * v[0][0] + velocity[1] * v[1][0] + velocity[2] * v[2][0];
  xvelocity[1] = velocity[0] * v[0][1] + velocity[1] * v[1][1] + velocity[2] * v[2][1];
  xvelocity[2] = velocity[0] * v[0][2] + velocity[1] * v[1][2] + velocity[2] * v[2][2];
  VectorScale( xvelocity, waterScale, le->pos.trDelta );

  AxisCopy( axisDefault, re->axis );
  re->hModel = cgs.media.shotgunBrassModel;
  le->bounceFactor = 0.3f;

  le->angles.trType = TR_LINEAR;
  le->angles.trTime = cg.time;
  le->angles.trBase[0] = rand()&31;
  le->angles.trBase[1] = rand()&31;
  le->angles.trBase[2] = rand()&31;
  le->angles.trDelta[0] = 1;
  le->angles.trDelta[1] = 0.5;
  le->angles.trDelta[2] = 0;

  le->leFlags = LEF_TUMBLE;
  le->leBounceSoundType = LEBS_BRASS;
  le->leMarkType = LEMT_NONE;
 }
}
