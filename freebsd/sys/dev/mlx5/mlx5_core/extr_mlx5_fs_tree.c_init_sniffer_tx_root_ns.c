
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_core_dev {TYPE_1__* sniffer_tx_root_ns; } ;
struct fs_prio {int dummy; } ;
struct TYPE_2__ {int ns; } ;


 int ENOMEM ;
 int FS_FT_SNIFFER_TX ;
 scalar_t__ IS_ERR (struct fs_prio*) ;
 int MLX5_CORE_FS_SNIFFER_TX_ROOT_NS_NAME ;
 int PTR_ERR (struct fs_prio*) ;
 TYPE_1__* create_root_ns (struct mlx5_core_dev*,int ,int ) ;
 struct fs_prio* fs_create_prio (int *,int ,int,char*,int ) ;

__attribute__((used)) static int init_sniffer_tx_root_ns(struct mlx5_core_dev *dev)
{
 struct fs_prio *prio;

 dev->sniffer_tx_root_ns = create_root_ns(dev, FS_FT_SNIFFER_TX,
       MLX5_CORE_FS_SNIFFER_TX_ROOT_NS_NAME);
 if (!dev->sniffer_tx_root_ns)
  return -ENOMEM;


 prio = fs_create_prio(&dev->sniffer_tx_root_ns->ns, 0, 1,
         "sniffer_prio", 0);
 if (IS_ERR(prio))
  return PTR_ERR(prio);
 else
  return 0;
}
