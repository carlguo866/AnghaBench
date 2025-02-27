
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct memory_bitmap {int dummy; } ;


 int GFP_ATOMIC ;
 int PG_ANY ;
 int __GFP_COLD ;
 unsigned int alloc_highmem ;
 scalar_t__ alloc_highmem_pages (struct memory_bitmap*,unsigned int) ;
 struct page* alloc_image_page (int) ;
 unsigned int alloc_normal ;
 int get_highmem_buffer (int ) ;
 int memory_bm_set_bit (struct memory_bitmap*,int ) ;
 int page_to_pfn (struct page*) ;
 int swsusp_free () ;

__attribute__((used)) static int
swsusp_alloc(struct memory_bitmap *orig_bm, struct memory_bitmap *copy_bm,
  unsigned int nr_pages, unsigned int nr_highmem)
{
 int error = 0;

 if (nr_highmem > 0) {
  error = get_highmem_buffer(PG_ANY);
  if (error)
   goto err_out;
  if (nr_highmem > alloc_highmem) {
   nr_highmem -= alloc_highmem;
   nr_pages += alloc_highmem_pages(copy_bm, nr_highmem);
  }
 }
 if (nr_pages > alloc_normal) {
  nr_pages -= alloc_normal;
  while (nr_pages-- > 0) {
   struct page *page;

   page = alloc_image_page(GFP_ATOMIC | __GFP_COLD);
   if (!page)
    goto err_out;
   memory_bm_set_bit(copy_bm, page_to_pfn(page));
  }
 }

 return 0;

 err_out:
 swsusp_free();
 return error;
}
