
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nv50_disp_priv {int dummy; } ;


 int nv_error (struct nv50_disp_priv*,char*,int,int,int,int) ;
 int nv_rd32 (struct nv50_disp_priv*,int) ;
 int nv_wr32 (struct nv50_disp_priv*,int,int) ;

__attribute__((used)) static void
nv50_disp_intr_error(struct nv50_disp_priv *priv)
{
 u32 channels = (nv_rd32(priv, 0x610020) & 0x001f0000) >> 16;
 u32 addr, data;
 int chid;

 for (chid = 0; chid < 5; chid++) {
  if (!(channels & (1 << chid)))
   continue;

  nv_wr32(priv, 0x610020, 0x00010000 << chid);
  addr = nv_rd32(priv, 0x610080 + (chid * 0x08));
  data = nv_rd32(priv, 0x610084 + (chid * 0x08));
  nv_wr32(priv, 0x610080 + (chid * 0x08), 0x90000000);

  nv_error(priv, "chid %d mthd 0x%04x data 0x%08x 0x%08x\n",
    chid, addr & 0xffc, data, addr);
 }
}
