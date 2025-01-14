
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_long ;
struct in_addr {int s_addr; } ;
struct TYPE_7__ {scalar_t__ nItems; } ;
struct TYPE_6__ {TYPE_3__ peer_list; } ;
struct TYPE_8__ {TYPE_2__ cfg; } ;
struct TYPE_5__ {TYPE_4__ ipcp; } ;
struct bundle {TYPE_1__ ncp; } ;


 int INADDR_ANY ;
 int LogDEBUG ;
 int LogIPCP ;
 int inet_ntoa (struct in_addr) ;
 scalar_t__ ipcp_SetIPaddress (TYPE_4__*,struct in_addr,struct in_addr) ;
 struct in_addr iplist_next (TYPE_3__*) ;
 int log_Printf (int ,char*,...) ;

__attribute__((used)) static struct in_addr
ChooseHisAddr(struct bundle *bundle, struct in_addr gw)
{
  struct in_addr try;
  u_long f;

  for (f = 0; f < bundle->ncp.ipcp.cfg.peer_list.nItems; f++) {
    try = iplist_next(&bundle->ncp.ipcp.cfg.peer_list);
    log_Printf(LogDEBUG, "ChooseHisAddr: Check item %ld (%s)\n",
              f, inet_ntoa(try));
    if (ipcp_SetIPaddress(&bundle->ncp.ipcp, gw, try)) {
      log_Printf(LogIPCP, "Selected IP address %s\n", inet_ntoa(try));
      break;
    }
  }

  if (f == bundle->ncp.ipcp.cfg.peer_list.nItems) {
    log_Printf(LogDEBUG, "ChooseHisAddr: All addresses in use !\n");
    try.s_addr = INADDR_ANY;
  }

  return try;
}
