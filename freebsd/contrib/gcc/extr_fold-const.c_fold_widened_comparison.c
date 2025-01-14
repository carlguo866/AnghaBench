
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 scalar_t__ BOOLEAN_TYPE ;

 scalar_t__ FUNCTION_TYPE ;


 scalar_t__ HAVE_canonicalize_funcptr_for_compare ;
 scalar_t__ INTEGER_CST ;
 scalar_t__ INTEGER_TYPE ;



 scalar_t__ NULL_TREE ;
 scalar_t__ POINTER_TYPE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_PRECISION (scalar_t__) ;
 scalar_t__ TYPE_UNSIGNED (scalar_t__) ;
 scalar_t__ fold_build2 (int,scalar_t__,scalar_t__,int ) ;
 int fold_convert (scalar_t__,scalar_t__) ;
 int fold_relational_const (int,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ get_unwidened (scalar_t__,scalar_t__) ;
 scalar_t__ int_fits_type_p (scalar_t__,scalar_t__) ;
 int integer_nonzerop (int ) ;
 int integer_one_node ;
 int integer_zero_node ;
 scalar_t__ lower_bound_in_type (scalar_t__,scalar_t__) ;
 scalar_t__ omit_one_operand (scalar_t__,int ,scalar_t__) ;
 scalar_t__ upper_bound_in_type (scalar_t__,scalar_t__) ;

__attribute__((used)) static tree
fold_widened_comparison (enum tree_code code, tree type, tree arg0, tree arg1)
{
  tree arg0_unw = get_unwidened (arg0, NULL_TREE);
  tree arg1_unw;
  tree shorter_type, outer_type;
  tree min, max;
  bool above, below;

  if (arg0_unw == arg0)
    return NULL_TREE;
  shorter_type = TREE_TYPE (arg0_unw);
  if (TYPE_PRECISION (TREE_TYPE (arg0)) <= TYPE_PRECISION (shorter_type))
    return NULL_TREE;

  arg1_unw = get_unwidened (arg1, NULL_TREE);


  if ((code == 133 || code == 128
       || TYPE_UNSIGNED (TREE_TYPE (arg0)) == TYPE_UNSIGNED (shorter_type))
      && (TREE_TYPE (arg1_unw) == shorter_type
   || (TYPE_PRECISION (shorter_type)
       >= TYPE_PRECISION (TREE_TYPE (arg1_unw)))
   || (TREE_CODE (arg1_unw) == INTEGER_CST
       && (TREE_CODE (shorter_type) == INTEGER_TYPE
    || TREE_CODE (shorter_type) == BOOLEAN_TYPE)
       && int_fits_type_p (arg1_unw, shorter_type))))
    return fold_build2 (code, type, arg0_unw,
         fold_convert (shorter_type, arg1_unw));

  if (TREE_CODE (arg1_unw) != INTEGER_CST
      || TREE_CODE (shorter_type) != INTEGER_TYPE
      || !int_fits_type_p (arg1_unw, shorter_type))
    return NULL_TREE;



  outer_type = TREE_TYPE (arg1_unw);
  min = lower_bound_in_type (outer_type, shorter_type);
  max = upper_bound_in_type (outer_type, shorter_type);

  above = integer_nonzerop (fold_relational_const (129, type,
         max, arg1_unw));
  below = integer_nonzerop (fold_relational_const (129, type,
         arg1_unw, min));

  switch (code)
    {
    case 133:
      if (above || below)
 return omit_one_operand (type, integer_zero_node, arg0);
      break;

    case 128:
      if (above || below)
 return omit_one_operand (type, integer_one_node, arg0);
      break;

    case 129:
    case 130:
      if (above)
 return omit_one_operand (type, integer_one_node, arg0);
      else if (below)
 return omit_one_operand (type, integer_zero_node, arg0);

    case 131:
    case 132:
      if (above)
 return omit_one_operand (type, integer_zero_node, arg0);
      else if (below)
 return omit_one_operand (type, integer_one_node, arg0);

    default:
      break;
    }

  return NULL_TREE;
}
