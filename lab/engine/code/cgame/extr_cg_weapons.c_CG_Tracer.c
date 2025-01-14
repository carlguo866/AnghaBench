
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef double* vec3_t ;
struct TYPE_11__ {double* xyz; int* st; int* modulate; } ;
typedef TYPE_3__ polyVert_t ;
struct TYPE_9__ {double** viewaxis; } ;
struct TYPE_15__ {TYPE_1__ refdef; } ;
struct TYPE_14__ {float value; } ;
struct TYPE_13__ {double value; } ;
struct TYPE_10__ {int tracerSound; int tracerShader; } ;
struct TYPE_12__ {TYPE_2__ media; } ;


 int CHAN_AUTO ;
 double DotProduct (double*,double*) ;
 int ENTITYNUM_WORLD ;
 int VectorMA (double*,double,double*,double*) ;
 float VectorNormalize (double*) ;
 int VectorScale (double*,double,double*) ;
 int VectorSubtract (double*,double*,double*) ;
 TYPE_8__ cg ;
 TYPE_7__ cg_tracerLength ;
 TYPE_6__ cg_tracerWidth ;
 TYPE_5__ cgs ;
 float random () ;
 int trap_R_AddPolyToScene (int ,int,TYPE_3__*) ;
 int trap_S_StartSound (double*,int ,int ,int ) ;

void CG_Tracer( vec3_t source, vec3_t dest ) {
 vec3_t forward, right;
 polyVert_t verts[4];
 vec3_t line;
 float len, begin, end;
 vec3_t start, finish;
 vec3_t midpoint;


 VectorSubtract( dest, source, forward );
 len = VectorNormalize( forward );


 if ( len < 100 ) {
  return;
 }
 begin = 50 + random() * (len - 60);
 end = begin + cg_tracerLength.value;
 if ( end > len ) {
  end = len;
 }
 VectorMA( source, begin, forward, start );
 VectorMA( source, end, forward, finish );

 line[0] = DotProduct( forward, cg.refdef.viewaxis[1] );
 line[1] = DotProduct( forward, cg.refdef.viewaxis[2] );

 VectorScale( cg.refdef.viewaxis[1], line[1], right );
 VectorMA( right, -line[0], cg.refdef.viewaxis[2], right );
 VectorNormalize( right );

 VectorMA( finish, cg_tracerWidth.value, right, verts[0].xyz );
 verts[0].st[0] = 0;
 verts[0].st[1] = 1;
 verts[0].modulate[0] = 255;
 verts[0].modulate[1] = 255;
 verts[0].modulate[2] = 255;
 verts[0].modulate[3] = 255;

 VectorMA( finish, -cg_tracerWidth.value, right, verts[1].xyz );
 verts[1].st[0] = 1;
 verts[1].st[1] = 0;
 verts[1].modulate[0] = 255;
 verts[1].modulate[1] = 255;
 verts[1].modulate[2] = 255;
 verts[1].modulate[3] = 255;

 VectorMA( start, -cg_tracerWidth.value, right, verts[2].xyz );
 verts[2].st[0] = 1;
 verts[2].st[1] = 1;
 verts[2].modulate[0] = 255;
 verts[2].modulate[1] = 255;
 verts[2].modulate[2] = 255;
 verts[2].modulate[3] = 255;

 VectorMA( start, cg_tracerWidth.value, right, verts[3].xyz );
 verts[3].st[0] = 0;
 verts[3].st[1] = 0;
 verts[3].modulate[0] = 255;
 verts[3].modulate[1] = 255;
 verts[3].modulate[2] = 255;
 verts[3].modulate[3] = 255;

 trap_R_AddPolyToScene( cgs.media.tracerShader, 4, verts );

 midpoint[0] = ( start[0] + finish[0] ) * 0.5;
 midpoint[1] = ( start[1] + finish[1] ) * 0.5;
 midpoint[2] = ( start[2] + finish[2] ) * 0.5;


 trap_S_StartSound( midpoint, ENTITYNUM_WORLD, CHAN_AUTO, cgs.media.tracerSound );

}
