
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;


 struct list_head* btrfs_get_workspace (int *,unsigned int) ;
 int wsm ;

__attribute__((used)) static struct list_head *lzo_get_workspace(unsigned int level)
{
 return btrfs_get_workspace(&wsm, level);
}
