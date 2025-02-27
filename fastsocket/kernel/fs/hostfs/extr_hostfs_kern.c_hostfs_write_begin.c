
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct file {int dummy; } ;
struct address_space {int dummy; } ;
typedef int pgoff_t ;
typedef int loff_t ;


 int ENOMEM ;
 int PAGE_CACHE_SHIFT ;
 struct page* grab_cache_page_write_begin (struct address_space*,int,unsigned int) ;

int hostfs_write_begin(struct file *file, struct address_space *mapping,
   loff_t pos, unsigned len, unsigned flags,
   struct page **pagep, void **fsdata)
{
 pgoff_t index = pos >> PAGE_CACHE_SHIFT;

 *pagep = grab_cache_page_write_begin(mapping, index, flags);
 if (!*pagep)
  return -ENOMEM;
 return 0;
}
