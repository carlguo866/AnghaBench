
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef void* uint32_t ;
struct zone_page_metadata {void* freelist_offset; } ;
typedef scalar_t__ addr ;


 scalar_t__ MULTIPAGE_METADATA_MAGIC ;
 scalar_t__ PAGE_FOR_PAGE_INDEX (int ) ;
 int PAGE_INDEX_FOR_METADATA (struct zone_page_metadata*) ;
 void* PAGE_METADATA_EMPTY_FREELIST ;
 scalar_t__ PAGE_METADATA_GET_ZINDEX (struct zone_page_metadata*) ;
 int assert (int) ;
 scalar_t__ from_zone_map (struct zone_page_metadata*,int) ;

__attribute__((used)) static inline void
page_metadata_set_freelist(struct zone_page_metadata *page_meta, void *addr)
{
 assert(PAGE_METADATA_GET_ZINDEX(page_meta) != MULTIPAGE_METADATA_MAGIC);
 if (addr == ((void*)0))
  page_meta->freelist_offset = PAGE_METADATA_EMPTY_FREELIST;
 else {
  if (from_zone_map(page_meta, sizeof(struct zone_page_metadata)))
   page_meta->freelist_offset = (uint32_t)((vm_offset_t)(addr) - PAGE_FOR_PAGE_INDEX(PAGE_INDEX_FOR_METADATA(page_meta)));
  else
   page_meta->freelist_offset = (uint32_t)((vm_offset_t)(addr) - (vm_offset_t)page_meta);
 }
}
