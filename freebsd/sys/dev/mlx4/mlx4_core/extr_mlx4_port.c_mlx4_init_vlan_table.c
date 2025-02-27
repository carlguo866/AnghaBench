
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_vlan_table {int* is_dup; scalar_t__ total; scalar_t__ max; scalar_t__* refs; scalar_t__* entries; int mutex; } ;
struct TYPE_2__ {int log_num_vlans; } ;
struct mlx4_dev {TYPE_1__ caps; } ;


 int MLX4_MAX_VLAN_NUM ;
 scalar_t__ MLX4_VLAN_REGULAR ;
 int mutex_init (int *) ;

void mlx4_init_vlan_table(struct mlx4_dev *dev, struct mlx4_vlan_table *table)
{
 int i;

 mutex_init(&table->mutex);
 for (i = 0; i < MLX4_MAX_VLAN_NUM; i++) {
  table->entries[i] = 0;
  table->refs[i] = 0;
  table->is_dup[i] = 0;
 }
 table->max = (1 << dev->caps.log_num_vlans) - MLX4_VLAN_REGULAR;
 table->total = 0;
}
