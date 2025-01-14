
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ ADDR_EXPR ;
 int ARRAY_REF ;
 scalar_t__ ARRAY_TYPE ;
 scalar_t__ COMPLEX_TYPE ;
 scalar_t__ CONST_DECL ;
 scalar_t__ DECL_INITIAL (scalar_t__) ;
 int IMAGPART_EXPR ;
 scalar_t__ INTEGER_CST ;
 scalar_t__ NULL_TREE ;
 scalar_t__ PLUS_EXPR ;
 int POINTER_TYPE_P (scalar_t__) ;
 int REALPART_EXPR ;
 int STRIP_NOPS (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_DOMAIN (scalar_t__) ;
 scalar_t__ TYPE_MIN_VALUE (scalar_t__) ;
 scalar_t__ TYPE_SIZE_UNIT (scalar_t__) ;
 scalar_t__ build4 (int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ build_fold_indirect_ref (scalar_t__) ;
 scalar_t__ fold_build1 (int ,scalar_t__,scalar_t__) ;
 scalar_t__ fold_read_from_constant_string (scalar_t__) ;
 scalar_t__ size_zero_node ;
 scalar_t__ tree_int_cst_equal (scalar_t__,scalar_t__) ;

tree
fold_indirect_ref_1 (tree type, tree op0)
{
  tree sub = op0;
  tree subtype;

  STRIP_NOPS (sub);
  subtype = TREE_TYPE (sub);
  if (!POINTER_TYPE_P (subtype))
    return NULL_TREE;

  if (TREE_CODE (sub) == ADDR_EXPR)
    {
      tree op = TREE_OPERAND (sub, 0);
      tree optype = TREE_TYPE (op);

      if (TREE_CODE (op) == CONST_DECL)
 return DECL_INITIAL (op);

      if (type == optype)
 {
   tree fop = fold_read_from_constant_string (op);
   if (fop)
     return fop;
   else
     return op;
 }

      else if (TREE_CODE (optype) == ARRAY_TYPE
        && type == TREE_TYPE (optype))
 {
   tree type_domain = TYPE_DOMAIN (optype);
   tree min_val = size_zero_node;
   if (type_domain && TYPE_MIN_VALUE (type_domain))
     min_val = TYPE_MIN_VALUE (type_domain);
   return build4 (ARRAY_REF, type, op, min_val, NULL_TREE, NULL_TREE);
 }

      else if (TREE_CODE (optype) == COMPLEX_TYPE
        && type == TREE_TYPE (optype))
 return fold_build1 (REALPART_EXPR, type, op);
    }


  if (TREE_CODE (sub) == PLUS_EXPR
      && TREE_CODE (TREE_OPERAND (sub, 1)) == INTEGER_CST)
    {
      tree op00 = TREE_OPERAND (sub, 0);
      tree op01 = TREE_OPERAND (sub, 1);
      tree op00type;

      STRIP_NOPS (op00);
      op00type = TREE_TYPE (op00);
      if (TREE_CODE (op00) == ADDR_EXPR
    && TREE_CODE (TREE_TYPE (op00type)) == COMPLEX_TYPE
   && type == TREE_TYPE (TREE_TYPE (op00type)))
 {
   tree size = TYPE_SIZE_UNIT (type);
   if (tree_int_cst_equal (size, op01))
     return fold_build1 (IMAGPART_EXPR, type, TREE_OPERAND (op00, 0));
 }
    }


  if (TREE_CODE (TREE_TYPE (subtype)) == ARRAY_TYPE
      && type == TREE_TYPE (TREE_TYPE (subtype)))
    {
      tree type_domain;
      tree min_val = size_zero_node;
      sub = build_fold_indirect_ref (sub);
      type_domain = TYPE_DOMAIN (TREE_TYPE (sub));
      if (type_domain && TYPE_MIN_VALUE (type_domain))
 min_val = TYPE_MIN_VALUE (type_domain);
      return build4 (ARRAY_REF, type, sub, min_val, NULL_TREE, NULL_TREE);
    }

  return NULL_TREE;
}
