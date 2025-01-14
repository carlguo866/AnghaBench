
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint64_t ;
typedef int objset_t ;
struct TYPE_13__ {int dp_spa; int * dp_meta_objset; } ;
typedef TYPE_1__ dsl_pool_t ;
struct TYPE_14__ {int dd_object; } ;
typedef TYPE_2__ dsl_dir_t ;
struct TYPE_15__ {int dd_flags; void* dd_child_dir_zapobj; void* dd_props_zapobj; int dd_parent_obj; int dd_creation_time; } ;
typedef TYPE_3__ dsl_dir_phys_t ;
typedef int dmu_tx_t ;
struct TYPE_16__ {TYPE_3__* db_data; } ;
typedef TYPE_4__ dmu_buf_t ;
struct TYPE_17__ {int dd_child_dir_zapobj; } ;


 int DD_FIELD_FILESYSTEM_COUNT ;
 int DD_FLAG_USED_BREAKDOWN ;
 int DMU_OT_DSL_DIR ;
 int DMU_OT_DSL_DIR_CHILD_MAP ;
 int DMU_OT_DSL_PROPS ;
 int DMU_OT_NONE ;
 int DMU_POOL_DIRECTORY_OBJECT ;
 char const* DMU_POOL_ROOT_DATASET ;
 int FTAG ;
 scalar_t__ SPA_VERSION_USED_BREAKDOWN ;
 int VERIFY0 (int ) ;
 int dmu_bonus_hold (int *,int ,int ,TYPE_4__**) ;
 int dmu_buf_rele (TYPE_4__*,int ) ;
 int dmu_buf_will_dirty (TYPE_4__*,int *) ;
 int dmu_object_alloc (int *,int ,int ,int ,int,int *) ;
 TYPE_6__* dsl_dir_phys (TYPE_2__*) ;
 int dsl_fs_ss_count_adjust (TYPE_2__*,int,int ,int *) ;
 int gethrestime_sec () ;
 scalar_t__ spa_version (int ) ;
 int zap_add (int *,int ,char const*,int,int,int *,int *) ;
 void* zap_create (int *,int ,int ,int ,int *) ;

uint64_t
dsl_dir_create_sync(dsl_pool_t *dp, dsl_dir_t *pds, const char *name,
    dmu_tx_t *tx)
{
 objset_t *mos = dp->dp_meta_objset;
 uint64_t ddobj;
 dsl_dir_phys_t *ddphys;
 dmu_buf_t *dbuf;

 ddobj = dmu_object_alloc(mos, DMU_OT_DSL_DIR, 0,
     DMU_OT_DSL_DIR, sizeof (dsl_dir_phys_t), tx);
 if (pds) {
  VERIFY0(zap_add(mos, dsl_dir_phys(pds)->dd_child_dir_zapobj,
      name, sizeof (uint64_t), 1, &ddobj, tx));
 } else {

  VERIFY0(zap_add(mos, DMU_POOL_DIRECTORY_OBJECT,
      DMU_POOL_ROOT_DATASET, sizeof (uint64_t), 1, &ddobj, tx));
 }
 VERIFY0(dmu_bonus_hold(mos, ddobj, FTAG, &dbuf));
 dmu_buf_will_dirty(dbuf, tx);
 ddphys = dbuf->db_data;

 ddphys->dd_creation_time = gethrestime_sec();
 if (pds) {
  ddphys->dd_parent_obj = pds->dd_object;


  dsl_fs_ss_count_adjust(pds, 1, DD_FIELD_FILESYSTEM_COUNT, tx);
 }
 ddphys->dd_props_zapobj = zap_create(mos,
     DMU_OT_DSL_PROPS, DMU_OT_NONE, 0, tx);
 ddphys->dd_child_dir_zapobj = zap_create(mos,
     DMU_OT_DSL_DIR_CHILD_MAP, DMU_OT_NONE, 0, tx);
 if (spa_version(dp->dp_spa) >= SPA_VERSION_USED_BREAKDOWN)
  ddphys->dd_flags |= DD_FLAG_USED_BREAKDOWN;

 dmu_buf_rele(dbuf, FTAG);

 return (ddobj);
}
