
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef scalar_t__ u32 ;
struct sym_hcb {int dqueueget; scalar_t__* dqueue; } ;
struct sym_ccb {int dummy; } ;


 int MAX_QUEUE ;
 int MEMORY_READ_BARRIER () ;
 int printf (char*,char*,int) ;
 scalar_t__ scr_to_cpu (scalar_t__) ;
 struct sym_ccb* sym_ccb_from_dsa (struct sym_hcb*,scalar_t__) ;
 int sym_complete_ok (struct sym_hcb*,struct sym_ccb*) ;
 char* sym_name (struct sym_hcb*) ;

__attribute__((used)) static int sym_wakeup_done (struct sym_hcb *np)
{
 struct sym_ccb *cp;
 int i, n;
 u32 dsa;

 n = 0;
 i = np->dqueueget;


 while (1) {
  dsa = scr_to_cpu(np->dqueue[i]);
  if (!dsa)
   break;
  np->dqueue[i] = 0;
  if ((i = i+2) >= MAX_QUEUE*2)
   i = 0;

  cp = sym_ccb_from_dsa(np, dsa);
  if (cp) {
   MEMORY_READ_BARRIER();
   sym_complete_ok (np, cp);
   ++n;
  }
  else
   printf ("%s: bad DSA (%x) in done queue.\n",
    sym_name(np), (u_int) dsa);
 }
 np->dqueueget = i;

 return n;
}
