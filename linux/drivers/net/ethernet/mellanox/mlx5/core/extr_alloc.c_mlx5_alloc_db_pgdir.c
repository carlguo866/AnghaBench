
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_db_pgdir {int bitmap; int db_page; int db_dma; } ;
struct mlx5_core_dev {int dummy; } ;


 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int bitmap_fill (int ,int) ;
 int bitmap_free (int ) ;
 int bitmap_zalloc (int,int ) ;
 int cache_line_size () ;
 int kfree (struct mlx5_db_pgdir*) ;
 struct mlx5_db_pgdir* kzalloc (int,int ) ;
 int mlx5_dma_zalloc_coherent_node (struct mlx5_core_dev*,int,int *,int) ;

__attribute__((used)) static struct mlx5_db_pgdir *mlx5_alloc_db_pgdir(struct mlx5_core_dev *dev,
       int node)
{
 u32 db_per_page = PAGE_SIZE / cache_line_size();
 struct mlx5_db_pgdir *pgdir;

 pgdir = kzalloc(sizeof(*pgdir), GFP_KERNEL);
 if (!pgdir)
  return ((void*)0);

 pgdir->bitmap = bitmap_zalloc(db_per_page, GFP_KERNEL);
 if (!pgdir->bitmap) {
  kfree(pgdir);
  return ((void*)0);
 }

 bitmap_fill(pgdir->bitmap, db_per_page);

 pgdir->db_page = mlx5_dma_zalloc_coherent_node(dev, PAGE_SIZE,
             &pgdir->db_dma, node);
 if (!pgdir->db_page) {
  bitmap_free(pgdir->bitmap);
  kfree(pgdir);
  return ((void*)0);
 }

 return pgdir;
}
