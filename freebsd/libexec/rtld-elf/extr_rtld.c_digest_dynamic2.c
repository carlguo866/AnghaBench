
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int d_val; } ;
struct TYPE_13__ {TYPE_1__ d_un; } ;
struct TYPE_12__ {char const* runpath; int strtab; char const* rpath; scalar_t__ z_origin; } ;
typedef TYPE_2__ Obj_Entry ;
typedef TYPE_3__ Elf_Dyn ;


 int obj_resolve_origin (TYPE_2__*) ;
 int object_add_name (TYPE_2__*,int) ;
 void* origin_subst (TYPE_2__*,char const*) ;
 int rtld_die () ;

__attribute__((used)) static void
digest_dynamic2(Obj_Entry *obj, const Elf_Dyn *dyn_rpath,
    const Elf_Dyn *dyn_soname, const Elf_Dyn *dyn_runpath)
{

 if (obj->z_origin && !obj_resolve_origin(obj))
  rtld_die();

 if (dyn_runpath != ((void*)0)) {
  obj->runpath = (const char *)obj->strtab + dyn_runpath->d_un.d_val;
  obj->runpath = origin_subst(obj, obj->runpath);
 } else if (dyn_rpath != ((void*)0)) {
  obj->rpath = (const char *)obj->strtab + dyn_rpath->d_un.d_val;
  obj->rpath = origin_subst(obj, obj->rpath);
 }
 if (dyn_soname != ((void*)0))
  object_add_name(obj, obj->strtab + dyn_soname->d_un.d_val);
}
