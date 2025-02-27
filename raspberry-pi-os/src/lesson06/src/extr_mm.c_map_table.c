
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long MM_TYPE_PAGE_TABLE ;
 unsigned long PAGE_MASK ;
 int PTRS_PER_TABLE ;
 unsigned long get_free_page () ;

unsigned long map_table(unsigned long *table, unsigned long shift, unsigned long va, int* new_table) {
 unsigned long index = va >> shift;
 index = index & (PTRS_PER_TABLE - 1);
 if (!table[index]){
  *new_table = 1;
  unsigned long next_level_table = get_free_page();
  unsigned long entry = next_level_table | MM_TYPE_PAGE_TABLE;
  table[index] = entry;
  return next_level_table;
 } else {
  *new_table = 0;
 }
 return table[index] & PAGE_MASK;
}
