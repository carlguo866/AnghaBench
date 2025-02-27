
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5e_modify_sq_param {scalar_t__ curr_state; scalar_t__ next_state; scalar_t__ rl_index; scalar_t__ rl_update; } ;
struct mlx5_core_dev {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* MLX5_ADDR_OF (void*,void*,int ) ;
 int MLX5_SET (void*,void*,int ,scalar_t__) ;
 int MLX5_SET64 (void*,void*,int ,int) ;
 scalar_t__ MLX5_SQC_STATE_RDY ;
 int MLX5_ST_SZ_BYTES (void*) ;
 int ctx ;
 int kvfree (void*) ;
 void* kvzalloc (int,int ) ;
 int mlx5_core_modify_sq (struct mlx5_core_dev*,int ,void*,int) ;
 int modify_bitmask ;
 void* modify_sq_in ;
 int packet_pacing_rate_limit_index ;
 int sq_state ;
 int state ;

int mlx5e_modify_sq(struct mlx5_core_dev *mdev, u32 sqn,
      struct mlx5e_modify_sq_param *p)
{
 void *in;
 void *sqc;
 int inlen;
 int err;

 inlen = MLX5_ST_SZ_BYTES(modify_sq_in);
 in = kvzalloc(inlen, GFP_KERNEL);
 if (!in)
  return -ENOMEM;

 sqc = MLX5_ADDR_OF(modify_sq_in, in, ctx);

 MLX5_SET(modify_sq_in, in, sq_state, p->curr_state);
 MLX5_SET(sqc, sqc, state, p->next_state);
 if (p->rl_update && p->next_state == MLX5_SQC_STATE_RDY) {
  MLX5_SET64(modify_sq_in, in, modify_bitmask, 1);
  MLX5_SET(sqc, sqc, packet_pacing_rate_limit_index, p->rl_index);
 }

 err = mlx5_core_modify_sq(mdev, sqn, in, inlen);

 kvfree(in);

 return err;
}
