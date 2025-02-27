
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdev_link {int buffer_size; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int kstrtou16 (char const*,int ,int *) ;
 struct mdev_link* to_mdev_link (struct config_item*) ;

__attribute__((used)) static ssize_t mdev_link_buffer_size_store(struct config_item *item,
        const char *page, size_t count)
{
 struct mdev_link *mdev_link = to_mdev_link(item);
 int ret;

 ret = kstrtou16(page, 0, &mdev_link->buffer_size);
 if (ret)
  return ret;
 return count;
}
