
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_eeprom {int len; int device_addr; int page_valid; scalar_t__ data; int module_num; int page_num; int i2c_addr; } ;
struct mlx5_core_dev {int dummy; } ;


 int EINVAL ;
 int MLX5_EEPROM_HIGH_PAGE ;
 int MLX5_EEPROM_HIGH_PAGE_OFFSET ;
 int MLX5_EEPROM_PAGE_LENGTH ;
 int mlx5_core_err (struct mlx5_core_dev*,char*,int) ;
 int mlx5_query_eeprom (struct mlx5_core_dev*,int ,int ,int,int,int ,scalar_t__,int*) ;

int
mlx5_get_eeprom(struct mlx5_core_dev *dev, struct mlx5_eeprom *ee)
{
 int size_read = 0;
 int ret;

 if (ee->len == 0)
  return (EINVAL);


 while (ee->device_addr < ee->len) {
  ret = mlx5_query_eeprom(dev, ee->i2c_addr, ee->page_num, ee->device_addr,
      ee->len - ee->device_addr, ee->module_num,
      ee->data + (ee->device_addr / 4), &size_read);
  if (ret) {
   mlx5_core_err(dev,
       "Failed reading EEPROM, error = 0x%02x\n", ret);
   return (-ret);
  }
  ee->device_addr += size_read;
 }


 if (ee->page_valid == 1) {
  ee->device_addr = MLX5_EEPROM_HIGH_PAGE_OFFSET;
  ee->page_num = MLX5_EEPROM_HIGH_PAGE;
  size_read = 0;
  while (ee->device_addr < MLX5_EEPROM_PAGE_LENGTH) {
   ret = mlx5_query_eeprom(dev, ee->i2c_addr, ee->page_num,
       ee->device_addr, MLX5_EEPROM_PAGE_LENGTH - ee->device_addr,
       ee->module_num, ee->data + (ee->len / 4) +
       ((ee->device_addr - MLX5_EEPROM_HIGH_PAGE_OFFSET) / 4),
       &size_read);
   if (ret) {
    mlx5_core_err(dev,
        "Failed reading EEPROM, error = 0x%02x\n",
        ret);
    return (-ret);
   }
   ee->device_addr += size_read;
  }
 }
 return (0);
}
