
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_43__ TYPE_9__ ;
typedef struct TYPE_42__ TYPE_8__ ;
typedef struct TYPE_41__ TYPE_6__ ;
typedef struct TYPE_40__ TYPE_5__ ;
typedef struct TYPE_39__ TYPE_4__ ;
typedef struct TYPE_38__ TYPE_3__ ;
typedef struct TYPE_37__ TYPE_30__ ;
typedef struct TYPE_36__ TYPE_2__ ;
typedef struct TYPE_35__ TYPE_1__ ;
typedef struct TYPE_34__ TYPE_14__ ;
typedef struct TYPE_33__ TYPE_12__ ;
typedef struct TYPE_32__ TYPE_11__ ;
typedef struct TYPE_31__ TYPE_10__ ;


typedef int vec3_t ;
typedef int userinfo ;
struct TYPE_37__ {int clientNum; int groundEntityNum; int eFlags; } ;
struct TYPE_35__ {int svFlags; int currentOrigin; int maxs; int mins; int contents; } ;
struct TYPE_38__ {char* classname; int health; TYPE_30__ s; TYPE_4__* client; TYPE_1__ r; int flags; scalar_t__ watertype; scalar_t__ waterlevel; int die; int clipmask; void* inuse; void* takedamage; } ;
typedef TYPE_3__ gentity_t ;
struct TYPE_34__ {int eFlags; int ping; int* persistant; int eventSequence; int* stats; int clientNum; int* ammo; int pm_time; int weapon; scalar_t__ commandTime; int origin; int weaponstate; int legsAnim; int torsoAnim; int pm_flags; } ;
struct TYPE_40__ {scalar_t__ sessionTeam; scalar_t__ spectatorState; } ;
struct TYPE_42__ {scalar_t__ serverTime; } ;
struct TYPE_36__ {int state; } ;
struct TYPE_41__ {int maxHealth; TYPE_8__ cmd; TYPE_2__ teamState; void* initialSpawn; scalar_t__ localClient; } ;
struct TYPE_39__ {int accuracy_hits; int accuracy_shots; int lastkilled_client; TYPE_14__ ps; TYPE_5__ sess; TYPE_6__ pers; scalar_t__ latched_buttons; scalar_t__ inactivityTime; scalar_t__ respawnTime; scalar_t__ airOutTime; } ;
typedef TYPE_4__ gclient_t ;
typedef TYPE_5__ clientSession_t ;
typedef TYPE_6__ clientPersistant_t ;
struct TYPE_43__ {scalar_t__ time; int intermissiontime; TYPE_4__* clients; } ;
struct TYPE_33__ {scalar_t__ integer; } ;
struct TYPE_32__ {int integer; } ;
struct TYPE_31__ {scalar_t__ integer; } ;


 int BG_PlayerStateToEntityState (TYPE_14__*,TYPE_30__*,void*) ;
 int CONTENTS_BODY ;
 int ClientEndFrame (TYPE_3__*) ;
 int ClientThink (int) ;
 int Com_Memset (TYPE_4__*,int ,int) ;
 int EF_KAMIKAZE ;
 int EF_TEAMVOTED ;
 int EF_TELEPORT_BIT ;
 int EF_VOTED ;
 int ENTITYNUM_NONE ;
 int EV_PLAYER_TELEPORT_IN ;
 scalar_t__ GT_CTF ;
 scalar_t__ GT_TEAM ;
 int G_KillBox (TYPE_3__*) ;
 int G_SetOrigin (TYPE_3__*,int ) ;
 TYPE_3__* G_TempEntity (int ,int ) ;
 int G_UseTargets (TYPE_3__*,TYPE_3__*) ;
 int Info_ValueForKey (char*,char*) ;
 int LEGS_IDLE ;
 int MASK_PLAYERSOLID ;
 int MAX_INFO_STRING ;
 int MAX_PERSISTANT ;
 int MoveClientToIntermission (TYPE_3__*) ;
 size_t PERS_SPAWN_COUNT ;
 size_t PERS_TEAM ;
 int PMF_RESPAWNED ;
 int PMF_TIME_KNOCKBACK ;
 scalar_t__ SPECTATOR_FOLLOW ;
 size_t STAT_HEALTH ;
 size_t STAT_MAX_HEALTH ;
 size_t STAT_WEAPONS ;
 int SVF_BOT ;
 TYPE_3__* SelectCTFSpawnPoint (scalar_t__,int ,int ,int ,int) ;
 TYPE_3__* SelectInitialSpawnPoint (int ,int ,int) ;
 TYPE_3__* SelectSpawnPoint (int ,int ,int ,int) ;
 TYPE_3__* SelectSpectatorSpawnPoint (int ,int ) ;
 int SetClientViewAngle (TYPE_3__*,int ) ;
 int TEAM_ACTIVE ;
 scalar_t__ TEAM_SPECTATOR ;
 int TORSO_STAND ;
 int VectorClear (int ) ;
 int VectorCopy (int ,int ) ;
 int WEAPON_READY ;
 int WP_GAUNTLET ;
 size_t WP_GRAPPLING_HOOK ;
 int WP_MACHINEGUN ;
 int WP_NUM_WEAPONS ;
 int atoi (int ) ;
 int dmlab_spawn_inventory (TYPE_14__*,int) ;
 TYPE_3__* g_entities ;
 TYPE_12__ g_gametype ;
 TYPE_11__ g_inactivity ;
 TYPE_10__ g_unlimitedAmmo ;
 TYPE_9__ level ;
 int playerMaxs ;
 int playerMins ;
 int player_die ;
 void* qtrue ;
 int trap_GetUsercmd (int,TYPE_8__*) ;
 int trap_GetUserinfo (int,char*,int) ;
 int trap_LinkEntity (TYPE_3__*) ;

