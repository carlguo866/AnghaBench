
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct gve_rx_ring {size_t ntfy_id; } ;
struct gve_priv {struct gve_rx_ring* rx; struct gve_notify_block* ntfy_blocks; } ;
struct gve_notify_block {struct gve_rx_ring* rx; } ;


 size_t gve_rx_idx_to_ntfy (struct gve_priv*,int) ;

__attribute__((used)) static void gve_rx_add_to_block(struct gve_priv *priv, int queue_idx)
{
 u32 ntfy_idx = gve_rx_idx_to_ntfy(priv, queue_idx);
 struct gve_notify_block *block = &priv->ntfy_blocks[ntfy_idx];
 struct gve_rx_ring *rx = &priv->rx[queue_idx];

 block->rx = rx;
 rx->ntfy_id = ntfy_idx;
}
