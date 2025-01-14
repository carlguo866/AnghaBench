
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tb_tunnel {struct tb_path** paths; struct tb_port* dst_port; struct tb_port* src_port; int activate; } ;
struct tb_port {int dummy; } ;
struct tb_path {int dummy; } ;
struct tb {int dummy; } ;


 size_t TB_DMA_PATH_IN ;
 size_t TB_DMA_PATH_OUT ;
 int TB_PATH_ALL ;
 int TB_PATH_INTERNAL ;
 int TB_PATH_NONE ;
 int TB_PATH_SOURCE ;
 int TB_TUNNEL_DMA ;
 int tb_dma_activate ;
 int tb_dma_credits (struct tb_port*) ;
 int tb_dma_init_path (struct tb_path*,int,int,int ) ;
 struct tb_path* tb_path_alloc (struct tb*,struct tb_port*,int,struct tb_port*,int,int ,char*) ;
 struct tb_tunnel* tb_tunnel_alloc (struct tb*,int,int ) ;
 int tb_tunnel_free (struct tb_tunnel*) ;

struct tb_tunnel *tb_tunnel_alloc_dma(struct tb *tb, struct tb_port *nhi,
          struct tb_port *dst, int transmit_ring,
          int transmit_path, int receive_ring,
          int receive_path)
{
 struct tb_tunnel *tunnel;
 struct tb_path *path;
 u32 credits;

 tunnel = tb_tunnel_alloc(tb, 2, TB_TUNNEL_DMA);
 if (!tunnel)
  return ((void*)0);

 tunnel->activate = tb_dma_activate;
 tunnel->src_port = nhi;
 tunnel->dst_port = dst;

 credits = tb_dma_credits(nhi);

 path = tb_path_alloc(tb, dst, receive_path, nhi, receive_ring, 0, "DMA RX");
 if (!path) {
  tb_tunnel_free(tunnel);
  return ((void*)0);
 }
 tb_dma_init_path(path, TB_PATH_NONE, TB_PATH_SOURCE | TB_PATH_INTERNAL,
    credits);
 tunnel->paths[TB_DMA_PATH_IN] = path;

 path = tb_path_alloc(tb, nhi, transmit_ring, dst, transmit_path, 0, "DMA TX");
 if (!path) {
  tb_tunnel_free(tunnel);
  return ((void*)0);
 }
 tb_dma_init_path(path, TB_PATH_SOURCE, TB_PATH_ALL, credits);
 tunnel->paths[TB_DMA_PATH_OUT] = path;

 return tunnel;
}
