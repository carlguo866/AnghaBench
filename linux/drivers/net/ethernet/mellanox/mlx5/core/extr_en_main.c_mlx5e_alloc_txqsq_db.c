
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* wqe_info; void* dma_fifo; } ;
struct mlx5e_txqsq {int dma_fifo_mask; TYPE_1__ db; int wq; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MLX5_SEND_WQEBB_NUM_DS ;
 int array_size (int,int) ;
 void* kvzalloc_node (int ,int ,int) ;
 int mlx5_wq_cyc_get_size (int *) ;
 int mlx5e_free_txqsq_db (struct mlx5e_txqsq*) ;

__attribute__((used)) static int mlx5e_alloc_txqsq_db(struct mlx5e_txqsq *sq, int numa)
{
 int wq_sz = mlx5_wq_cyc_get_size(&sq->wq);
 int df_sz = wq_sz * MLX5_SEND_WQEBB_NUM_DS;

 sq->db.dma_fifo = kvzalloc_node(array_size(df_sz,
         sizeof(*sq->db.dma_fifo)),
     GFP_KERNEL, numa);
 sq->db.wqe_info = kvzalloc_node(array_size(wq_sz,
         sizeof(*sq->db.wqe_info)),
     GFP_KERNEL, numa);
 if (!sq->db.dma_fifo || !sq->db.wqe_info) {
  mlx5e_free_txqsq_db(sq);
  return -ENOMEM;
 }

 sq->dma_fifo_mask = df_sz - 1;

 return 0;
}
