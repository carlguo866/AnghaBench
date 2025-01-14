
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mlx5dr_ste_htbl {int chunk_size; int * miss_list; scalar_t__ hw_ste_arr; struct mlx5dr_ste* ste_arr; int refcount; int byte_mask; int lu_type; struct mlx5dr_icm_chunk* chunk; } ;
struct mlx5dr_ste {int rule_list; int miss_list_node; int refcount; struct mlx5dr_ste_htbl* htbl; scalar_t__ hw_ste; } ;
struct mlx5dr_icm_pool {int dummy; } ;
struct mlx5dr_icm_chunk {int num_of_entries; int * miss_list; scalar_t__ hw_ste_arr; struct mlx5dr_ste* ste_arr; } ;
typedef enum mlx5dr_icm_chunk_size { ____Placeholder_mlx5dr_icm_chunk_size } mlx5dr_icm_chunk_size ;


 int DR_STE_SIZE_REDUCED ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int dr_ste_set_ctrl (struct mlx5dr_ste_htbl*) ;
 int kfree (struct mlx5dr_ste_htbl*) ;
 struct mlx5dr_ste_htbl* kzalloc (int,int ) ;
 struct mlx5dr_icm_chunk* mlx5dr_icm_alloc_chunk (struct mlx5dr_icm_pool*,int) ;
 int refcount_set (int *,int ) ;

struct mlx5dr_ste_htbl *mlx5dr_ste_htbl_alloc(struct mlx5dr_icm_pool *pool,
           enum mlx5dr_icm_chunk_size chunk_size,
           u8 lu_type, u16 byte_mask)
{
 struct mlx5dr_icm_chunk *chunk;
 struct mlx5dr_ste_htbl *htbl;
 int i;

 htbl = kzalloc(sizeof(*htbl), GFP_KERNEL);
 if (!htbl)
  return ((void*)0);

 chunk = mlx5dr_icm_alloc_chunk(pool, chunk_size);
 if (!chunk)
  goto out_free_htbl;

 htbl->chunk = chunk;
 htbl->lu_type = lu_type;
 htbl->byte_mask = byte_mask;
 htbl->ste_arr = chunk->ste_arr;
 htbl->hw_ste_arr = chunk->hw_ste_arr;
 htbl->miss_list = chunk->miss_list;
 refcount_set(&htbl->refcount, 0);

 for (i = 0; i < chunk->num_of_entries; i++) {
  struct mlx5dr_ste *ste = &htbl->ste_arr[i];

  ste->hw_ste = htbl->hw_ste_arr + i * DR_STE_SIZE_REDUCED;
  ste->htbl = htbl;
  refcount_set(&ste->refcount, 0);
  INIT_LIST_HEAD(&ste->miss_list_node);
  INIT_LIST_HEAD(&htbl->miss_list[i]);
  INIT_LIST_HEAD(&ste->rule_list);
 }

 htbl->chunk_size = chunk_size;
 dr_ste_set_ctrl(htbl);
 return htbl;

out_free_htbl:
 kfree(htbl);
 return ((void*)0);
}
