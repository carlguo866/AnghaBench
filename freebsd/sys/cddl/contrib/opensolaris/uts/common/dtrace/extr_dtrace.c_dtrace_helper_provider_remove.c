
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int pid_t ;
struct TYPE_7__ {scalar_t__ dofs_type; } ;
typedef TYPE_1__ dof_sec_t ;
struct TYPE_8__ {scalar_t__ dofhp_dof; } ;
typedef TYPE_2__ dof_helper_t ;
struct TYPE_9__ {int dofh_secnum; int dofh_secsize; scalar_t__ dofh_secoff; } ;
typedef TYPE_3__ dof_hdr_t ;


 int ASSERT (int ) ;
 scalar_t__ DOF_SECT_PROVIDER ;
 int MUTEX_HELD (int *) ;
 int dtrace_helper_provider_remove_one (TYPE_2__*,TYPE_1__*,int ) ;
 int dtrace_meta_lock ;

__attribute__((used)) static void
dtrace_helper_provider_remove(dof_helper_t *dhp, pid_t pid)
{
 uintptr_t daddr = (uintptr_t)dhp->dofhp_dof;
 dof_hdr_t *dof = (dof_hdr_t *)daddr;
 int i;

 ASSERT(MUTEX_HELD(&dtrace_meta_lock));

 for (i = 0; i < dof->dofh_secnum; i++) {
  dof_sec_t *sec = (dof_sec_t *)(uintptr_t)(daddr +
      dof->dofh_secoff + i * dof->dofh_secsize);

  if (sec->dofs_type != DOF_SECT_PROVIDER)
   continue;

  dtrace_helper_provider_remove_one(dhp, sec, pid);
 }
}
