
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ flag_tree_vectorize ;

__attribute__((used)) static bool
gate_tree_if_conversion (void)
{
  return flag_tree_vectorize != 0;
}
