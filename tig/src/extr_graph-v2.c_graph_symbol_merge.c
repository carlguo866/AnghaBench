
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct graph_symbol {scalar_t__ continued_right; scalar_t__ parent_right; int parent_down; scalar_t__ continued_down; } ;



__attribute__((used)) static bool
graph_symbol_merge(const struct graph_symbol *symbol)
{
 if (symbol->continued_down)
  return 0;

 if (!symbol->parent_down)
  return 0;

 if (symbol->parent_right)
  return 0;

 if (symbol->continued_right)
  return 0;

 return 1;
}
