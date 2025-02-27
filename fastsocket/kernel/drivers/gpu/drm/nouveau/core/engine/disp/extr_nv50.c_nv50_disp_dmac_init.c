
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nv50_disp_priv {int dummy; } ;
struct TYPE_2__ {int chid; } ;
struct nv50_disp_dmac {int push; TYPE_1__ base; } ;
struct nouveau_object {scalar_t__ engine; } ;


 int EBUSY ;
 int nv50_disp_chan_init (TYPE_1__*) ;
 int nv_error (struct nv50_disp_dmac*,char*,int ) ;
 int nv_mask (struct nv50_disp_priv*,int,int,int) ;
 int nv_rd32 (struct nv50_disp_priv*,int) ;
 int nv_wait (struct nv50_disp_priv*,int,int,int) ;
 int nv_wr32 (struct nv50_disp_priv*,int,int) ;

__attribute__((used)) static int
nv50_disp_dmac_init(struct nouveau_object *object)
{
 struct nv50_disp_priv *priv = (void *)object->engine;
 struct nv50_disp_dmac *dmac = (void *)object;
 int chid = dmac->base.chid;
 int ret;

 ret = nv50_disp_chan_init(&dmac->base);
 if (ret)
  return ret;


 nv_mask(priv, 0x610028, 0x00010001 << chid, 0x00010001 << chid);


 nv_wr32(priv, 0x610204 + (chid * 0x0010), dmac->push);
 nv_wr32(priv, 0x610208 + (chid * 0x0010), 0x00010000);
 nv_wr32(priv, 0x61020c + (chid * 0x0010), chid);
 nv_mask(priv, 0x610200 + (chid * 0x0010), 0x00000010, 0x00000010);
 nv_wr32(priv, 0x640000 + (chid * 0x1000), 0x00000000);
 nv_wr32(priv, 0x610200 + (chid * 0x0010), 0x00000013);


 if (!nv_wait(priv, 0x610200 + (chid * 0x10), 0x80000000, 0x00000000)) {
  nv_error(dmac, "init timeout, 0x%08x\n",
    nv_rd32(priv, 0x610200 + (chid * 0x10)));
  return -EBUSY;
 }

 return 0;
}
