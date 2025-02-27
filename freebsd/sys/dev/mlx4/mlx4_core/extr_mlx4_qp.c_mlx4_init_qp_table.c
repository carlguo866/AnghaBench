
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct mlx4_qp_table {int lock; } ;
struct TYPE_5__ {int dmfs_high_rate_qpn_base; int dmfs_high_rate_qpn_range; scalar_t__* reserved_qps_cnt; int num_qps; int* reserved_qps_base; int num_ports; scalar_t__* qp1_proxy; scalar_t__* qp1_tunnel; scalar_t__* qp0_proxy; scalar_t__* qp0_tunnel; } ;
struct TYPE_4__ {scalar_t__ base_sqpn; scalar_t__ base_proxy_sqpn; scalar_t__ base_tunnel_sqpn; } ;
struct mlx4_dev {TYPE_2__ caps; TYPE_1__ phys_caps; int qp_table_tree; } ;
struct TYPE_6__ {struct mlx4_qp_table qp_table; } ;


 scalar_t__ ALIGN (int,int) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int INIT_RADIX_TREE (int *,int ) ;
 scalar_t__ MLX4_MAX_PORTS ;
 int MLX4_MFUNC_MAX ;
 int MLX4_NUM_QP_REGION ;
 int MLX4_QP_REGION_BOTTOM ;
 void* kcalloc (int,int,int ) ;
 int kfree (scalar_t__*) ;
 int mlx4_CONF_SPECIAL_QP (struct mlx4_dev*,scalar_t__) ;
 int mlx4_cleanup_qp_zones (struct mlx4_dev*) ;
 int mlx4_create_zones (struct mlx4_dev*,int,int,int,int,int) ;
 int mlx4_err (struct mlx4_dev*,char*) ;
 scalar_t__ mlx4_is_mfunc (struct mlx4_dev*) ;
 scalar_t__ mlx4_is_slave (struct mlx4_dev*) ;
 int mlx4_master_func_num (struct mlx4_dev*) ;
 int mlx4_num_reserved_sqps (struct mlx4_dev*) ;
 TYPE_3__* mlx4_priv (struct mlx4_dev*) ;
 int roundup_pow_of_two (int) ;
 int spin_lock_init (int *) ;
 int swap (int,int) ;

int mlx4_init_qp_table(struct mlx4_dev *dev)
{
 struct mlx4_qp_table *qp_table = &mlx4_priv(dev)->qp_table;
 int err;
 int reserved_from_top = 0;
 int reserved_from_bot;
 int k;
 int fixed_reserved_from_bot_rv = 0;
 int bottom_reserved_for_rss_bitmap;
 u32 max_table_offset = dev->caps.dmfs_high_rate_qpn_base +
   dev->caps.dmfs_high_rate_qpn_range;

 spin_lock_init(&qp_table->lock);
 INIT_RADIX_TREE(&dev->qp_table_tree, GFP_ATOMIC);
 if (mlx4_is_slave(dev))
  return 0;
 for (k = 0; k <= MLX4_QP_REGION_BOTTOM; k++)
  fixed_reserved_from_bot_rv += dev->caps.reserved_qps_cnt[k];

 if (fixed_reserved_from_bot_rv < max_table_offset)
  fixed_reserved_from_bot_rv = max_table_offset;


 bottom_reserved_for_rss_bitmap =
  roundup_pow_of_two(fixed_reserved_from_bot_rv + 1);
 dev->phys_caps.base_sqpn = ALIGN(bottom_reserved_for_rss_bitmap, 8);

 {
  int sort[MLX4_NUM_QP_REGION];
  int i, j;
  int last_base = dev->caps.num_qps;

  for (i = 1; i < MLX4_NUM_QP_REGION; ++i)
   sort[i] = i;

  for (i = MLX4_NUM_QP_REGION; i > MLX4_QP_REGION_BOTTOM; --i) {
   for (j = MLX4_QP_REGION_BOTTOM + 2; j < i; ++j) {
    if (dev->caps.reserved_qps_cnt[sort[j]] >
        dev->caps.reserved_qps_cnt[sort[j - 1]])
     swap(sort[j], sort[j - 1]);
   }
  }

  for (i = MLX4_QP_REGION_BOTTOM + 1; i < MLX4_NUM_QP_REGION; ++i) {
   last_base -= dev->caps.reserved_qps_cnt[sort[i]];
   dev->caps.reserved_qps_base[sort[i]] = last_base;
   reserved_from_top +=
    dev->caps.reserved_qps_cnt[sort[i]];
  }
 }
 reserved_from_bot = mlx4_num_reserved_sqps(dev);
 if (reserved_from_bot + reserved_from_top > dev->caps.num_qps) {
  mlx4_err(dev, "Number of reserved QPs is higher than number of QPs\n");
  return -EINVAL;
 }

 err = mlx4_create_zones(dev, reserved_from_bot, reserved_from_bot,
    bottom_reserved_for_rss_bitmap,
    fixed_reserved_from_bot_rv,
    max_table_offset);

 if (err)
  return err;

 if (mlx4_is_mfunc(dev)) {

  dev->phys_caps.base_proxy_sqpn = dev->phys_caps.base_sqpn + 8;
  dev->phys_caps.base_tunnel_sqpn = dev->phys_caps.base_sqpn + 8 + 8 * MLX4_MFUNC_MAX;



  dev->caps.qp0_tunnel = kcalloc(dev->caps.num_ports, sizeof (u32), GFP_KERNEL);
  dev->caps.qp0_proxy = kcalloc(dev->caps.num_ports, sizeof (u32), GFP_KERNEL);
  dev->caps.qp1_tunnel = kcalloc(dev->caps.num_ports, sizeof (u32), GFP_KERNEL);
  dev->caps.qp1_proxy = kcalloc(dev->caps.num_ports, sizeof (u32), GFP_KERNEL);

  if (!dev->caps.qp0_tunnel || !dev->caps.qp0_proxy ||
      !dev->caps.qp1_tunnel || !dev->caps.qp1_proxy) {
   err = -ENOMEM;
   goto err_mem;
  }

  for (k = 0; k < dev->caps.num_ports; k++) {
   dev->caps.qp0_proxy[k] = dev->phys_caps.base_proxy_sqpn +
    8 * mlx4_master_func_num(dev) + k;
   dev->caps.qp0_tunnel[k] = dev->caps.qp0_proxy[k] + 8 * MLX4_MFUNC_MAX;
   dev->caps.qp1_proxy[k] = dev->phys_caps.base_proxy_sqpn +
    8 * mlx4_master_func_num(dev) + MLX4_MAX_PORTS + k;
   dev->caps.qp1_tunnel[k] = dev->caps.qp1_proxy[k] + 8 * MLX4_MFUNC_MAX;
  }
 }


 err = mlx4_CONF_SPECIAL_QP(dev, dev->phys_caps.base_sqpn);
 if (err)
  goto err_mem;

 return err;

err_mem:
 kfree(dev->caps.qp0_tunnel);
 kfree(dev->caps.qp0_proxy);
 kfree(dev->caps.qp1_tunnel);
 kfree(dev->caps.qp1_proxy);
 dev->caps.qp0_tunnel = dev->caps.qp0_proxy =
  dev->caps.qp1_tunnel = dev->caps.qp1_proxy = ((void*)0);
 mlx4_cleanup_qp_zones(dev);
 return err;
}
