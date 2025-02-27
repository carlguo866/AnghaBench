
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct mlx4_en_tx_ring {int cons; int last_nr_txbb; int prod; scalar_t__ size; int (* free_tx_desc ) (struct mlx4_en_priv*,struct mlx4_en_tx_ring*,int,int ,int ) ;int size_mask; scalar_t__ tx_queue; } ;
struct mlx4_en_priv {int dummy; } ;


 int DRV ;
 int en_dbg (int ,struct mlx4_en_priv*,char*,int,...) ;
 int en_warn (struct mlx4_en_priv*,char*) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;
 int netdev_tx_reset_queue (scalar_t__) ;
 scalar_t__ netif_msg_tx_err (struct mlx4_en_priv*) ;
 int stub1 (struct mlx4_en_priv*,struct mlx4_en_tx_ring*,int,int ,int ) ;

int mlx4_en_free_tx_buf(struct net_device *dev, struct mlx4_en_tx_ring *ring)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 int cnt = 0;


 ring->cons += ring->last_nr_txbb;
 en_dbg(DRV, priv, "Freeing Tx buf - cons:0x%x prod:0x%x\n",
   ring->cons, ring->prod);

 if ((u32) (ring->prod - ring->cons) > ring->size) {
  if (netif_msg_tx_err(priv))
   en_warn(priv, "Tx consumer passed producer!\n");
  return 0;
 }

 while (ring->cons != ring->prod) {
  ring->last_nr_txbb = ring->free_tx_desc(priv, ring,
      ring->cons & ring->size_mask,
      0, 0 );
  ring->cons += ring->last_nr_txbb;
  cnt++;
 }

 if (ring->tx_queue)
  netdev_tx_reset_queue(ring->tx_queue);

 if (cnt)
  en_dbg(DRV, priv, "Freed %d uncompleted tx descriptors\n", cnt);

 return cnt;
}
