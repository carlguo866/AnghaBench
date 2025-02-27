
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int meminit; } ;
struct nv04_devinit_priv {int owner; TYPE_1__ base; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;


 int nouveau_devinit_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,struct nv04_devinit_priv**) ;
 int nv04_devinit_meminit ;
 struct nouveau_object* nv_object (struct nv04_devinit_priv*) ;

__attribute__((used)) static int
nv04_devinit_ctor(struct nouveau_object *parent, struct nouveau_object *engine,
    struct nouveau_oclass *oclass, void *data, u32 size,
    struct nouveau_object **pobject)
{
 struct nv04_devinit_priv *priv;
 int ret;

 ret = nouveau_devinit_create(parent, engine, oclass, &priv);
 *pobject = nv_object(priv);
 if (ret)
  return ret;

 priv->base.meminit = nv04_devinit_meminit;
 priv->owner = -1;
 return 0;
}
