
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u_long ;
typedef int this ;
struct TYPE_7__ {int sb_ccc; } ;
struct TYPE_6__ {int sb_ccc; } ;
struct socket {TYPE_2__ so_snd; TYPE_1__ so_rcv; } ;
typedef int so ;
typedef int pcb ;
struct TYPE_8__ {char* hci_node; } ;
struct TYPE_9__ {TYPE_3__ addr; int flags; scalar_t__ so; } ;
typedef TYPE_4__ ng_btsocket_hci_raw_pcb_t ;
typedef int * ng_btsocket_hci_raw_pcb_p ;
typedef int kvm_t ;


 int * LIST_NEXT (TYPE_4__*,int *) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ kread (int *,scalar_t__,char*,int) ;
 int stdout ;

__attribute__((used)) static void
hcirawpr(kvm_t *kvmd, u_long addr)
{
 ng_btsocket_hci_raw_pcb_p this = ((void*)0), next = ((void*)0);
 ng_btsocket_hci_raw_pcb_t pcb;
 struct socket so;
 int first = 1;

 if (addr == 0)
  return;

        if (kread(kvmd, addr, (char *) &this, sizeof(this)) < 0)
  return;

 for ( ; this != ((void*)0); this = next) {
  if (kread(kvmd, (u_long) this, (char *) &pcb, sizeof(pcb)) < 0)
   return;
  if (kread(kvmd, (u_long) pcb.so, (char *) &so, sizeof(so)) < 0)
   return;

  next = LIST_NEXT(&pcb, next);

  if (first) {
   first = 0;
   fprintf(stdout,
"Active raw HCI sockets\n" "%-8.8s %-8.8s %-6.6s %-6.6s %-6.6s %-16.16s\n",

    "Socket",
    "PCB",
    "Flags",
    "Recv-Q",
    "Send-Q",
    "Local address");
  }

  if (pcb.addr.hci_node[0] == 0) {
   pcb.addr.hci_node[0] = '*';
   pcb.addr.hci_node[1] = 0;
  }

  fprintf(stdout,
"%-8lx %-8lx %-6.6x %6d %6d %-16.16s\n",
   (unsigned long) pcb.so,
   (unsigned long) this,
   pcb.flags,
   so.so_rcv.sb_ccc,
   so.so_snd.sb_ccc,
   pcb.addr.hci_node);
 }
}
