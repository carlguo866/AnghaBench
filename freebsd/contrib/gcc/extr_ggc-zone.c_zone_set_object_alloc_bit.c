
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct small_page_entry {long* alloc_bits; } ;


 unsigned int zone_get_object_alloc_bit (void const*) ;
 unsigned int zone_get_object_alloc_word (void const*) ;
 scalar_t__ zone_get_object_page (void const*) ;

__attribute__((used)) static inline void
zone_set_object_alloc_bit (const void *object)
{
  struct small_page_entry *page
    = (struct small_page_entry *) zone_get_object_page (object);
  unsigned int start_word = zone_get_object_alloc_word (object);
  unsigned int start_bit = zone_get_object_alloc_bit (object);

  page->alloc_bits[start_word] |= 1L << start_bit;
}
