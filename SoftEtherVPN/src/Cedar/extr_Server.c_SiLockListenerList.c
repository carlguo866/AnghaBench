
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ServerListenerList; } ;
typedef TYPE_1__ SERVER ;


 int LockList (int ) ;

void SiLockListenerList(SERVER *s)
{

 if (s == ((void*)0))
 {
  return;
 }

 LockList(s->ServerListenerList);
}
