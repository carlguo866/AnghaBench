
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct tree_int_map {int from; } ;


 int ggc_marked_p (int ) ;

__attribute__((used)) static int
tree_int_map_marked_p (const void *p)
{
  tree from = ((struct tree_int_map *) p)->from;

  return ggc_marked_p (from);
}
