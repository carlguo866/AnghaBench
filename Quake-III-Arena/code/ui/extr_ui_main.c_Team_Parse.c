
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_4__ {size_t teamCount; TYPE_1__* teamList; } ;
struct TYPE_3__ {char const* teamName; char const* imageName; int cinematic; char const** teamMembers; void* teamIcon_Name; void* teamIcon_Metal; void* teamIcon; } ;


 char* COM_ParseExt (char**,int ) ;
 int Com_Printf (char*,...) ;
 size_t MAX_TEAMS ;
 scalar_t__ Q_stricmp (char*,char*) ;
 int String_Parse (char**,char const**) ;
 int TEAM_MEMBERS ;
 int qfalse ;
 int qtrue ;
 void* trap_R_RegisterShaderNoMip (char const*) ;
 TYPE_2__ uiInfo ;
 char const* va (char*,char const*) ;

__attribute__((used)) static qboolean Team_Parse(char **p) {
  char *token;
  const char *tempStr;
 int i;

  token = COM_ParseExt(p, qtrue);

  if (token[0] != '{') {
    return qfalse;
  }

  while ( 1 ) {

    token = COM_ParseExt(p, qtrue);

    if (Q_stricmp(token, "}") == 0) {
      return qtrue;
    }

    if ( !token || token[0] == 0 ) {
      return qfalse;
    }

    if (token[0] == '{') {

      if (!String_Parse(p, &uiInfo.teamList[uiInfo.teamCount].teamName) || !String_Parse(p, &tempStr)) {
        return qfalse;
      }


   uiInfo.teamList[uiInfo.teamCount].imageName = tempStr;
     uiInfo.teamList[uiInfo.teamCount].teamIcon = trap_R_RegisterShaderNoMip(uiInfo.teamList[uiInfo.teamCount].imageName);
    uiInfo.teamList[uiInfo.teamCount].teamIcon_Metal = trap_R_RegisterShaderNoMip(va("%s_metal",uiInfo.teamList[uiInfo.teamCount].imageName));
   uiInfo.teamList[uiInfo.teamCount].teamIcon_Name = trap_R_RegisterShaderNoMip(va("%s_name", uiInfo.teamList[uiInfo.teamCount].imageName));

   uiInfo.teamList[uiInfo.teamCount].cinematic = -1;

   for (i = 0; i < TEAM_MEMBERS; i++) {
    uiInfo.teamList[uiInfo.teamCount].teamMembers[i] = ((void*)0);
    if (!String_Parse(p, &uiInfo.teamList[uiInfo.teamCount].teamMembers[i])) {
     return qfalse;
    }
   }

      Com_Printf("Loaded team %s with team icon %s.\n", uiInfo.teamList[uiInfo.teamCount].teamName, tempStr);
      if (uiInfo.teamCount < MAX_TEAMS) {
        uiInfo.teamCount++;
      } else {
        Com_Printf("Too many teams, last team replaced!\n");
      }
      token = COM_ParseExt(p, qtrue);
      if (token[0] != '}') {
        return qfalse;
      }
    }
  }

  return qfalse;
}
