
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vec4_t ;
struct TYPE_8__ {int y; int x; } ;
typedef TYPE_3__ rectDef_t ;
struct TYPE_9__ {int tierCount; TYPE_2__* tierList; TYPE_1__* gameTypes; } ;
struct TYPE_7__ {size_t* gameTypes; } ;
struct TYPE_6__ {int gameType; } ;


 int MAPS_PER_TIER ;
 int Text_Paint (int ,int ,float,int ,int ,int ,int ,int) ;
 int trap_Cvar_VariableValue (char*) ;
 TYPE_4__ uiInfo ;

__attribute__((used)) static void UI_DrawTierGameType(rectDef_t *rect, float scale, vec4_t color, int textStyle) {
  int i, j;
 i = trap_Cvar_VariableValue( "ui_currentTier" );
  if (i < 0 || i >= uiInfo.tierCount) {
    i = 0;
  }
 j = trap_Cvar_VariableValue("ui_currentMap");
 if (j < 0 || j >= MAPS_PER_TIER) {
  j = 0;
 }

  Text_Paint(rect->x, rect->y, scale, color, uiInfo.gameTypes[uiInfo.tierList[i].gameTypes[j]].gameType , 0, 0, textStyle);
}
