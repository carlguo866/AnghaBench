
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int numVerts; } ;
struct TYPE_12__ {scalar_t__ time; scalar_t__ markShader; int* color; TYPE_4__* verts; TYPE_2__ poly; scalar_t__ alphaFade; struct TYPE_12__* nextMark; } ;
typedef TYPE_3__ markPoly_t ;
struct TYPE_16__ {scalar_t__ time; } ;
struct TYPE_15__ {int integer; } ;
struct TYPE_10__ {scalar_t__ energyMarkShader; } ;
struct TYPE_14__ {TYPE_1__ media; } ;
struct TYPE_13__ {int* modulate; } ;


 int CG_FreeMarkPoly (TYPE_3__*) ;
 int MARK_FADE_TIME ;
 scalar_t__ MARK_TOTAL_TIME ;
 TYPE_8__ cg ;
 TYPE_3__ cg_activeMarkPolys ;
 TYPE_6__ cg_addMarks ;
 TYPE_5__ cgs ;
 int trap_R_AddPolyToScene (scalar_t__,int,TYPE_4__*) ;

void CG_AddMarks( void ) {
 int j;
 markPoly_t *mp, *next;
 int t;
 int fade;

 if ( !cg_addMarks.integer ) {
  return;
 }

 mp = cg_activeMarkPolys.nextMark;
 for ( ; mp != &cg_activeMarkPolys ; mp = next ) {


  next = mp->nextMark;


  if ( cg.time > mp->time + MARK_TOTAL_TIME ) {
   CG_FreeMarkPoly( mp );
   continue;
  }


  if ( mp->markShader == cgs.media.energyMarkShader ) {

   fade = 450 - 450 * ( (cg.time - mp->time ) / 3000.0 );
   if ( fade < 255 ) {
    if ( fade < 0 ) {
     fade = 0;
    }
    if ( mp->verts[0].modulate[0] != 0 ) {
     for ( j = 0 ; j < mp->poly.numVerts ; j++ ) {
      mp->verts[j].modulate[0] = mp->color[0] * fade;
      mp->verts[j].modulate[1] = mp->color[1] * fade;
      mp->verts[j].modulate[2] = mp->color[2] * fade;
     }
    }
   }
  }


  t = mp->time + MARK_TOTAL_TIME - cg.time;
  if ( t < MARK_FADE_TIME ) {
   fade = 255 * t / MARK_FADE_TIME;
   if ( mp->alphaFade ) {
    for ( j = 0 ; j < mp->poly.numVerts ; j++ ) {
     mp->verts[j].modulate[3] = fade;
    }
   } else {
    for ( j = 0 ; j < mp->poly.numVerts ; j++ ) {
     mp->verts[j].modulate[0] = mp->color[0] * fade;
     mp->verts[j].modulate[1] = mp->color[1] * fade;
     mp->verts[j].modulate[2] = mp->color[2] * fade;
    }
   }
  }


  trap_R_AddPolyToScene( mp->markShader, mp->poly.numVerts, mp->verts );
 }
}
