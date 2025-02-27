
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct pr_ops {int (* pr_clear ) (struct block_device*,int ) ;} ;
struct mapped_device {int dummy; } ;
struct block_device {TYPE_2__* bd_disk; } ;
struct TYPE_4__ {TYPE_1__* fops; struct mapped_device* private_data; } ;
struct TYPE_3__ {struct pr_ops* pr_ops; } ;


 int EOPNOTSUPP ;
 int dm_prepare_ioctl (struct mapped_device*,int*,struct block_device**) ;
 int dm_unprepare_ioctl (struct mapped_device*,int) ;
 int stub1 (struct block_device*,int ) ;

__attribute__((used)) static int dm_pr_clear(struct block_device *bdev, u64 key)
{
 struct mapped_device *md = bdev->bd_disk->private_data;
 const struct pr_ops *ops;
 int r, srcu_idx;

 r = dm_prepare_ioctl(md, &srcu_idx, &bdev);
 if (r < 0)
  goto out;

 ops = bdev->bd_disk->fops->pr_ops;
 if (ops && ops->pr_clear)
  r = ops->pr_clear(bdev, key);
 else
  r = -EOPNOTSUPP;
out:
 dm_unprepare_ioctl(md, srcu_idx);
 return r;
}
