
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlx4_dev {int dummy; } ;


 int EINVAL ;
 int RES_COUNTER ;
 int RES_OP_RESERVE ;
 int __mlx4_counter_free (struct mlx4_dev*,int) ;
 int get_param_l (int *) ;
 int rem_res_range (struct mlx4_dev*,int,int,int,int ,int ) ;

__attribute__((used)) static int counter_free_res(struct mlx4_dev *dev, int slave, int op, int cmd,
       u64 in_param, u64 *out_param)
{
 int index;
 int err;

 if (op != RES_OP_RESERVE)
  return -EINVAL;

 index = get_param_l(&in_param);
 err = rem_res_range(dev, slave, index, 1, RES_COUNTER, 0);
 if (err)
  return err;

 __mlx4_counter_free(dev, index);

 return err;
}
