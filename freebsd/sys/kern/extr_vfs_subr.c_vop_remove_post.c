
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_remove_args {int a_vp; int a_dvp; } ;


 int NOTE_DELETE ;
 int NOTE_WRITE ;
 int VFS_KNOTE_LOCKED (int ,int ) ;

void
vop_remove_post(void *ap, int rc)
{
 struct vop_remove_args *a = ap;

 if (!rc) {
  VFS_KNOTE_LOCKED(a->a_dvp, NOTE_WRITE);
  VFS_KNOTE_LOCKED(a->a_vp, NOTE_DELETE);
 }
}
