
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ CONVERT_EXPR ;
 scalar_t__ NOP_EXPR ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_NO_WARNING (scalar_t__) ;
 scalar_t__ VIEW_CONVERT_EXPR ;
 scalar_t__ get_rhs (scalar_t__) ;

__attribute__((used)) static bool
already_warned_in_frontend_p (tree stmt)
{
  tree rhs_pointer;

  if (stmt == NULL_TREE)
    return 0;

  rhs_pointer = get_rhs (stmt);

  if ((TREE_CODE (rhs_pointer) == NOP_EXPR
       || TREE_CODE (rhs_pointer) == CONVERT_EXPR
       || TREE_CODE (rhs_pointer) == VIEW_CONVERT_EXPR)
      && TREE_NO_WARNING (rhs_pointer))
    return 1;
  else
    return 0;
}
