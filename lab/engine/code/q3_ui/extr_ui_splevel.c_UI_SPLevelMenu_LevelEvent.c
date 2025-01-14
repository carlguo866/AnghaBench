
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ id; } ;
typedef TYPE_1__ menucommon_s ;
struct TYPE_4__ {int selectedArenaInfo; } ;


 int ARENAS_PER_TIER ;
 scalar_t__ ID_PICTURE0 ;
 int QM_ACTIVATED ;
 int UI_GetArenaInfoByNumber (scalar_t__) ;
 int UI_SPLevelMenu_SetBots () ;
 int finalTier ;
 TYPE_2__ levelMenuInfo ;
 scalar_t__ selectedArena ;
 int selectedArenaSet ;
 int trainingTier ;
 int trap_Cvar_SetValue (char*,scalar_t__) ;

__attribute__((used)) static void UI_SPLevelMenu_LevelEvent( void* ptr, int notification ) {
 if (notification != QM_ACTIVATED) {
  return;
 }

 if ( selectedArenaSet == trainingTier || selectedArenaSet == finalTier ) {
  return;
 }

 selectedArena = ((menucommon_s*)ptr)->id - ID_PICTURE0;
 levelMenuInfo.selectedArenaInfo = UI_GetArenaInfoByNumber( selectedArenaSet * ARENAS_PER_TIER + selectedArena );
 UI_SPLevelMenu_SetBots();

 trap_Cvar_SetValue( "ui_spSelection", selectedArenaSet * ARENAS_PER_TIER + selectedArena );
}
