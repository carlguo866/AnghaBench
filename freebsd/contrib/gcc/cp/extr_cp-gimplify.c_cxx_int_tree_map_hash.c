
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxx_int_tree_map {unsigned int uid; } ;



unsigned int
cxx_int_tree_map_hash (const void *item)
{
  return ((const struct cxx_int_tree_map *)item)->uid;
}
