
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_5__ {int flags; struct TYPE_5__* next; int resetString; int name; } ;
typedef TYPE_1__ cvar_t ;


 int CVAR_INIT ;
 int CVAR_NORESTART ;
 int CVAR_ROM ;
 int CVAR_USER_CREATED ;
 int CVAR_VM_CREATED ;
 int Cvar_Set2 (int ,int ,int ) ;
 TYPE_1__* Cvar_Unset (TYPE_1__*) ;
 TYPE_1__* cvar_vars ;
 int qfalse ;

void Cvar_Restart(qboolean unsetVM)
{
 cvar_t *curvar;

 curvar = cvar_vars;

 while(curvar)
 {
  if((curvar->flags & CVAR_USER_CREATED) ||
   (unsetVM && (curvar->flags & CVAR_VM_CREATED)))
  {

   curvar = Cvar_Unset(curvar);
   continue;
  }

  if(!(curvar->flags & (CVAR_ROM | CVAR_INIT | CVAR_NORESTART)))
  {

   Cvar_Set2(curvar->name, curvar->resetString, qfalse);
  }

  curvar = curvar->next;
 }
}
