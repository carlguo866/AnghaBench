
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int intmax_t ;
struct TYPE_14__ {scalar_t__ st_name; scalar_t__ st_value; } ;
struct TYPE_13__ {size_t local_gotno; size_t gotsym; scalar_t__ strtab; int path; scalar_t__ relocbase; scalar_t__* pltgot; } ;
struct TYPE_12__ {int env; } ;
typedef TYPE_1__ RtldLockState ;
typedef TYPE_2__ Obj_Entry ;
typedef TYPE_3__ Elf_Sym ;
typedef size_t Elf_Size ;
typedef scalar_t__ Elf_Addr ;


 int SYMLOOK_IN_PLT ;
 int dbg (char*,int ,int ,scalar_t__,void*,void*) ;
 TYPE_3__* find_symdef (size_t,TYPE_2__*,TYPE_2__ const**,int ,int *,TYPE_1__*) ;
 int ld_bind_not ;
 int lock_release (int ,TYPE_1__*) ;
 int lock_upgrade (int ,TYPE_1__*) ;
 int rlock_acquire (int ,TYPE_1__*) ;
 int rtld_bind_lock ;
 int rtld_die () ;
 scalar_t__ sigsetjmp (int ,int ) ;

Elf_Addr
_mips_rtld_bind(Obj_Entry *obj, Elf_Size reloff)
{
        Elf_Addr *got = obj->pltgot;
        const Elf_Sym *def;
        const Obj_Entry *defobj;
        Elf_Addr *where;
        Elf_Addr target;
        RtldLockState lockstate;

 rlock_acquire(rtld_bind_lock, &lockstate);
 if (sigsetjmp(lockstate.env, 0) != 0)
  lock_upgrade(rtld_bind_lock, &lockstate);

 where = &got[obj->local_gotno + reloff - obj->gotsym];
        def = find_symdef(reloff, obj, &defobj, SYMLOOK_IN_PLT, ((void*)0),
           &lockstate);
        if (def == ((void*)0))
  rtld_die();

        target = (Elf_Addr)(defobj->relocbase + def->st_value);
        dbg("bind now/fixup at %s sym # %jd in %s --> was=%p new=%p",
     obj->path,
     (intmax_t)reloff, defobj->strtab + def->st_name,
     (void *)*where, (void *)target);
 if (!ld_bind_not)
  *where = target;
 lock_release(rtld_bind_lock, &lockstate);
 return (Elf_Addr)target;
}
