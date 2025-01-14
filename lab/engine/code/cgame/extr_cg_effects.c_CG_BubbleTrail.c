
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_11__ {float shaderTime; int radius; int* shaderRGBA; int customShader; scalar_t__ rotation; int reType; } ;
typedef TYPE_3__ refEntity_t ;
struct TYPE_10__ {float trTime; int* trDelta; int trBase; int trType; } ;
struct TYPE_12__ {int startTime; int endTime; double lifeRate; double* color; TYPE_2__ pos; TYPE_3__ refEntity; int leType; int leFlags; } ;
typedef TYPE_4__ localEntity_t ;
struct TYPE_15__ {int time; } ;
struct TYPE_14__ {scalar_t__ integer; } ;
struct TYPE_9__ {int waterBubbleShader; } ;
struct TYPE_13__ {TYPE_1__ media; } ;


 TYPE_4__* CG_AllocLocalEntity () ;
 int LEF_PUFF_DONT_SCALE ;
 int LE_MOVE_SCALE_FADE ;
 int RT_SPRITE ;
 int TR_LINEAR ;
 int VectorAdd (int ,int ,int ) ;
 int VectorCopy (int ,int ) ;
 int VectorMA (int ,int,int ,int ) ;
 float VectorNormalize (int ) ;
 int VectorScale (int ,float,int ) ;
 int VectorSubtract (int ,int ,int ) ;
 TYPE_7__ cg ;
 TYPE_6__ cg_noProjectileTrail ;
 TYPE_5__ cgs ;
 int crandom () ;
 int rand () ;
 int random () ;

void CG_BubbleTrail( vec3_t start, vec3_t end, float spacing ) {
 vec3_t move;
 vec3_t vec;
 float len;
 int i;

 if ( cg_noProjectileTrail.integer ) {
  return;
 }

 VectorCopy (start, move);
 VectorSubtract (end, start, vec);
 len = VectorNormalize (vec);


 i = rand() % (int)spacing;
 VectorMA( move, i, vec, move );

 VectorScale (vec, spacing, vec);

 for ( ; i < len; i += spacing ) {
  localEntity_t *le;
  refEntity_t *re;

  le = CG_AllocLocalEntity();
  le->leFlags = LEF_PUFF_DONT_SCALE;
  le->leType = LE_MOVE_SCALE_FADE;
  le->startTime = cg.time;
  le->endTime = cg.time + 1000 + random() * 250;
  le->lifeRate = 1.0 / ( le->endTime - le->startTime );

  re = &le->refEntity;
  re->shaderTime = cg.time / 1000.0f;

  re->reType = RT_SPRITE;
  re->rotation = 0;
  re->radius = 3;
  re->customShader = cgs.media.waterBubbleShader;
  re->shaderRGBA[0] = 0xff;
  re->shaderRGBA[1] = 0xff;
  re->shaderRGBA[2] = 0xff;
  re->shaderRGBA[3] = 0xff;

  le->color[3] = 1.0;

  le->pos.trType = TR_LINEAR;
  le->pos.trTime = cg.time;
  VectorCopy( move, le->pos.trBase );
  le->pos.trDelta[0] = crandom()*5;
  le->pos.trDelta[1] = crandom()*5;
  le->pos.trDelta[2] = crandom()*5 + 6;

  VectorAdd (move, vec, move);
 }
}
