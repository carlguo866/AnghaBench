
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct clist {scalar_t__ c_cc; int c_cl; int c_cf; int c_ce; scalar_t__ c_cs; } ;


 int bcopy (int,int *,int) ;

int
q_to_b(struct clist *clp, u_char *cp, int count)
{
 int cc;
 u_char *p = cp;


 while (count > 0 && clp->c_cc > 0) {
  cc = clp->c_cl - clp->c_cf;
  if (clp->c_cf >= clp->c_cl)
   cc = clp->c_ce - clp->c_cf;
  if (cc > count)
   cc = count;
  bcopy(clp->c_cf, p, cc);
  count -= cc;
  p += cc;
  clp->c_cc -= cc;
  clp->c_cf += cc;
  if (clp->c_cf == clp->c_ce)
   clp->c_cf = clp->c_cs;
 }
 if (clp->c_cc == 0)
  clp->c_cf = clp->c_cl = (u_char *)0;
 return p - cp;
}
