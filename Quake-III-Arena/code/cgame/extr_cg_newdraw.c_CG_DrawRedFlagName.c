
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vec4_t ;
struct TYPE_6__ {scalar_t__ h; scalar_t__ y; int x; } ;
typedef TYPE_2__ rectDef_t ;
struct TYPE_7__ {int maxclients; TYPE_1__* clientinfo; } ;
struct TYPE_5__ {scalar_t__ team; int powerups; int name; scalar_t__ infoValid; } ;


 int CG_Text_Paint (int ,scalar_t__,float,int ,int ,int ,int ,int) ;
 int PW_REDFLAG ;
 scalar_t__ TEAM_BLUE ;
 TYPE_3__ cgs ;

__attribute__((used)) static void CG_DrawRedFlagName(rectDef_t *rect, float scale, vec4_t color, int textStyle ) {
  int i;
  for ( i = 0 ; i < cgs.maxclients ; i++ ) {
   if ( cgs.clientinfo[i].infoValid && cgs.clientinfo[i].team == TEAM_BLUE && cgs.clientinfo[i].powerups & ( 1<< PW_REDFLAG )) {
      CG_Text_Paint(rect->x, rect->y + rect->h, scale, color, cgs.clientinfo[i].name, 0, 0, textStyle);
      return;
    }
  }
}
