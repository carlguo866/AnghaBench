
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct nd_ifinfo {int chlim; scalar_t__ initialized; } ;
struct in6pcb {scalar_t__ in6p_hops; } ;
struct ifnet {int dummy; } ;


 struct nd_ifinfo* ND_IFINFO (struct ifnet*) ;
 int ip6_defhlim ;

int
in6_selecthlim(struct in6pcb *in6p, struct ifnet *ifp)
{
 if (in6p && in6p->in6p_hops >= 0) {
  return (in6p->in6p_hops);
 } else if (((void*)0) != ifp) {
  u_int8_t chlim;
  struct nd_ifinfo *ndi = ND_IFINFO(ifp);
  if (ndi && ndi->initialized) {

   chlim = ndi->chlim;
  } else {
   chlim = ip6_defhlim;
  }
  return (chlim);
 }

 return (ip6_defhlim);
}
