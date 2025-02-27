
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct pr_ops {int (* pr_release ) (struct block_device*,int ,int) ;} ;
struct mapped_device {int dummy; } ;
struct block_device {TYPE_1__* bd_disk; } ;
typedef enum pr_type { ____Placeholder_pr_type } pr_type ;
struct TYPE_4__ {struct pr_ops* pr_ops; } ;
struct TYPE_3__ {TYPE_2__* fops; struct mapped_device* private_data; } ;


 int EOPNOTSUPP ;
 int dm_prepare_ioctl (struct mapped_device*,int*,struct block_device**) ;
 int dm_unprepare_ioctl (struct mapped_device*,int) ;
 int stub1 (struct block_device*,int ,int) ;

__attribute__((used)) static int dm_pr_release(struct block_device *bdev, u64 key, enum pr_type type)
{
 struct mapped_device *md = bdev->bd_disk->private_data;
 const struct pr_ops *ops;
 int r, srcu_idx;

 r = dm_prepare_ioctl(md, &srcu_idx, &bdev);
 if (r < 0)
  goto out;

 ops = bdev->bd_disk->fops->pr_ops;
 if (ops && ops->pr_release)
  r = ops->pr_release(bdev, key, type);
 else
  r = -EOPNOTSUPP;
out:
 dm_unprepare_ioctl(md, srcu_idx);
 return r;
}
