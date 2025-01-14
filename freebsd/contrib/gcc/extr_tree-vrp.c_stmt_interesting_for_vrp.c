
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ ADDR_EXPR ;
 scalar_t__ CALL_EXPR ;
 scalar_t__ COND_EXPR ;
 scalar_t__ DECL_IS_BUILTIN (int ) ;
 scalar_t__ DECL_P (int ) ;
 scalar_t__ INTEGRAL_TYPE_P (int ) ;
 scalar_t__ MODIFY_EXPR ;
 scalar_t__ PHI_NODE ;
 int PHI_RESULT (int ) ;
 scalar_t__ POINTER_TYPE_P (int ) ;
 scalar_t__ SSA_NAME ;
 int SSA_OP_ALL_VIRTUALS ;
 scalar_t__ SWITCH_EXPR ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;
 scalar_t__ ZERO_SSA_OPERANDS (int ,int ) ;
 scalar_t__ is_gimple_reg (int ) ;

__attribute__((used)) static bool
stmt_interesting_for_vrp (tree stmt)
{
  if (TREE_CODE (stmt) == PHI_NODE
      && is_gimple_reg (PHI_RESULT (stmt))
      && (INTEGRAL_TYPE_P (TREE_TYPE (PHI_RESULT (stmt)))
   || POINTER_TYPE_P (TREE_TYPE (PHI_RESULT (stmt)))))
    return 1;
  else if (TREE_CODE (stmt) == MODIFY_EXPR)
    {
      tree lhs = TREE_OPERAND (stmt, 0);
      tree rhs = TREE_OPERAND (stmt, 1);




      if (TREE_CODE (lhs) == SSA_NAME
   && (INTEGRAL_TYPE_P (TREE_TYPE (lhs))
       || POINTER_TYPE_P (TREE_TYPE (lhs)))
   && ((TREE_CODE (rhs) == CALL_EXPR
        && TREE_CODE (TREE_OPERAND (rhs, 0)) == ADDR_EXPR
        && DECL_P (TREE_OPERAND (TREE_OPERAND (rhs, 0), 0))
        && DECL_IS_BUILTIN (TREE_OPERAND (TREE_OPERAND (rhs, 0), 0)))
       || ZERO_SSA_OPERANDS (stmt, SSA_OP_ALL_VIRTUALS)))
 return 1;
    }
  else if (TREE_CODE (stmt) == COND_EXPR || TREE_CODE (stmt) == SWITCH_EXPR)
    return 1;

  return 0;
}
