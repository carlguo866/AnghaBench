
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_en_tx_ring {int recycle_ring; int free_tx_desc; } ;
struct mlx4_en_priv {int * rx_ring; struct mlx4_en_tx_ring*** tx_ring; } ;


 int DRV ;
 size_t TX_XDP ;
 int en_dbg (int ,struct mlx4_en_priv*,char*,size_t,int,int) ;
 int mlx4_en_recycle_tx_desc ;

__attribute__((used)) static void mlx4_en_init_recycle_ring(struct mlx4_en_priv *priv,
          int tx_ring_idx)
{
 struct mlx4_en_tx_ring *tx_ring = priv->tx_ring[TX_XDP][tx_ring_idx];
 int rr_index = tx_ring_idx;

 tx_ring->free_tx_desc = mlx4_en_recycle_tx_desc;
 tx_ring->recycle_ring = priv->rx_ring[rr_index];
 en_dbg(DRV, priv, "Set tx_ring[%d][%d]->recycle_ring = rx_ring[%d]\n",
        TX_XDP, tx_ring_idx, rr_index);
}