void ClientSpawn(gentity_t *ent) {
 int index;
 vec3_t spawn_origin, spawn_angles;
 gclient_t *client;
 int i;
 clientPersistant_t saved;
 clientSession_t savedSess;
 int persistant[MAX_PERSISTANT];
 gentity_t *spawnPoint;
 gentity_t *tent;
 int flags;
 int savedPing;

 int accuracy_hits, accuracy_shots;
 int eventSequence;
 char userinfo[MAX_INFO_STRING];

 index = ent - g_entities;
 client = ent->client;

 VectorClear(spawn_origin);




 if ( client->sess.sessionTeam == TEAM_SPECTATOR ) {
  spawnPoint = SelectSpectatorSpawnPoint (
      spawn_origin, spawn_angles);
 } else if (g_gametype.integer >= GT_CTF ) {

  spawnPoint = SelectCTFSpawnPoint (
      client->sess.sessionTeam,
      client->pers.teamState.state,
      spawn_origin, spawn_angles,
      !!(ent->r.svFlags & SVF_BOT));
 }
 else
 {

  if ( !client->pers.initialSpawn && client->pers.localClient )
  {
   client->pers.initialSpawn = qtrue;
   spawnPoint = SelectInitialSpawnPoint(spawn_origin, spawn_angles,
            !!(ent->r.svFlags & SVF_BOT));
  }
  else
  {

   spawnPoint = SelectSpawnPoint (
    client->ps.origin,
    spawn_origin, spawn_angles, !!(ent->r.svFlags & SVF_BOT));
  }
 }
 client->pers.teamState.state = TEAM_ACTIVE;


 ent->s.eFlags &= ~EF_KAMIKAZE;



 flags = ent->client->ps.eFlags & (EF_TELEPORT_BIT | EF_VOTED | EF_TEAMVOTED);
 flags ^= EF_TELEPORT_BIT;



 saved = client->pers;
 savedSess = client->sess;
 savedPing = client->ps.ping;

 accuracy_hits = client->accuracy_hits;
 accuracy_shots = client->accuracy_shots;
 for ( i = 0 ; i < MAX_PERSISTANT ; i++ ) {
  persistant[i] = client->ps.persistant[i];
 }
 eventSequence = client->ps.eventSequence;

 Com_Memset (client, 0, sizeof(*client));

 client->pers = saved;
 client->sess = savedSess;
 client->ps.ping = savedPing;

 client->accuracy_hits = accuracy_hits;
 client->accuracy_shots = accuracy_shots;
 client->lastkilled_client = -1;

 for ( i = 0 ; i < MAX_PERSISTANT ; i++ ) {
  client->ps.persistant[i] = persistant[i];
 }
 client->ps.eventSequence = eventSequence;

 client->ps.persistant[PERS_SPAWN_COUNT]++;
 client->ps.persistant[PERS_TEAM] = client->sess.sessionTeam;

 client->airOutTime = level.time + 12000;

 trap_GetUserinfo( index, userinfo, sizeof(userinfo) );

 client->pers.maxHealth = atoi( Info_ValueForKey( userinfo, "handicap" ) );
 if ( client->pers.maxHealth < 1 || client->pers.maxHealth > 100 ) {
  client->pers.maxHealth = 100;
 }

 client->ps.stats[STAT_MAX_HEALTH] = client->pers.maxHealth;
 client->ps.eFlags = flags;

 ent->s.groundEntityNum = ENTITYNUM_NONE;
 ent->client = &level.clients[index];
 ent->takedamage = qtrue;
 ent->inuse = qtrue;
 ent->classname = "player";
 ent->r.contents = CONTENTS_BODY;
 ent->clipmask = MASK_PLAYERSOLID;
 ent->die = player_die;
 ent->waterlevel = 0;
 ent->watertype = 0;
 ent->flags = 0;

 VectorCopy (playerMins, ent->r.mins);
 VectorCopy (playerMaxs, ent->r.maxs);

 client->ps.clientNum = index;

 client->ps.stats[STAT_WEAPONS] = ( 1 << WP_MACHINEGUN );
 if ( g_unlimitedAmmo.integer != 0 ) {
  client->ps.ammo[WP_MACHINEGUN] = -1;
 } else if ( g_gametype.integer == GT_TEAM ) {
  client->ps.ammo[WP_MACHINEGUN] = 50;
 } else {
  client->ps.ammo[WP_MACHINEGUN] = 100;
 }

 client->ps.stats[STAT_WEAPONS] |= ( 1 << WP_GAUNTLET );
 client->ps.ammo[WP_GAUNTLET] = -1;
 client->ps.ammo[WP_GRAPPLING_HOOK] = -1;


 client->ps.stats[STAT_HEALTH] = client->ps.stats[STAT_MAX_HEALTH] + 25;

 G_SetOrigin( ent, spawn_origin );
 VectorCopy( spawn_origin, client->ps.origin );

 dmlab_spawn_inventory(&client->ps, !!(ent->r.svFlags & SVF_BOT));
 ent->health = client->ps.stats[STAT_HEALTH];


 client->ps.pm_flags |= PMF_RESPAWNED;

 trap_GetUsercmd( client - level.clients, &ent->client->pers.cmd );
 SetClientViewAngle( ent, spawn_angles );

 client->ps.pm_flags |= PMF_TIME_KNOCKBACK;
 client->ps.pm_time = 100;

 client->respawnTime = level.time;
 client->inactivityTime = level.time + g_inactivity.integer * 1000;
 client->latched_buttons = 0;


 client->ps.torsoAnim = TORSO_STAND;
 client->ps.legsAnim = LEGS_IDLE;

 if (!level.intermissiontime) {
  if (ent->client->sess.sessionTeam != TEAM_SPECTATOR) {
   G_KillBox(ent);

   client->ps.weapon = WP_MACHINEGUN;
   client->ps.weaponstate = WEAPON_READY;

   G_UseTargets(spawnPoint, ent);

   client->ps.weapon = 1;

   for (i = WP_NUM_WEAPONS - 1 ; i > 0 ; i--) {
    if (client->ps.stats[STAT_WEAPONS] & (1 << i)) {
     client->ps.weapon = i;
     break;
    }
   }

   VectorCopy(ent->client->ps.origin, ent->r.currentOrigin);

   tent = G_TempEntity(ent->client->ps.origin, EV_PLAYER_TELEPORT_IN);
   tent->s.clientNum = ent->s.clientNum;

   trap_LinkEntity (ent);
  }
 } else {

  MoveClientToIntermission(ent);
 }


 client->ps.commandTime = level.time - 100;
 ent->client->pers.cmd.serverTime = level.time;
 ClientThink( ent-g_entities );


 if ( ent->client->sess.spectatorState != SPECTATOR_FOLLOW ) {
  ClientEndFrame( ent );
 }


 BG_PlayerStateToEntityState( &client->ps, &ent->s, qtrue );
}
