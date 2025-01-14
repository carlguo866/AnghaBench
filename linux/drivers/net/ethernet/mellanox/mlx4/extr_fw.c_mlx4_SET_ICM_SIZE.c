
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlx4_dev {int dummy; } ;


 int ALIGN (int,int) ;
 int MLX4_CMD_NATIVE ;
 int MLX4_CMD_SET_ICM_SIZE ;
 int MLX4_CMD_TIME_CLASS_A ;
 int MLX4_ICM_PAGE_SHIFT ;
 int MLX4_ICM_PAGE_SIZE ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int mlx4_cmd_imm (struct mlx4_dev*,int,int*,int ,int ,int ,int ,int ) ;

int mlx4_SET_ICM_SIZE(struct mlx4_dev *dev, u64 icm_size, u64 *aux_pages)
{
 int ret = mlx4_cmd_imm(dev, icm_size, aux_pages, 0, 0,
          MLX4_CMD_SET_ICM_SIZE,
          MLX4_CMD_TIME_CLASS_A, MLX4_CMD_NATIVE);
 if (ret)
  return ret;





 *aux_pages = ALIGN(*aux_pages, PAGE_SIZE / MLX4_ICM_PAGE_SIZE) >>
  (PAGE_SHIFT - MLX4_ICM_PAGE_SHIFT);

 return 0;
}
