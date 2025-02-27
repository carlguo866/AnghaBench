
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int h; int w; int y; int x; } ;
typedef TYPE_2__ rectDef_t ;
struct TYPE_7__ {int tierCount; TYPE_1__* tierList; } ;
struct TYPE_5__ {int* mapHandles; int * maps; } ;


 int UI_DrawHandlePic (int ,int ,int ,int ,int) ;
 int trap_Cvar_VariableValue (char*) ;
 int trap_R_RegisterShaderNoMip (int ) ;
 TYPE_3__ uiInfo ;
 int va (char*,int ) ;

__attribute__((used)) static void UI_DrawTierMap(rectDef_t *rect, int index) {
  int i;
 i = trap_Cvar_VariableValue( "ui_currentTier" );
  if (i < 0 || i >= uiInfo.tierCount) {
    i = 0;
  }

 if (uiInfo.tierList[i].mapHandles[index] == -1) {
  uiInfo.tierList[i].mapHandles[index] = trap_R_RegisterShaderNoMip(va("levelshots/%s", uiInfo.tierList[i].maps[index]));
 }

 UI_DrawHandlePic( rect->x, rect->y, rect->w, rect->h, uiInfo.tierList[i].mapHandles[index]);
}
