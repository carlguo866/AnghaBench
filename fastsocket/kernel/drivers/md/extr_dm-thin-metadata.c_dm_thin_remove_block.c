
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_thin_device {TYPE_1__* pmd; } ;
typedef int dm_block_t ;
struct TYPE_2__ {int root_lock; int fail_io; } ;


 int EINVAL ;
 int __remove (struct dm_thin_device*,int ) ;
 int down_write (int *) ;
 int up_write (int *) ;

int dm_thin_remove_block(struct dm_thin_device *td, dm_block_t block)
{
 int r = -EINVAL;

 down_write(&td->pmd->root_lock);
 if (!td->pmd->fail_io)
  r = __remove(td, block);
 up_write(&td->pmd->root_lock);

 return r;
}
