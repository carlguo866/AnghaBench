
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_10__ {int numGameTypes; TYPE_2__* gameTypes; TYPE_1__* mapList; } ;
struct TYPE_9__ {size_t integer; } ;
struct TYPE_8__ {int integer; } ;
struct TYPE_7__ {scalar_t__ gtEnum; } ;
struct TYPE_6__ {int mapLoadName; } ;


 int FEEDER_MAPS ;
 scalar_t__ GT_TEAM ;
 int Menu_SetFeederSelection (int *,int ,int ,int *) ;
 int UI_LoadBestScores (int ,scalar_t__) ;
 int UI_MapCountByGameType (scalar_t__) ;
 int UI_SelectForKey (int) ;
 int UI_SetCapFragLimits (scalar_t__) ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;
 int trap_Cvar_SetValue (char*,int) ;
 TYPE_5__ uiInfo ;
 TYPE_4__ ui_currentMap ;
 TYPE_3__ ui_gameType ;

__attribute__((used)) static qboolean UI_GameType_HandleKey(int flags, float *special, int key, qboolean resetMap) {
 int select = UI_SelectForKey(key);
 if (select != 0) {
  int oldCount = UI_MapCountByGameType(qtrue);


  if (select < 0) {
   ui_gameType.integer--;
   if (ui_gameType.integer == 2) {
    ui_gameType.integer = 1;
   } else if (ui_gameType.integer < 2) {
    ui_gameType.integer = uiInfo.numGameTypes - 1;
   }
  } else {
   ui_gameType.integer++;
   if (ui_gameType.integer >= uiInfo.numGameTypes) {
    ui_gameType.integer = 1;
   } else if (ui_gameType.integer == 2) {
    ui_gameType.integer = 3;
   }
  }

  if (uiInfo.gameTypes[ui_gameType.integer].gtEnum < GT_TEAM) {
   trap_Cvar_SetValue( "ui_Q3Model", 1 );
  } else {
   trap_Cvar_SetValue( "ui_Q3Model", 0 );
  }

  trap_Cvar_SetValue("ui_gameType", ui_gameType.integer);
  UI_SetCapFragLimits(qtrue);
  UI_LoadBestScores(uiInfo.mapList[ui_currentMap.integer].mapLoadName, uiInfo.gameTypes[ui_gameType.integer].gtEnum);
  if (resetMap && oldCount != UI_MapCountByGameType(qtrue)) {
   trap_Cvar_SetValue( "ui_currentMap", 0);
   Menu_SetFeederSelection(((void*)0), FEEDER_MAPS, 0, ((void*)0));
  }
  return qtrue;
 }
 return qfalse;
}
