
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_long ;
typedef int this ;
typedef int rt ;
struct TYPE_4__ {int src; scalar_t__ hook; } ;
typedef TYPE_1__ ng_btsocket_l2cap_rtentry_t ;
typedef int * ng_btsocket_l2cap_rtentry_p ;
typedef int kvm_t ;
struct TYPE_5__ {scalar_t__ n_value; } ;


 int * LIST_NEXT (TYPE_1__*,int *) ;
 size_t N_L2CAP_RAW_RT ;
 int bdaddrpr (int *,int *,int ) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ kread (int *,scalar_t__,char*,int) ;
 TYPE_2__* nl ;
 int stdout ;

__attribute__((used)) static void
l2caprtpr(kvm_t *kvmd, u_long addr)
{
 ng_btsocket_l2cap_rtentry_p this = ((void*)0), next = ((void*)0);
 ng_btsocket_l2cap_rtentry_t rt;
 int first = 1;

 if (addr == 0)
  return;

 if (kread(kvmd, addr, (char *) &this, sizeof(this)) < 0)
  return;

 for ( ; this != ((void*)0); this = next) {
  if (kread(kvmd, (u_long) this, (char *) &rt, sizeof(rt)) < 0)
   return;

  next = LIST_NEXT(&rt, next);

  if (first) {
   first = 0;
   fprintf(stdout,
"Known %sL2CAP routes\n", (addr == nl[N_L2CAP_RAW_RT].n_value)? "raw " : "");
   fprintf(stdout,
"%-8.8s %-8.8s %-17.17s\n", "RTentry",
    "Hook",
    "BD_ADDR");
  }

  fprintf(stdout,
"%-8lx %-8lx %-17.17s\n",
   (unsigned long) this,
   (unsigned long) rt.hook,
   bdaddrpr(&rt.src, ((void*)0), 0));
 }
}
