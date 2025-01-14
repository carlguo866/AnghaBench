
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct sockaddr {scalar_t__ sa_family; char* sa_data; } ;
struct TYPE_5__ {struct ifaddr* tqh_first; } ;
struct ifnet {int if_flags; TYPE_1__ if_addrhead; } ;
struct TYPE_6__ {struct ifaddr* tqe_next; } ;
struct ifaddr {TYPE_3__* ifa_netmask; TYPE_4__* ifa_addr; TYPE_4__* ifa_dstaddr; TYPE_2__ ifa_link; } ;
struct TYPE_8__ {scalar_t__ sa_family; char* sa_data; } ;
struct TYPE_7__ {char* sa_data; int sa_len; } ;


 scalar_t__ AF_MAX ;
 int IFA_ADDREF_LOCKED (struct ifaddr*) ;
 int IFA_LOCK (struct ifaddr*) ;
 int IFA_REMREF (struct ifaddr*) ;
 int IFA_UNLOCK (struct ifaddr*) ;
 int IFF_POINTOPOINT ;
 scalar_t__ ifa_equal (struct sockaddr const*,TYPE_4__*) ;
 int ifnet_lock_done (struct ifnet*) ;
 int ifnet_lock_shared (struct ifnet*) ;

struct ifaddr *
ifaof_ifpforaddr(const struct sockaddr *addr, struct ifnet *ifp)
{
 struct ifaddr *ifa = ((void*)0);
 const char *cp, *cp2, *cp3;
 char *cplim;
 struct ifaddr *ifa_maybe = ((void*)0);
 struct ifaddr *better_ifa_maybe = ((void*)0);
 u_int af = addr->sa_family;

 if (af >= AF_MAX)
  return (((void*)0));

 ifnet_lock_shared(ifp);
 for (ifa = ifp->if_addrhead.tqh_first; ifa;
      ifa = ifa->ifa_link.tqe_next) {
  IFA_LOCK(ifa);
  if (ifa->ifa_addr->sa_family != af) {
   IFA_UNLOCK(ifa);
   continue;
  }
  if (ifa_maybe == ((void*)0)) {
   IFA_ADDREF_LOCKED(ifa);
   ifa_maybe = ifa;
  }
  if (ifa->ifa_netmask == 0) {
   if (ifa_equal(addr, ifa->ifa_addr) ||
       ifa_equal(addr, ifa->ifa_dstaddr)) {
    IFA_ADDREF_LOCKED(ifa);
    IFA_UNLOCK(ifa);
    break;
   }
   IFA_UNLOCK(ifa);
   continue;
  }
  if (ifp->if_flags & IFF_POINTOPOINT) {
   if (ifa_equal(addr, ifa->ifa_dstaddr)) {
    IFA_ADDREF_LOCKED(ifa);
    IFA_UNLOCK(ifa);
    break;
   }
  } else {
   if (ifa_equal(addr, ifa->ifa_addr)) {

    IFA_ADDREF_LOCKED(ifa);
    IFA_UNLOCK(ifa);
    break;
   }
   cp = addr->sa_data;
   cp2 = ifa->ifa_addr->sa_data;
   cp3 = ifa->ifa_netmask->sa_data;
   cplim = ifa->ifa_netmask->sa_len +
       (char *)ifa->ifa_netmask;
   for (; cp3 < cplim; cp3++)
    if ((*cp++ ^ *cp2++) & *cp3)
     break;
   if (cp3 == cplim) {

    if (better_ifa_maybe == ((void*)0)) {

     IFA_ADDREF_LOCKED(ifa);
     better_ifa_maybe = ifa;
    }
   }
  }
  IFA_UNLOCK(ifa);
 }

 if (ifa == ((void*)0)) {
  if (better_ifa_maybe != ((void*)0)) {
   ifa = better_ifa_maybe;
   better_ifa_maybe = ((void*)0);
  } else {
   ifa = ifa_maybe;
   ifa_maybe = ((void*)0);
  }
 }

 ifnet_lock_done(ifp);

 if (better_ifa_maybe != ((void*)0))
  IFA_REMREF(better_ifa_maybe);
 if (ifa_maybe != ((void*)0))
  IFA_REMREF(ifa_maybe);

 return (ifa);
}
