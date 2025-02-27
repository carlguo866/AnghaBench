
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* sighand; int blocked; } ;
struct TYPE_7__ {TYPE_2__* action; } ;
struct TYPE_5__ {scalar_t__ sa_handler; } ;
struct TYPE_6__ {TYPE_1__ sa; } ;


 scalar_t__ SIG_IGN ;
 TYPE_4__* current ;
 scalar_t__ sigismember (int *,int) ;

__attribute__((used)) static int is_ignored(int sig)
{
 return (sigismember(&current->blocked, sig) ||
  current->sighand->action[sig-1].sa.sa_handler == SIG_IGN);
}
