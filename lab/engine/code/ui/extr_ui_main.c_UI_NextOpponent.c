
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int teamCount; TYPE_1__* teamList; } ;
struct TYPE_3__ {int teamName; } ;


 int UI_Cvar_VariableString (char*) ;
 int UI_TeamIndexFromName (int ) ;
 int trap_Cvar_Set (char*,int ) ;
 TYPE_2__ uiInfo ;

__attribute__((used)) static void UI_NextOpponent( void ) {
  int i = UI_TeamIndexFromName(UI_Cvar_VariableString("ui_opponentName"));
  int j = UI_TeamIndexFromName(UI_Cvar_VariableString("ui_teamName"));
 i++;
 if (i >= uiInfo.teamCount) {
  i = 0;
 }
 if (i == j) {
  i++;
  if ( i >= uiInfo.teamCount) {
   i = 0;
  }
 }
  trap_Cvar_Set( "ui_opponentName", uiInfo.teamList[i].teamName );
}
