
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_long ;
struct msdosfsmount {size_t pm_maxcluster; int pm_flags; int* pm_inusemap; scalar_t__ pm_freeclustercount; } ;


 int MSDOSFSMNT_RONLY ;
 int MSDOSFS_FSIMOD ;
 size_t N_INUSEBITS ;
 int assert (int) ;

__attribute__((used)) static __inline void
usemap_alloc(struct msdosfsmount *pmp, u_long cn)
{

 assert(cn <= pmp->pm_maxcluster);
 assert((pmp->pm_flags & MSDOSFSMNT_RONLY) == 0);
 assert((pmp->pm_inusemap[cn / N_INUSEBITS] & (1 << (cn % N_INUSEBITS)))
     == 0);
 assert(pmp->pm_freeclustercount > 0);

 pmp->pm_inusemap[cn / N_INUSEBITS] |= 1U << (cn % N_INUSEBITS);
 pmp->pm_freeclustercount--;
 pmp->pm_flags |= MSDOSFS_FSIMOD;
}
