
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;


 int nouveau_object_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int ,struct nouveau_object**) ;
 struct nouveau_object* nv_object (struct nouveau_object*) ;

__attribute__((used)) static int
_nouveau_object_ctor(struct nouveau_object *parent,
       struct nouveau_object *engine,
       struct nouveau_oclass *oclass, void *data, u32 size,
       struct nouveau_object **pobject)
{
 struct nouveau_object *object;
 int ret;

 ret = nouveau_object_create(parent, engine, oclass, 0, &object);
 *pobject = nv_object(object);
 if (ret)
  return ret;

 return 0;
}
