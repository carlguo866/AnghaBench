
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
struct dsl_dataset {scalar_t__* ds_feature_inuse; } ;
struct TYPE_7__ {struct dsl_dataset* os_dsl_dataset; } ;
typedef TYPE_1__ objset_t ;
struct TYPE_8__ {int doi_dnodesize; } ;
typedef TYPE_2__ dmu_object_info_t ;
typedef scalar_t__ boolean_t ;


 int DMU_META_DNODE (TYPE_1__*) ;
 int DNODES_PER_BLOCK ;
 int DNODE_FIND_HOLE ;
 int DNODE_SHIFT ;
 int EEXIST ;
 int ENOENT ;
 size_t SPA_FEATURE_LARGE_DNODE ;
 int dmu_object_info (TYPE_1__*,int,TYPE_2__*) ;
 int dnode_next_offset (int ,int ,int*,int ,int,int) ;

int
dmu_object_next(objset_t *os, uint64_t *objectp, boolean_t hole, uint64_t txg)
{
 uint64_t offset;
 uint64_t start_obj;
 struct dsl_dataset *ds = os->os_dsl_dataset;
 int error;

 if (*objectp == 0) {
  start_obj = 1;
 } else if (ds && ds->ds_feature_inuse[SPA_FEATURE_LARGE_DNODE]) {
  uint64_t i = *objectp + 1;
  uint64_t last_obj = *objectp | (DNODES_PER_BLOCK - 1);
  dmu_object_info_t doi;







  while (i <= last_obj) {
   error = dmu_object_info(os, i, &doi);
   if (error == ENOENT) {
    if (hole) {
     *objectp = i;
     return (0);
    } else {
     i++;
    }
   } else if (error == EEXIST) {
    i++;
   } else if (error == 0) {
    if (hole) {
     i += doi.doi_dnodesize >> DNODE_SHIFT;
    } else {
     *objectp = i;
     return (0);
    }
   } else {
    return (error);
   }
  }

  start_obj = i;
 } else {
  start_obj = *objectp + 1;
 }

 offset = start_obj << DNODE_SHIFT;

 error = dnode_next_offset(DMU_META_DNODE(os),
     (hole ? DNODE_FIND_HOLE : 0), &offset, 0, DNODES_PER_BLOCK, txg);

 *objectp = offset >> DNODE_SHIFT;

 return (error);
}
