
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct topa {int z_count; int last; int size; } ;
struct pt_buffer {size_t nr_pages; int snapshot; int * data_pages; struct topa* last; } ;
struct page {int dummy; } ;
typedef int gfp_t ;
struct TYPE_2__ {int size; int base; int intr; int stop; } ;


 int ENOMEM ;
 int PT_CAP_topa_multiple_entries ;
 scalar_t__ PagePrivate (struct page*) ;
 TYPE_1__* TOPA_ENTRY (struct topa*,int) ;
 int TOPA_SHIFT ;
 int intel_pt_validate_hw_cap (int ) ;
 int page_private (struct page*) ;
 int page_to_phys (struct page*) ;
 scalar_t__ sizes (int) ;
 struct topa* topa_alloc (int,int ) ;
 int topa_insert_table (struct pt_buffer*,struct topa*) ;
 scalar_t__ topa_table_full (struct topa*) ;
 struct page* virt_to_page (int ) ;

__attribute__((used)) static int topa_insert_pages(struct pt_buffer *buf, int cpu, gfp_t gfp)
{
 struct topa *topa = buf->last;
 int order = 0;
 struct page *p;

 p = virt_to_page(buf->data_pages[buf->nr_pages]);
 if (PagePrivate(p))
  order = page_private(p);

 if (topa_table_full(topa)) {
  topa = topa_alloc(cpu, gfp);
  if (!topa)
   return -ENOMEM;

  topa_insert_table(buf, topa);
 }

 if (topa->z_count == topa->last - 1) {
  if (order == TOPA_ENTRY(topa, topa->last - 1)->size)
   topa->z_count++;
 }

 TOPA_ENTRY(topa, -1)->base = page_to_phys(p) >> TOPA_SHIFT;
 TOPA_ENTRY(topa, -1)->size = order;
 if (!buf->snapshot &&
     !intel_pt_validate_hw_cap(PT_CAP_topa_multiple_entries)) {
  TOPA_ENTRY(topa, -1)->intr = 1;
  TOPA_ENTRY(topa, -1)->stop = 1;
 }

 topa->last++;
 topa->size += sizes(order);

 buf->nr_pages += 1ul << order;

 return 0;
}
