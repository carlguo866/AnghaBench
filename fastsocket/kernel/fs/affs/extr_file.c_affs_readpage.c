
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct file {int dummy; } ;


 int affs_get_block ;
 int block_read_full_page (struct page*,int ) ;

__attribute__((used)) static int affs_readpage(struct file *file, struct page *page)
{
 return block_read_full_page(page, affs_get_block);
}
