
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int string; int name; struct TYPE_3__* next; } ;
typedef TYPE_1__ cvar_t ;


 int CVAR_ARCHIVE ;
 int CVAR_CHEAT ;
 int CVAR_INIT ;
 int CVAR_LATCH ;
 int CVAR_ROM ;
 int CVAR_SERVERINFO ;
 int CVAR_SYSTEMINFO ;
 int CVAR_USERINFO ;
 int CVAR_USER_CREATED ;
 int Cmd_Argc () ;
 char* Cmd_Argv (int) ;
 int Com_Filter (char*,int ,int ) ;
 int Com_Printf (char*,...) ;
 int cvar_numIndexes ;
 TYPE_1__* cvar_vars ;
 int qfalse ;

void Cvar_List_f( void ) {
 cvar_t *var;
 int i;
 char *match;

 if ( Cmd_Argc() > 1 ) {
  match = Cmd_Argv( 1 );
 } else {
  match = ((void*)0);
 }

 i = 0;
 for (var = cvar_vars ; var ; var = var->next, i++)
 {
  if(!var->name || (match && !Com_Filter(match, var->name, qfalse)))
   continue;

  if (var->flags & CVAR_SERVERINFO) {
   Com_Printf("S");
  } else {
   Com_Printf(" ");
  }
  if (var->flags & CVAR_SYSTEMINFO) {
   Com_Printf("s");
  } else {
   Com_Printf(" ");
  }
  if (var->flags & CVAR_USERINFO) {
   Com_Printf("U");
  } else {
   Com_Printf(" ");
  }
  if (var->flags & CVAR_ROM) {
   Com_Printf("R");
  } else {
   Com_Printf(" ");
  }
  if (var->flags & CVAR_INIT) {
   Com_Printf("I");
  } else {
   Com_Printf(" ");
  }
  if (var->flags & CVAR_ARCHIVE) {
   Com_Printf("A");
  } else {
   Com_Printf(" ");
  }
  if (var->flags & CVAR_LATCH) {
   Com_Printf("L");
  } else {
   Com_Printf(" ");
  }
  if (var->flags & CVAR_CHEAT) {
   Com_Printf("C");
  } else {
   Com_Printf(" ");
  }
  if (var->flags & CVAR_USER_CREATED) {
   Com_Printf("?");
  } else {
   Com_Printf(" ");
  }

  Com_Printf (" %s \"%s\"\n", var->name, var->string);
 }

 Com_Printf ("\n%i total cvars\n", i);
 Com_Printf ("%i cvar indexes\n", cvar_numIndexes);
}
