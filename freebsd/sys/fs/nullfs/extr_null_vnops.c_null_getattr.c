
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vop_getattr_args {TYPE_5__* a_vp; TYPE_1__* a_vap; } ;
struct vop_generic_args {int dummy; } ;
struct TYPE_10__ {TYPE_4__* v_mount; } ;
struct TYPE_7__ {int * val; } ;
struct TYPE_8__ {TYPE_2__ f_fsid; } ;
struct TYPE_9__ {TYPE_3__ mnt_stat; } ;
struct TYPE_6__ {int va_fsid; } ;


 int null_bypass (struct vop_generic_args*) ;

__attribute__((used)) static int
null_getattr(struct vop_getattr_args *ap)
{
 int error;

 if ((error = null_bypass((struct vop_generic_args *)ap)) != 0)
  return (error);

 ap->a_vap->va_fsid = ap->a_vp->v_mount->mnt_stat.f_fsid.val[0];
 return (0);
}
