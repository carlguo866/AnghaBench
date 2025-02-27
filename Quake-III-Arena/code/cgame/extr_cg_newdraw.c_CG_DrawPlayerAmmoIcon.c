
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef int* vec3_t ;
struct TYPE_18__ {int h; int w; int y; int x; } ;
typedef TYPE_4__ rectDef_t ;
typedef scalar_t__ qhandle_t ;
typedef scalar_t__ qboolean ;
struct TYPE_19__ {size_t clientNum; } ;
typedef TYPE_5__ playerState_t ;
struct TYPE_17__ {size_t weapon; } ;
struct TYPE_20__ {TYPE_3__ currentState; } ;
typedef TYPE_6__ centity_t ;
struct TYPE_22__ {scalar_t__ integer; } ;
struct TYPE_21__ {scalar_t__ ammoModel; scalar_t__ ammoIcon; } ;
struct TYPE_16__ {size_t weapon; } ;
struct TYPE_15__ {TYPE_5__ ps; } ;
struct TYPE_14__ {double time; TYPE_2__ predictedPlayerState; TYPE_1__* snap; } ;
struct TYPE_13__ {scalar_t__ integer; } ;


 int CG_Draw3DModel (int ,int ,int ,int ,scalar_t__,int ,int*,int*) ;
 int CG_DrawPic (int ,int ,int ,int ,scalar_t__) ;
 int VectorClear (int*) ;
 size_t YAW ;
 TYPE_11__ cg ;
 TYPE_10__ cg_draw3dIcons ;
 TYPE_9__ cg_drawIcons ;
 TYPE_6__* cg_entities ;
 TYPE_7__* cg_weapons ;
 int sin (double) ;

__attribute__((used)) static void CG_DrawPlayerAmmoIcon( rectDef_t *rect, qboolean draw2D ) {
 centity_t *cent;
 playerState_t *ps;
 vec3_t angles;
 vec3_t origin;

 cent = &cg_entities[cg.snap->ps.clientNum];
 ps = &cg.snap->ps;

 if ( draw2D || (!cg_draw3dIcons.integer && cg_drawIcons.integer) ) {
   qhandle_t icon;
    icon = cg_weapons[ cg.predictedPlayerState.weapon ].ammoIcon;
  if ( icon ) {
    CG_DrawPic( rect->x, rect->y, rect->w, rect->h, icon );
  }
  } else if (cg_draw3dIcons.integer) {
   if ( cent->currentState.weapon && cg_weapons[ cent->currentState.weapon ].ammoModel ) {
     VectorClear( angles );
    origin[0] = 70;
    origin[1] = 0;
    origin[2] = 0;
    angles[YAW] = 90 + 20 * sin( cg.time / 1000.0 );
    CG_Draw3DModel( rect->x, rect->y, rect->w, rect->h, cg_weapons[ cent->currentState.weapon ].ammoModel, 0, origin, angles );
   }
  }
}
