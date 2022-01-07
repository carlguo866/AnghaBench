
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ integer; } ;


 int CVAR_ARCHIVE ;
 int CVAR_LATCH ;
 int CVAR_ROM ;
 int CVAR_SERVERINFO ;
 int CVAR_SYSTEMINFO ;
 int CVAR_TEMP ;
 int Cbuf_AddText (char*) ;
 int Cvar_CheckRange (TYPE_1__*,int ,int,int ) ;
 void* Cvar_Get (char*,char*,int) ;
 char* MASTER_SERVER_NAME ;
 int MAX_MASTER_SERVERS ;
 int SV_AddOperatorCommands () ;
 int SV_BotInitBotLib () ;
 int SV_BotInitCvars () ;
 int qtrue ;
 void* sv_allowDownload ;
 void* sv_banFile ;
 void* sv_dlRate ;
 void* sv_floodProtect ;
 void* sv_fps ;
 void* sv_gametype ;
 void* sv_hostname ;
 void* sv_killserver ;
 void* sv_lanForceRate ;
 void* sv_mapChecksum ;
 void* sv_mapname ;
 void** sv_master ;
 void* sv_maxPing ;
 void* sv_maxRate ;
 void* sv_maxclients ;
 void* sv_minPing ;
 void* sv_minRate ;
 void* sv_padPackets ;
 void* sv_privateClients ;
 void* sv_privatePassword ;
 void* sv_pure ;
 void* sv_rateLimit ;
 void* sv_rconPassword ;
 void* sv_reconnectlimit ;
 void* sv_serverid ;
 void* sv_showloss ;
 void* sv_strictAuth ;
 void* sv_timeout ;
 TYPE_1__* sv_voip ;
 void* sv_voipProtocol ;
 void* sv_zombietime ;
 char* va (char*,int) ;

void SV_Init (void)
{
 int index;

 SV_AddOperatorCommands ();


 Cvar_Get ("dmflags", "0", CVAR_SERVERINFO);
 Cvar_Get ("fraglimit", "20", CVAR_SERVERINFO);
 Cvar_Get ("timelimit", "0", CVAR_SERVERINFO);
 sv_gametype = Cvar_Get ("g_gametype", "0", CVAR_SERVERINFO | CVAR_LATCH );
 Cvar_Get ("sv_keywords", "", CVAR_SERVERINFO);
 sv_mapname = Cvar_Get ("mapname", "nomap", CVAR_SERVERINFO | CVAR_ROM);
 sv_privateClients = Cvar_Get ("sv_privateClients", "0", CVAR_SERVERINFO);
 sv_hostname = Cvar_Get ("sv_hostname", "noname", CVAR_SERVERINFO | CVAR_ARCHIVE );
 sv_maxclients = Cvar_Get ("sv_maxclients", "8", CVAR_SERVERINFO | CVAR_LATCH);

 sv_rateLimit = Cvar_Get ("sv_rateLimit", "1", CVAR_ARCHIVE | CVAR_SERVERINFO );
 sv_minRate = Cvar_Get ("sv_minRate", "0", CVAR_ARCHIVE | CVAR_SERVERINFO );
 sv_minRate = Cvar_Get ("sv_minRate", "0", CVAR_ARCHIVE | CVAR_SERVERINFO );
 sv_maxRate = Cvar_Get ("sv_maxRate", "0", CVAR_ARCHIVE | CVAR_SERVERINFO );
 sv_dlRate = Cvar_Get("sv_dlRate", "100", CVAR_ARCHIVE | CVAR_SERVERINFO);
 sv_minPing = Cvar_Get ("sv_minPing", "0", CVAR_ARCHIVE | CVAR_SERVERINFO );
 sv_maxPing = Cvar_Get ("sv_maxPing", "0", CVAR_ARCHIVE | CVAR_SERVERINFO );
 sv_floodProtect = Cvar_Get ("sv_floodProtect", "1", CVAR_ARCHIVE | CVAR_SERVERINFO );


 Cvar_Get ("sv_cheats", "1", CVAR_SYSTEMINFO | CVAR_ROM );
 sv_serverid = Cvar_Get ("sv_serverid", "0", CVAR_SYSTEMINFO | CVAR_ROM );
 sv_pure = Cvar_Get ("sv_pure", "1", CVAR_SYSTEMINFO );





 Cvar_Get ("sv_paks", "", CVAR_SYSTEMINFO | CVAR_ROM );
 Cvar_Get ("sv_pakNames", "", CVAR_SYSTEMINFO | CVAR_ROM );
 Cvar_Get ("sv_referencedPaks", "", CVAR_SYSTEMINFO | CVAR_ROM );
 Cvar_Get ("sv_referencedPakNames", "", CVAR_SYSTEMINFO | CVAR_ROM );


 sv_rconPassword = Cvar_Get ("rconPassword", "", CVAR_TEMP );
 sv_privatePassword = Cvar_Get ("sv_privatePassword", "", CVAR_TEMP );
 sv_fps = Cvar_Get ("sv_fps", "20", CVAR_TEMP );
 sv_timeout = Cvar_Get ("sv_timeout", "200", CVAR_TEMP );
 sv_zombietime = Cvar_Get ("sv_zombietime", "2", CVAR_TEMP );
 Cvar_Get ("nextmap", "", CVAR_TEMP );

 sv_allowDownload = Cvar_Get ("sv_allowDownload", "0", CVAR_SERVERINFO);
 Cvar_Get ("sv_dlURL", "", CVAR_SERVERINFO | CVAR_ARCHIVE);

 sv_master[0] = Cvar_Get("sv_master1", MASTER_SERVER_NAME, 0);
 sv_master[1] = Cvar_Get("sv_master2", "master.ioquake3.org", 0);
 for(index = 2; index < MAX_MASTER_SERVERS; index++)
  sv_master[index] = Cvar_Get(va("sv_master%d", index + 1), "", CVAR_ARCHIVE);

 sv_reconnectlimit = Cvar_Get ("sv_reconnectlimit", "3", 0);
 sv_showloss = Cvar_Get ("sv_showloss", "0", 0);
 sv_padPackets = Cvar_Get ("sv_padPackets", "0", 0);
 sv_killserver = Cvar_Get ("sv_killserver", "0", 0);
 sv_mapChecksum = Cvar_Get ("sv_mapChecksum", "", CVAR_ROM);
 sv_lanForceRate = Cvar_Get ("sv_lanForceRate", "1", CVAR_ARCHIVE );

 sv_strictAuth = Cvar_Get ("sv_strictAuth", "1", CVAR_ARCHIVE );

 sv_banFile = Cvar_Get("sv_banFile", "serverbans.dat", CVAR_ARCHIVE);


 SV_BotInitCvars();


 SV_BotInitBotLib();


 Cbuf_AddText("rehashbans\n");
}
