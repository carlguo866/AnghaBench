
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int action; } ;
struct nv50_mxm_priv {TYPE_1__ base; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;


 int MXM_SANITISE_DCB ;
 int mxm_dcb_sanitise (TYPE_1__*) ;
 int nouveau_mxm_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,struct nv50_mxm_priv**) ;
 struct nouveau_object* nv_object (struct nv50_mxm_priv*) ;

__attribute__((used)) static int
nv50_mxm_ctor(struct nouveau_object *parent, struct nouveau_object *engine,
       struct nouveau_oclass *oclass, void *data, u32 size,
       struct nouveau_object **pobject)
{
 struct nv50_mxm_priv *priv;
 int ret;

 ret = nouveau_mxm_create(parent, engine, oclass, &priv);
 *pobject = nv_object(priv);
 if (ret)
  return ret;

 if (priv->base.action & MXM_SANITISE_DCB)
  mxm_dcb_sanitise(&priv->base);
 return 0;
}
