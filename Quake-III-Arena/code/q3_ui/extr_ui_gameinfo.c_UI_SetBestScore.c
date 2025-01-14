
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int arenaKey ;


 int Com_sprintf (char*,int,char*,int) ;
 int Info_SetValueForKey (char*,char*,int ) ;
 int Info_ValueForKey (char*,char*) ;
 int MAX_INFO_VALUE ;
 int atoi (int ) ;
 int trap_Cvar_Set (int ,char*) ;
 int trap_Cvar_VariableStringBuffer (int ,char*,int) ;
 scalar_t__ trap_Cvar_VariableValue (char*) ;
 int va (char*,int) ;

void UI_SetBestScore( int level, int score ) {
 int skill;
 int oldScore;
 char arenaKey[16];
 char scores[MAX_INFO_VALUE];


 if( score < 1 || score > 8 ) {
  return;
 }


 skill = (int)trap_Cvar_VariableValue( "g_spSkill" );
 if( skill < 1 || skill > 5 ) {
  return;
 }


 trap_Cvar_VariableStringBuffer( va( "g_spScores%i", skill ), scores, MAX_INFO_VALUE );


 Com_sprintf( arenaKey, sizeof( arenaKey ), "l%i", level );
 oldScore = atoi( Info_ValueForKey( scores, arenaKey ) );
 if( oldScore && oldScore <= score ) {
  return;
 }


 Info_SetValueForKey( scores, arenaKey, va( "%i", score ) );
 trap_Cvar_Set( va( "g_spScores%i", skill ), scores );
}
