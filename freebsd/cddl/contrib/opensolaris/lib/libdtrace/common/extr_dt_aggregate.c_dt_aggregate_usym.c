
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint64_t ;
struct ps_prochandle {int dummy; } ;
struct TYPE_9__ {int * dt_vector; } ;
typedef TYPE_1__ dtrace_hdl_t ;
struct TYPE_10__ {int st_value; } ;
typedef TYPE_2__ GElf_Sym ;


 int PGRAB_FORCE ;
 int PGRAB_RDONLY ;
 scalar_t__ Plookup_by_addr (struct ps_prochandle*,int ,int *,int ,TYPE_2__*) ;
 struct ps_prochandle* dt_proc_grab (TYPE_1__*,int ,int,int ) ;
 int dt_proc_lock (TYPE_1__*,struct ps_prochandle*) ;
 int dt_proc_release (TYPE_1__*,struct ps_prochandle*) ;
 int dt_proc_unlock (TYPE_1__*,struct ps_prochandle*) ;

__attribute__((used)) static void
dt_aggregate_usym(dtrace_hdl_t *dtp, uint64_t *data)
{
 uint64_t pid = data[0];
 uint64_t *pc = &data[1];
 struct ps_prochandle *P;
 GElf_Sym sym;

 if (dtp->dt_vector != ((void*)0))
  return;

 if ((P = dt_proc_grab(dtp, pid, PGRAB_RDONLY | PGRAB_FORCE, 0)) == ((void*)0))
  return;

 dt_proc_lock(dtp, P);

 if (Plookup_by_addr(P, *pc, ((void*)0), 0, &sym) == 0)
  *pc = sym.st_value;

 dt_proc_unlock(dtp, P);
 dt_proc_release(dtp, P);
}
