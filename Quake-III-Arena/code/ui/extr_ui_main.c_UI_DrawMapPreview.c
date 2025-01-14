
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vec4_t ;
struct TYPE_8__ {int h; int w; int y; int x; } ;
typedef TYPE_2__ rectDef_t ;
typedef scalar_t__ qboolean ;
struct TYPE_11__ {int mapCount; TYPE_1__* mapList; } ;
struct TYPE_10__ {int integer; } ;
struct TYPE_9__ {int integer; } ;
struct TYPE_7__ {int levelShot; char* imageName; } ;


 int UI_DrawHandlePic (int ,int ,int ,int ,int) ;
 int trap_Cvar_Set (char*,char*) ;
 int trap_R_RegisterShaderNoMip (char*) ;
 TYPE_5__ uiInfo ;
 TYPE_4__ ui_currentMap ;
 TYPE_3__ ui_currentNetMap ;

__attribute__((used)) static void UI_DrawMapPreview(rectDef_t *rect, float scale, vec4_t color, qboolean net) {
 int map = (net) ? ui_currentNetMap.integer : ui_currentMap.integer;
 if (map < 0 || map > uiInfo.mapCount) {
  if (net) {
   ui_currentNetMap.integer = 0;
   trap_Cvar_Set("ui_currentNetMap", "0");
  } else {
   ui_currentMap.integer = 0;
   trap_Cvar_Set("ui_currentMap", "0");
  }
  map = 0;
 }

 if (uiInfo.mapList[map].levelShot == -1) {
  uiInfo.mapList[map].levelShot = trap_R_RegisterShaderNoMip(uiInfo.mapList[map].imageName);
 }

 if (uiInfo.mapList[map].levelShot > 0) {
  UI_DrawHandlePic( rect->x, rect->y, rect->w, rect->h, uiInfo.mapList[map].levelShot);
 } else {
  UI_DrawHandlePic( rect->x, rect->y, rect->w, rect->h, trap_R_RegisterShaderNoMip("menu/art/unknownmap"));
 }
}
