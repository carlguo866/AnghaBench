
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int* vec4_t ;
typedef int qboolean ;
struct TYPE_10__ {TYPE_3__* snap; } ;
struct TYPE_9__ {TYPE_1__* clientinfo; } ;
struct TYPE_7__ {int pm_flags; size_t clientNum; } ;
struct TYPE_8__ {TYPE_2__ ps; } ;
struct TYPE_6__ {char* name; } ;


 int CG_DrawBigString (int,int,char*,float) ;
 int CG_DrawStringExt (float,int,char const*,int*,int ,int ,int,int ,int ) ;
 int CG_DrawStrlen (char const*) ;
 int GIANT_HEIGHT ;
 int GIANT_WIDTH ;
 int PMF_FOLLOW ;
 TYPE_5__ cg ;
 TYPE_4__ cgs ;
 int qfalse ;
 int qtrue ;

__attribute__((used)) static qboolean CG_DrawFollow( void ) {
 float x;
 vec4_t color;
 const char *name;

 if ( !(cg.snap->ps.pm_flags & PMF_FOLLOW) ) {
  return qfalse;
 }
 color[0] = 1;
 color[1] = 1;
 color[2] = 1;
 color[3] = 1;


 CG_DrawBigString( 320 - 9 * 8, 24, "following", 1.0F );

 name = cgs.clientinfo[ cg.snap->ps.clientNum ].name;

 x = 0.5 * ( 640 - GIANT_WIDTH * CG_DrawStrlen( name ) );

 CG_DrawStringExt( x, 40, name, color, qtrue, qtrue, GIANT_WIDTH, GIANT_HEIGHT, 0 );

 return qtrue;
}
