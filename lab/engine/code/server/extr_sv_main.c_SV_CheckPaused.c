
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_8__ {scalar_t__ type; } ;
struct TYPE_9__ {TYPE_1__ remoteAddress; } ;
struct TYPE_10__ {scalar_t__ state; TYPE_2__ netchan; } ;
typedef TYPE_3__ client_t ;
struct TYPE_14__ {int integer; } ;
struct TYPE_13__ {int integer; } ;
struct TYPE_12__ {scalar_t__ integer; } ;
struct TYPE_11__ {TYPE_3__* clients; } ;


 scalar_t__ CS_CONNECTED ;
 int Cvar_Set (char*,char*) ;
 scalar_t__ NA_BOT ;
 TYPE_7__* cl_paused ;
 int qfalse ;
 int qtrue ;
 TYPE_6__* sv_maxclients ;
 TYPE_5__* sv_paused ;
 TYPE_4__ svs ;

__attribute__((used)) static qboolean SV_CheckPaused( void ) {
 int count;
 client_t *cl;
 int i;

 if ( !cl_paused->integer ) {
  return qfalse;
 }


 count = 0;
 for (i=0,cl=svs.clients ; i < sv_maxclients->integer ; i++,cl++) {
  if ( cl->state >= CS_CONNECTED && cl->netchan.remoteAddress.type != NA_BOT ) {
   count++;
  }
 }

 if ( count > 1 ) {

  if (sv_paused->integer)
   Cvar_Set("sv_paused", "0");
  return qfalse;
 }

 if (!sv_paused->integer)
  Cvar_Set("sv_paused", "1");
 return qtrue;
}
