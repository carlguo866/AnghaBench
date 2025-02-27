
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int fh_version; int fh_fsid_type; } ;
struct svc_fh {int fh_maxsize; TYPE_1__ fh_handle; struct svc_export* fh_export; } ;
struct svc_export {int ex_flags; scalar_t__ ex_uuid; } ;
struct TYPE_4__ {int s_dev; } ;


 int FSID_DEV ;
 int FSID_ENCODE_DEV ;
 int FSID_NUM ;
 int FSID_UUID16 ;
 int FSID_UUID16_INUM ;
 int FSID_UUID4_INUM ;
 int FSID_UUID8 ;
 int NFSEXP_FSID ;
 TYPE_2__* exp_sb (struct svc_export*) ;
 int fsid_type_ok_for_exp (int,struct svc_export*) ;
 scalar_t__ is_root_export (struct svc_export*) ;
 int old_valid_dev (int ) ;

__attribute__((used)) static void set_version_and_fsid_type(struct svc_fh *fhp, struct svc_export *exp, struct svc_fh *ref_fh)
{
 u8 version;
 u8 fsid_type;
retry:
 version = 1;
 if (ref_fh && ref_fh->fh_export == exp) {
  version = ref_fh->fh_handle.fh_version;
  fsid_type = ref_fh->fh_handle.fh_fsid_type;

  ref_fh = ((void*)0);

  switch (version) {
  case 0xca:
   fsid_type = FSID_DEV;
   break;
  case 1:
   break;
  default:
   goto retry;
  }







  if (!fsid_type_ok_for_exp(fsid_type, exp))
   goto retry;
 } else if (exp->ex_flags & NFSEXP_FSID) {
  fsid_type = FSID_NUM;
 } else if (exp->ex_uuid) {
  if (fhp->fh_maxsize >= 64) {
   if (is_root_export(exp))
    fsid_type = FSID_UUID16;
   else
    fsid_type = FSID_UUID16_INUM;
  } else {
   if (is_root_export(exp))
    fsid_type = FSID_UUID8;
   else
    fsid_type = FSID_UUID4_INUM;
  }
 } else if (!old_valid_dev(exp_sb(exp)->s_dev))

  fsid_type = FSID_ENCODE_DEV;
 else
  fsid_type = FSID_DEV;
 fhp->fh_handle.fh_version = version;
 if (version)
  fhp->fh_handle.fh_fsid_type = fsid_type;
}
