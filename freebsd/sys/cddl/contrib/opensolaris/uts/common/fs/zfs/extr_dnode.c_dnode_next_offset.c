
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_6__ {scalar_t__ dn_datablkshift; scalar_t__ dn_datablksz; int dn_struct_rwlock; TYPE_1__* dn_phys; } ;
typedef TYPE_2__ dnode_t ;
struct TYPE_5__ {int dn_nlevels; } ;


 int DNODE_FIND_BACKWARDS ;
 int DNODE_FIND_HAVELOCK ;
 int DNODE_FIND_HOLE ;
 int ESRCH ;
 int RW_READER ;
 int SET_ERROR (int) ;
 int dnode_next_offset_level (TYPE_2__*,int,scalar_t__*,int,scalar_t__,scalar_t__) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;

int
dnode_next_offset(dnode_t *dn, int flags, uint64_t *offset,
    int minlvl, uint64_t blkfill, uint64_t txg)
{
 uint64_t initial_offset = *offset;
 int lvl, maxlvl;
 int error = 0;

 if (!(flags & DNODE_FIND_HAVELOCK))
  rw_enter(&dn->dn_struct_rwlock, RW_READER);

 if (dn->dn_phys->dn_nlevels == 0) {
  error = SET_ERROR(ESRCH);
  goto out;
 }

 if (dn->dn_datablkshift == 0) {
  if (*offset < dn->dn_datablksz) {
   if (flags & DNODE_FIND_HOLE)
    *offset = dn->dn_datablksz;
  } else {
   error = SET_ERROR(ESRCH);
  }
  goto out;
 }

 maxlvl = dn->dn_phys->dn_nlevels;

 for (lvl = minlvl; lvl <= maxlvl; lvl++) {
  error = dnode_next_offset_level(dn,
      flags, offset, lvl, blkfill, txg);
  if (error != ESRCH)
   break;
 }

 while (error == 0 && --lvl >= minlvl) {
  error = dnode_next_offset_level(dn,
      flags, offset, lvl, blkfill, txg);
 }





 if ((flags & DNODE_FIND_HOLE) && error == ESRCH && txg == 0 &&
     minlvl == 1 && blkfill == 1 && !(flags & DNODE_FIND_BACKWARDS)) {
  error = 0;
 }

 if (error == 0 && (flags & DNODE_FIND_BACKWARDS ?
     initial_offset < *offset : initial_offset > *offset))
  error = SET_ERROR(ESRCH);
out:
 if (!(flags & DNODE_FIND_HAVELOCK))
  rw_exit(&dn->dn_struct_rwlock);

 return (error);
}
