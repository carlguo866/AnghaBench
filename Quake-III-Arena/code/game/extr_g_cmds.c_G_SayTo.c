
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {TYPE_2__* client; int inuse; } ;
typedef TYPE_4__ gentity_t ;
struct TYPE_15__ {scalar_t__ integer; } ;
struct TYPE_13__ {scalar_t__ connected; } ;
struct TYPE_11__ {scalar_t__ sessionTeam; } ;
struct TYPE_12__ {TYPE_1__ sess; TYPE_3__ pers; } ;


 scalar_t__ CON_CONNECTED ;
 scalar_t__ GT_TOURNAMENT ;
 int OnSameTeam (TYPE_4__*,TYPE_4__*) ;
 int Q_COLOR_ESCAPE ;
 int SAY_TEAM ;
 scalar_t__ TEAM_FREE ;
 int g_entities ;
 TYPE_6__ g_gametype ;
 int trap_SendServerCommand (TYPE_4__*,int ) ;
 int va (char*,char*,char const*,int ,int,char const*) ;

__attribute__((used)) static void G_SayTo( gentity_t *ent, gentity_t *other, int mode, int color, const char *name, const char *message ) {
 if (!other) {
  return;
 }
 if (!other->inuse) {
  return;
 }
 if (!other->client) {
  return;
 }
 if ( other->client->pers.connected != CON_CONNECTED ) {
  return;
 }
 if ( mode == SAY_TEAM && !OnSameTeam(ent, other) ) {
  return;
 }

 if ( (g_gametype.integer == GT_TOURNAMENT )
  && other->client->sess.sessionTeam == TEAM_FREE
  && ent->client->sess.sessionTeam != TEAM_FREE ) {
  return;
 }

 trap_SendServerCommand( other-g_entities, va("%s \"%s%c%c%s\"",
  mode == SAY_TEAM ? "tchat" : "chat",
  name, Q_COLOR_ESCAPE, color, message));
}
