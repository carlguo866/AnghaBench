
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvc0_graph_priv {int dummy; } ;


 int nv_wr32 (struct nvc0_graph_priv*,int,int) ;

__attribute__((used)) static void
nve0_graph_generate_unk80xx(struct nvc0_graph_priv *priv)
{
 nv_wr32(priv, 0x408000, 0x0);
 nv_wr32(priv, 0x408004, 0x0);
 nv_wr32(priv, 0x408008, 0x30);
 nv_wr32(priv, 0x40800c, 0x0);
 nv_wr32(priv, 0x408010, 0x0);
 nv_wr32(priv, 0x408014, 0x69);
 nv_wr32(priv, 0x408018, 0xe100e100);
 nv_wr32(priv, 0x408064, 0x0);
}
