
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int radius; int* shaderRGBA; int customShader; int origin; int renderfx; int reType; } ;
typedef TYPE_4__ refEntity_t ;
typedef int ent ;
struct TYPE_11__ {int * viewaxis; int vieworg; } ;
struct TYPE_16__ {int damageValue; int time; int damageTime; int damageX; int damageY; TYPE_2__ refdef; } ;
struct TYPE_15__ {int integer; } ;
struct TYPE_12__ {int viewBloodShader; } ;
struct TYPE_10__ {scalar_t__ hardwareType; } ;
struct TYPE_14__ {TYPE_3__ media; TYPE_1__ glconfig; } ;


 int DAMAGE_TIME ;
 scalar_t__ GLHW_RAGEPRO ;
 int RF_FIRST_PERSON ;
 int RT_SPRITE ;
 int VectorMA (int ,int,int ,int ) ;
 TYPE_9__ cg ;
 TYPE_8__ cg_blood ;
 TYPE_7__ cgs ;
 int memset (TYPE_4__*,int ,int) ;
 int trap_R_AddRefEntityToScene (TYPE_4__*) ;

__attribute__((used)) static void CG_DamageBlendBlob( void ) {
 int t;
 int maxTime;
 refEntity_t ent;

 if (!cg_blood.integer) {
  return;
 }

 if ( !cg.damageValue ) {
  return;
 }






 if ( cgs.glconfig.hardwareType == GLHW_RAGEPRO ) {
  return;
 }

 maxTime = DAMAGE_TIME;
 t = cg.time - cg.damageTime;
 if ( t <= 0 || t >= maxTime ) {
  return;
 }


 memset( &ent, 0, sizeof( ent ) );
 ent.reType = RT_SPRITE;
 ent.renderfx = RF_FIRST_PERSON;

 VectorMA( cg.refdef.vieworg, 8, cg.refdef.viewaxis[0], ent.origin );
 VectorMA( ent.origin, cg.damageX * -8, cg.refdef.viewaxis[1], ent.origin );
 VectorMA( ent.origin, cg.damageY * 8, cg.refdef.viewaxis[2], ent.origin );

 ent.radius = cg.damageValue * 3;
 ent.customShader = cgs.media.viewBloodShader;
 ent.shaderRGBA[0] = 255;
 ent.shaderRGBA[1] = 255;
 ent.shaderRGBA[2] = 255;
 ent.shaderRGBA[3] = 200 * ( 1.0 - ((float)t / maxTime) );
 trap_R_AddRefEntityToScene( &ent );
}
