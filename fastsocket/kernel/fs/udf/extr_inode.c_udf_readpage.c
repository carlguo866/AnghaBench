
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct file {int dummy; } ;


 int block_read_full_page (struct page*,int ) ;
 int udf_get_block ;

__attribute__((used)) static int udf_readpage(struct file *file, struct page *page)
{
 return block_read_full_page(page, udf_get_block);
}
