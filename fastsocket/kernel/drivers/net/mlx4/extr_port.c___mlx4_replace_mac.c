
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u64 ;
struct mlx4_mac_table {int mutex; scalar_t__* entries; } ;
struct mlx4_port_info {int base_qpn; struct mlx4_mac_table mac_table; } ;
struct mlx4_dev {int dummy; } ;
struct TYPE_2__ {struct mlx4_port_info* port; } ;


 int MLX4_MAC_VALID ;
 scalar_t__ cpu_to_be64 (int) ;
 int mlx4_err (struct mlx4_dev*,char*,unsigned long long) ;
 TYPE_1__* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_set_port_mac_table (struct mlx4_dev*,size_t,scalar_t__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int validate_index (struct mlx4_dev*,struct mlx4_mac_table*,int) ;

int __mlx4_replace_mac(struct mlx4_dev *dev, u8 port, int qpn, u64 new_mac)
{
 struct mlx4_port_info *info = &mlx4_priv(dev)->port[port];
 struct mlx4_mac_table *table = &info->mac_table;
 int index = qpn - info->base_qpn;
 int err = 0;


 mutex_lock(&table->mutex);

 err = validate_index(dev, table, index);
 if (err)
  goto out;

 table->entries[index] = cpu_to_be64(new_mac | MLX4_MAC_VALID);

 err = mlx4_set_port_mac_table(dev, port, table->entries);
 if (unlikely(err)) {
  mlx4_err(dev, "Failed adding MAC: 0x%llx\n",
    (unsigned long long) new_mac);
  table->entries[index] = 0;
 }
out:
 mutex_unlock(&table->mutex);
 return err;
}
