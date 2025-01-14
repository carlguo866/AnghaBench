
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int obs_data_item_t ;


 int memmove (int *,int *,size_t) ;

__attribute__((used)) static inline void move_data(obs_data_item_t *old_item, void *old_data,
        obs_data_item_t *item, void *data, size_t len)
{
 ptrdiff_t old_offset = (uint8_t *)old_data - (uint8_t *)old_item;
 ptrdiff_t new_offset = (uint8_t *)data - (uint8_t *)item;

 if (!old_data)
  return;

 memmove((uint8_t *)item + new_offset, (uint8_t *)item + old_offset,
  len);
}
