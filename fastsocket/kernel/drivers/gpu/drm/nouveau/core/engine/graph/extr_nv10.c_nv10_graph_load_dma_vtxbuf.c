
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nv10_graph_priv {int dummy; } ;
struct nv10_graph_chan {int dummy; } ;


 int ARRAY_SIZE (int*) ;
 int NV04_PGRAPH_FIFO ;
 int NV10_PGRAPH_CTX_CACHE (int,int) ;
 int NV10_PGRAPH_CTX_CONTROL ;
 int NV10_PGRAPH_CTX_SWITCH (int) ;
 int NV10_PGRAPH_CTX_USER ;
 int NV10_PGRAPH_FFINTFC_FIFO_PTR ;
 int NV10_PGRAPH_FFINTFC_ST2 ;
 int NV10_PGRAPH_FFINTFC_ST2_DH ;
 int NV10_PGRAPH_FFINTFC_ST2_DL ;
 struct nv10_graph_priv* nv10_graph_priv (struct nv10_graph_chan*) ;
 int nv_mask (struct nv10_graph_priv*,int,int,int) ;
 int nv_rd32 (struct nv10_graph_priv*,int) ;
 int nv_wr32 (struct nv10_graph_priv*,int,int) ;

__attribute__((used)) static void
nv10_graph_load_dma_vtxbuf(struct nv10_graph_chan *chan, int chid, u32 inst)
{
 struct nv10_graph_priv *priv = nv10_graph_priv(chan);
 u32 st2, st2_dl, st2_dh, fifo_ptr, fifo[0x60/4];
 u32 ctx_user, ctx_switch[5];
 int i, subchan = -1;







 for (i = 0; i < 8; i++) {
  int class = nv_rd32(priv, NV10_PGRAPH_CTX_CACHE(i, 0)) & 0xfff;

  if (class == 0x56 || class == 0x96 || class == 0x99) {
   subchan = i;
   break;
  }
 }

 if (subchan < 0 || !inst)
  return;


 ctx_user = nv_rd32(priv, NV10_PGRAPH_CTX_USER);
 for (i = 0; i < 5; i++)
  ctx_switch[i] = nv_rd32(priv, NV10_PGRAPH_CTX_SWITCH(i));


 st2 = nv_rd32(priv, NV10_PGRAPH_FFINTFC_ST2);
 st2_dl = nv_rd32(priv, NV10_PGRAPH_FFINTFC_ST2_DL);
 st2_dh = nv_rd32(priv, NV10_PGRAPH_FFINTFC_ST2_DH);
 fifo_ptr = nv_rd32(priv, NV10_PGRAPH_FFINTFC_FIFO_PTR);

 for (i = 0; i < ARRAY_SIZE(fifo); i++)
  fifo[i] = nv_rd32(priv, 0x4007a0 + 4 * i);


 for (i = 0; i < 5; i++)
  nv_wr32(priv, NV10_PGRAPH_CTX_SWITCH(i),
   nv_rd32(priv, NV10_PGRAPH_CTX_CACHE(subchan, i)));
 nv_mask(priv, NV10_PGRAPH_CTX_USER, 0xe000, subchan << 13);


 nv_wr32(priv, NV10_PGRAPH_FFINTFC_FIFO_PTR, 0);
 nv_wr32(priv, NV10_PGRAPH_FFINTFC_ST2,
  0x2c000000 | chid << 20 | subchan << 16 | 0x18c);
 nv_wr32(priv, NV10_PGRAPH_FFINTFC_ST2_DL, inst);
 nv_mask(priv, NV10_PGRAPH_CTX_CONTROL, 0, 0x10000);
 nv_mask(priv, NV04_PGRAPH_FIFO, 0x00000001, 0x00000001);
 nv_mask(priv, NV04_PGRAPH_FIFO, 0x00000001, 0x00000000);


 for (i = 0; i < ARRAY_SIZE(fifo); i++)
  nv_wr32(priv, 0x4007a0 + 4 * i, fifo[i]);

 nv_wr32(priv, NV10_PGRAPH_FFINTFC_FIFO_PTR, fifo_ptr);
 nv_wr32(priv, NV10_PGRAPH_FFINTFC_ST2, st2);
 nv_wr32(priv, NV10_PGRAPH_FFINTFC_ST2_DL, st2_dl);
 nv_wr32(priv, NV10_PGRAPH_FFINTFC_ST2_DH, st2_dh);


 for (i = 0; i < 5; i++)
  nv_wr32(priv, NV10_PGRAPH_CTX_SWITCH(i), ctx_switch[i]);
 nv_wr32(priv, NV10_PGRAPH_CTX_USER, ctx_user);
}
