
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ drr_magic; int drr_versioninfo; } ;
struct TYPE_13__ {TYPE_2__ drr_begin; } ;
struct TYPE_15__ {TYPE_1__ drr_u; } ;
typedef TYPE_3__ dmu_replay_record_t ;
struct TYPE_16__ {char* drc_tosnap; char* drc_tofs; TYPE_2__* drc_drrb; int drc_cksum; int drc_byteswap; int drc_clone; void* drc_cred; void* drc_resumable; void* drc_force; TYPE_3__* drc_drr_begin; } ;
typedef TYPE_4__ dmu_recv_cookie_t ;
struct TYPE_17__ {char* drba_origin; void* drba_cred; TYPE_4__* drba_cookie; int member_0; } ;
typedef TYPE_5__ dmu_recv_begin_arg_t ;
typedef void* boolean_t ;


 scalar_t__ BSWAP_64 (scalar_t__) ;
 int B_TRUE ;
 void* CRED () ;
 int DMU_BACKUP_FEATURE_RESUMING ;
 scalar_t__ DMU_BACKUP_MAGIC ;
 int DMU_GET_FEATUREFLAGS (int ) ;
 int EINVAL ;
 int SET_ERROR (int ) ;
 int ZFS_SPACE_CHECK_NORMAL ;
 int byteswap_record (TYPE_3__*) ;
 int bzero (TYPE_4__*,int) ;
 int dmu_recv_begin_check ;
 int dmu_recv_begin_sync ;
 int dmu_recv_resume_begin_check ;
 int dmu_recv_resume_begin_sync ;
 int dsl_sync_task (char*,int ,int ,TYPE_5__*,int,int ) ;
 int fletcher_4_incremental_byteswap (TYPE_3__*,int,int *) ;
 int fletcher_4_incremental_native (TYPE_3__*,int,int *) ;

int
dmu_recv_begin(char *tofs, char *tosnap, dmu_replay_record_t *drr_begin,
    boolean_t force, boolean_t resumable, char *origin, dmu_recv_cookie_t *drc)
{
 dmu_recv_begin_arg_t drba = { 0 };

 bzero(drc, sizeof (dmu_recv_cookie_t));
 drc->drc_drr_begin = drr_begin;
 drc->drc_drrb = &drr_begin->drr_u.drr_begin;
 drc->drc_tosnap = tosnap;
 drc->drc_tofs = tofs;
 drc->drc_force = force;
 drc->drc_resumable = resumable;
 drc->drc_cred = CRED();
 drc->drc_clone = (origin != ((void*)0));

 if (drc->drc_drrb->drr_magic == BSWAP_64(DMU_BACKUP_MAGIC)) {
  drc->drc_byteswap = B_TRUE;
  (void) fletcher_4_incremental_byteswap(drr_begin,
      sizeof (dmu_replay_record_t), &drc->drc_cksum);
  byteswap_record(drr_begin);
 } else if (drc->drc_drrb->drr_magic == DMU_BACKUP_MAGIC) {
  (void) fletcher_4_incremental_native(drr_begin,
      sizeof (dmu_replay_record_t), &drc->drc_cksum);
 } else {
  return (SET_ERROR(EINVAL));
 }

 drba.drba_origin = origin;
 drba.drba_cookie = drc;
 drba.drba_cred = CRED();

 if (DMU_GET_FEATUREFLAGS(drc->drc_drrb->drr_versioninfo) &
     DMU_BACKUP_FEATURE_RESUMING) {
  return (dsl_sync_task(tofs,
      dmu_recv_resume_begin_check, dmu_recv_resume_begin_sync,
      &drba, 5, ZFS_SPACE_CHECK_NORMAL));
 } else {
  return (dsl_sync_task(tofs,
      dmu_recv_begin_check, dmu_recv_begin_sync,
      &drba, 5, ZFS_SPACE_CHECK_NORMAL));
 }
}
