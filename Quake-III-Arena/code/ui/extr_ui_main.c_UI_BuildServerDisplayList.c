
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int qboolean ;
struct TYPE_14__ {scalar_t__ realTime; } ;
struct TYPE_13__ {scalar_t__ nextDisplayRefresh; int motdLen; int motdWidth; scalar_t__ refreshtime; scalar_t__ numPlayersOnServers; scalar_t__ numDisplayServers; int motd; } ;
struct TYPE_20__ {TYPE_3__ uiDC; TYPE_2__ serverStatus; TYPE_1__* joinGameTypes; } ;
struct TYPE_19__ {scalar_t__ integer; } ;
struct TYPE_18__ {scalar_t__ integer; } ;
struct TYPE_17__ {size_t integer; } ;
struct TYPE_16__ {scalar_t__ integer; } ;
struct TYPE_15__ {size_t integer; } ;
struct TYPE_12__ {int gtEnum; } ;
struct TYPE_11__ {int basedir; } ;


 scalar_t__ AS_FAVORITES ;
 scalar_t__ AS_LOCAL ;
 int FEEDER_SERVERS ;
 int Info_ValueForKey (char*,char*) ;
 int MAX_STRING_CHARS ;
 int Menu_SetFeederSelection (int *,int ,int ,int *) ;
 scalar_t__ Q_stricmp (int ,int ) ;
 int UI_BinaryServerInsertion (int) ;
 int UI_RemoveServerFromDisplayList (int) ;
 int atoi (int ) ;
 int qfalse ;
 int qtrue ;
 TYPE_10__* serverFilters ;
 int strcpy (int ,char*) ;
 int strlen (int ) ;
 int trap_Cvar_VariableStringBuffer (char*,int ,int) ;
 int trap_LAN_GetServerCount (scalar_t__) ;
 int trap_LAN_GetServerInfo (scalar_t__,int,char*,int) ;
 int trap_LAN_GetServerPing (scalar_t__,int) ;
 int trap_LAN_MarkServerVisible (scalar_t__,int,int) ;
 int trap_LAN_ServerIsVisible (scalar_t__,int) ;
 TYPE_9__ uiInfo ;
 TYPE_8__ ui_browserShowEmpty ;
 TYPE_7__ ui_browserShowFull ;
 TYPE_6__ ui_joinGameType ;
 TYPE_5__ ui_netSource ;
 TYPE_4__ ui_serverFilterType ;

__attribute__((used)) static void UI_BuildServerDisplayList(qboolean force) {
 int i, count, clients, maxClients, ping, game, len, visible;
 char info[MAX_STRING_CHARS];

 static int numinvisible;

 if (!(force || uiInfo.uiDC.realTime > uiInfo.serverStatus.nextDisplayRefresh)) {
  return;
 }

 if ( force == 2 ) {
  force = 0;
 }


 trap_Cvar_VariableStringBuffer( "cl_motdString", uiInfo.serverStatus.motd, sizeof(uiInfo.serverStatus.motd) );
 len = strlen(uiInfo.serverStatus.motd);
 if (len == 0) {
  strcpy(uiInfo.serverStatus.motd, "Welcome to Team Arena!");
  len = strlen(uiInfo.serverStatus.motd);
 }
 if (len != uiInfo.serverStatus.motdLen) {
  uiInfo.serverStatus.motdLen = len;
  uiInfo.serverStatus.motdWidth = -1;
 }

 if (force) {
  numinvisible = 0;

  uiInfo.serverStatus.numDisplayServers = 0;
  uiInfo.serverStatus.numPlayersOnServers = 0;

  Menu_SetFeederSelection(((void*)0), FEEDER_SERVERS, 0, ((void*)0));

  trap_LAN_MarkServerVisible(ui_netSource.integer, -1, qtrue);
 }


 count = trap_LAN_GetServerCount(ui_netSource.integer);
 if (count == -1 || (ui_netSource.integer == AS_LOCAL && count == 0) ) {

  uiInfo.serverStatus.numDisplayServers = 0;
  uiInfo.serverStatus.numPlayersOnServers = 0;
  uiInfo.serverStatus.nextDisplayRefresh = uiInfo.uiDC.realTime + 500;
  return;
 }

 visible = qfalse;
 for (i = 0; i < count; i++) {

  if (!trap_LAN_ServerIsVisible(ui_netSource.integer, i)) {
   continue;
  }
  visible = qtrue;

  ping = trap_LAN_GetServerPing(ui_netSource.integer, i);
  if (ping > 0 || ui_netSource.integer == AS_FAVORITES) {

   trap_LAN_GetServerInfo(ui_netSource.integer, i, info, MAX_STRING_CHARS);

   clients = atoi(Info_ValueForKey(info, "clients"));
   uiInfo.serverStatus.numPlayersOnServers += clients;

   if (ui_browserShowEmpty.integer == 0) {
    if (clients == 0) {
     trap_LAN_MarkServerVisible(ui_netSource.integer, i, qfalse);
     continue;
    }
   }

   if (ui_browserShowFull.integer == 0) {
    maxClients = atoi(Info_ValueForKey(info, "sv_maxclients"));
    if (clients == maxClients) {
     trap_LAN_MarkServerVisible(ui_netSource.integer, i, qfalse);
     continue;
    }
   }

   if (uiInfo.joinGameTypes[ui_joinGameType.integer].gtEnum != -1) {
    game = atoi(Info_ValueForKey(info, "gametype"));
    if (game != uiInfo.joinGameTypes[ui_joinGameType.integer].gtEnum) {
     trap_LAN_MarkServerVisible(ui_netSource.integer, i, qfalse);
     continue;
    }
   }

   if (ui_serverFilterType.integer > 0) {
    if (Q_stricmp(Info_ValueForKey(info, "game"), serverFilters[ui_serverFilterType.integer].basedir) != 0) {
     trap_LAN_MarkServerVisible(ui_netSource.integer, i, qfalse);
     continue;
    }
   }

   if (ui_netSource.integer == AS_FAVORITES) {
    UI_RemoveServerFromDisplayList(i);
   }

   UI_BinaryServerInsertion(i);

   if (ping > 0) {
    trap_LAN_MarkServerVisible(ui_netSource.integer, i, qfalse);
    numinvisible++;
   }
  }
 }

 uiInfo.serverStatus.refreshtime = uiInfo.uiDC.realTime;


 if (!visible) {


 }
}
