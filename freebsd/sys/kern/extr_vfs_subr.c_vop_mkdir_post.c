
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_mkdir_args {int a_dvp; } ;


 int NOTE_LINK ;
 int NOTE_WRITE ;
 int VFS_KNOTE_LOCKED (int ,int) ;

void
vop_mkdir_post(void *ap, int rc)
{
 struct vop_mkdir_args *a = ap;

 if (!rc)
  VFS_KNOTE_LOCKED(a->a_dvp, NOTE_WRITE | NOTE_LINK);
}
