
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsstate {int ls_flags; scalar_t__ ls_delegtime; scalar_t__ ls_delegtimelimit; } ;


 scalar_t__ NFSD_MONOSEC ;
 int NFSLCK_DELEGRECALL ;
 scalar_t__ nfsrv_lease ;

__attribute__((used)) static void
nfsrv_delaydelegtimeout(struct nfsstate *stp)
{

 if ((stp->ls_flags & NFSLCK_DELEGRECALL) == 0)
  return;

 if ((stp->ls_delegtime + 15) > NFSD_MONOSEC &&
     stp->ls_delegtime < stp->ls_delegtimelimit) {
  stp->ls_delegtime += nfsrv_lease;
  if (stp->ls_delegtime > stp->ls_delegtimelimit)
   stp->ls_delegtime = stp->ls_delegtimelimit;
 }
}
