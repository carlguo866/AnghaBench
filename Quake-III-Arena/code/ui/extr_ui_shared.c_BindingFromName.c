
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* keynumToStringBuf ) (int,char*,int) ;} ;
struct TYPE_3__ {int bind1; int bind2; int command; } ;


 TYPE_2__* DC ;
 scalar_t__ Q_stricmp (char const*,int ) ;
 int Q_strupr (char*) ;
 int g_bindCount ;
 TYPE_1__* g_bindings ;
 char* g_nameBind1 ;
 char* g_nameBind2 ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int stub1 (int,char*,int) ;
 int stub2 (int,char*,int) ;

void BindingFromName(const char *cvar) {
 int i, b1, b2;


 for (i=0; i < g_bindCount; i++)
 {
  if (Q_stricmp(cvar, g_bindings[i].command) == 0) {
   b1 = g_bindings[i].bind1;
   if (b1 == -1) {
    break;
   }
    DC->keynumToStringBuf( b1, g_nameBind1, 32 );
    Q_strupr(g_nameBind1);

    b2 = g_bindings[i].bind2;
    if (b2 != -1)
    {
     DC->keynumToStringBuf( b2, g_nameBind2, 32 );
     Q_strupr(g_nameBind2);
     strcat( g_nameBind1, " or " );
     strcat( g_nameBind1, g_nameBind2 );
    }
   return;
  }
 }
 strcpy(g_nameBind1, "???");
}
