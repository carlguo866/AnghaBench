
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ pool_addr ;
 unsigned int pool_index ;
 unsigned int pool_size ;

void *vita2d_pool_memalign(unsigned int size, unsigned int alignment)
{
 unsigned int new_index = (pool_index + alignment - 1) & ~(alignment - 1);
 if ((new_index + size) < pool_size) {
  void *addr = (void *)((unsigned int)pool_addr + new_index);
  pool_index = new_index + size;
  return addr;
 }
 return ((void*)0);
}
