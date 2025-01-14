
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {uintptr_t addr; int length; scalar_t__ lkey; } ;
struct postsend_info {int rkey; int remote_addr; TYPE_1__ write; } ;
struct mlx5dr_ste_htbl {int* hw_ste_arr; int ste_arr; TYPE_2__* chunk; } ;
struct mlx5dr_domain {int dummy; } ;
struct TYPE_4__ {int byte_size; int rkey; } ;


 int DR_STE_SIZE ;
 int DR_STE_SIZE_REDUCED ;
 int dr_get_tbl_copy_details (struct mlx5dr_domain*,struct mlx5dr_ste_htbl*,int**,int*,int*,int*) ;
 int dr_postsend_icm_data (struct mlx5dr_domain*,struct postsend_info*) ;
 int kfree (int*) ;
 int memcpy (int*,int*,int) ;
 int mlx5dr_ste_get_mr_addr (int) ;

int mlx5dr_send_postsend_formatted_htbl(struct mlx5dr_domain *dmn,
     struct mlx5dr_ste_htbl *htbl,
     u8 *ste_init_data,
     bool update_hw_ste)
{
 u32 byte_size = htbl->chunk->byte_size;
 int iterations;
 int num_stes;
 u8 *data;
 int ret;
 int i;

 ret = dr_get_tbl_copy_details(dmn, htbl, &data, &byte_size,
          &iterations, &num_stes);
 if (ret)
  return ret;

 for (i = 0; i < num_stes; i++) {
  u8 *copy_dst;


  copy_dst = data + i * DR_STE_SIZE;
  memcpy(copy_dst, ste_init_data, DR_STE_SIZE);

  if (update_hw_ste) {

   copy_dst = htbl->hw_ste_arr + i * DR_STE_SIZE_REDUCED;
   memcpy(copy_dst, ste_init_data, DR_STE_SIZE_REDUCED);
  }
 }


 for (i = 0; i < iterations; i++) {
  u8 ste_index = i * (byte_size / DR_STE_SIZE);
  struct postsend_info send_info = {};

  send_info.write.addr = (uintptr_t)data;
  send_info.write.length = byte_size;
  send_info.write.lkey = 0;
  send_info.remote_addr =
   mlx5dr_ste_get_mr_addr(htbl->ste_arr + ste_index);
  send_info.rkey = htbl->chunk->rkey;

  ret = dr_postsend_icm_data(dmn, &send_info);
  if (ret)
   goto out_free;
 }

out_free:
 kfree(data);
 return ret;
}
