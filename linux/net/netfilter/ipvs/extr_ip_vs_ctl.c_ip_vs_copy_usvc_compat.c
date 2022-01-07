
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ip; } ;
struct ip_vs_service_user_kern {int netmask; int timeout; int flags; int sched_name; int fwmark; int port; TYPE_1__ addr; int protocol; int af; } ;
struct ip_vs_service_user {int netmask; int timeout; int flags; int sched_name; int fwmark; int port; int addr; int protocol; } ;


 int AF_INET ;
 int memset (struct ip_vs_service_user_kern*,int ,int) ;

__attribute__((used)) static void ip_vs_copy_usvc_compat(struct ip_vs_service_user_kern *usvc,
      struct ip_vs_service_user *usvc_compat)
{
 memset(usvc, 0, sizeof(*usvc));

 usvc->af = AF_INET;
 usvc->protocol = usvc_compat->protocol;
 usvc->addr.ip = usvc_compat->addr;
 usvc->port = usvc_compat->port;
 usvc->fwmark = usvc_compat->fwmark;


 usvc->sched_name = usvc_compat->sched_name;

 usvc->flags = usvc_compat->flags;
 usvc->timeout = usvc_compat->timeout;
 usvc->netmask = usvc_compat->netmask;
}
