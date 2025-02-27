
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_en_rx_ring {int actual_size; scalar_t__ mbuf; int prod; } ;
struct mlx4_en_priv {int rx_ring_num; struct mlx4_en_rx_ring** rx_ring; TYPE_1__* prof; } ;
struct TYPE_2__ {int rx_ring_size; } ;


 int ENOMEM ;
 int en_err (struct mlx4_en_priv*,char*) ;
 int en_warn (struct mlx4_en_priv*,char*,int,int) ;
 int mlx4_en_free_buf (struct mlx4_en_rx_ring*,scalar_t__) ;
 int mlx4_en_prepare_rx_desc (struct mlx4_en_priv*,struct mlx4_en_rx_ring*,int) ;
 int rounddown_pow_of_two (int) ;

__attribute__((used)) static int mlx4_en_fill_rx_buffers(struct mlx4_en_priv *priv)
{
 struct mlx4_en_rx_ring *ring;
 int ring_ind;
 int buf_ind;
 int new_size;
 int err;

 for (buf_ind = 0; buf_ind < priv->prof->rx_ring_size; buf_ind++) {
  for (ring_ind = 0; ring_ind < priv->rx_ring_num; ring_ind++) {
   ring = priv->rx_ring[ring_ind];

   err = mlx4_en_prepare_rx_desc(priv, ring,
            ring->actual_size);
   if (err) {
    if (ring->actual_size == 0) {
     en_err(priv, "Failed to allocate "
           "enough rx buffers\n");
     return -ENOMEM;
    } else {
     new_size =
      rounddown_pow_of_two(ring->actual_size);
     en_warn(priv, "Only %d buffers allocated "
            "reducing ring size to %d\n",
      ring->actual_size, new_size);
     goto reduce_rings;
    }
   }
   ring->actual_size++;
   ring->prod++;
  }
 }
 return 0;

reduce_rings:
 for (ring_ind = 0; ring_ind < priv->rx_ring_num; ring_ind++) {
  ring = priv->rx_ring[ring_ind];
  while (ring->actual_size > new_size) {
   ring->actual_size--;
   ring->prod--;
   mlx4_en_free_buf(ring,
       ring->mbuf + ring->actual_size);
  }
 }

 return 0;
}
