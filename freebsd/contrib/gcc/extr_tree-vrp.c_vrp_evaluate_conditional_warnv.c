
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ type; scalar_t__ min; scalar_t__ max; } ;
typedef TYPE_1__ value_range_t ;
typedef scalar_t__ tree ;


 int INTEGRAL_TYPE_P (int ) ;
 scalar_t__ NE_EXPR ;
 scalar_t__ NULL_TREE ;
 int POINTER_TYPE_P (int ) ;
 scalar_t__ SSA_NAME ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_CODE_CLASS (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ VR_RANGE ;
 scalar_t__ boolean_false_node ;
 scalar_t__ compare_name_with_value (scalar_t__,scalar_t__,scalar_t__,int*) ;
 scalar_t__ compare_names (scalar_t__,scalar_t__,scalar_t__,int*) ;
 scalar_t__ compare_range_with_value (scalar_t__,TYPE_1__*,scalar_t__,int*) ;
 scalar_t__ compare_ranges (scalar_t__,TYPE_1__*,TYPE_1__*,int*) ;
 int gcc_assert (int) ;
 TYPE_1__* get_value_range (scalar_t__) ;
 scalar_t__ swap_tree_comparison (scalar_t__) ;
 scalar_t__ tcc_comparison ;

__attribute__((used)) static tree
vrp_evaluate_conditional_warnv (tree cond, bool use_equiv_p,
    bool *strict_overflow_p)
{
  gcc_assert (TREE_CODE (cond) == SSA_NAME
              || TREE_CODE_CLASS (TREE_CODE (cond)) == tcc_comparison);

  if (TREE_CODE (cond) == SSA_NAME)
    {
      value_range_t *vr;
      tree retval;

      if (use_equiv_p)
 retval = compare_name_with_value (NE_EXPR, cond, boolean_false_node,
       strict_overflow_p);
      else
 {
   value_range_t *vr = get_value_range (cond);
   retval = compare_range_with_value (NE_EXPR, vr, boolean_false_node,
          strict_overflow_p);
 }


      if (retval)
 return retval;



      vr = get_value_range (cond);
      if (vr->type == VR_RANGE && vr->min == vr->max)
 return vr->min;
    }
  else
    {
      tree op0 = TREE_OPERAND (cond, 0);
      tree op1 = TREE_OPERAND (cond, 1);


      if (!INTEGRAL_TYPE_P (TREE_TYPE (op0))
   && !POINTER_TYPE_P (TREE_TYPE (op0)))
 return NULL_TREE;

      if (use_equiv_p)
 {
   if (TREE_CODE (op0) == SSA_NAME && TREE_CODE (op1) == SSA_NAME)
     return compare_names (TREE_CODE (cond), op0, op1,
      strict_overflow_p);
   else if (TREE_CODE (op0) == SSA_NAME)
     return compare_name_with_value (TREE_CODE (cond), op0, op1,
         strict_overflow_p);
   else if (TREE_CODE (op1) == SSA_NAME)
     return (compare_name_with_value
      (swap_tree_comparison (TREE_CODE (cond)), op1, op0,
       strict_overflow_p));
 }
      else
 {
   value_range_t *vr0, *vr1;

   vr0 = (TREE_CODE (op0) == SSA_NAME) ? get_value_range (op0) : ((void*)0);
   vr1 = (TREE_CODE (op1) == SSA_NAME) ? get_value_range (op1) : ((void*)0);

   if (vr0 && vr1)
     return compare_ranges (TREE_CODE (cond), vr0, vr1,
       strict_overflow_p);
   else if (vr0 && vr1 == ((void*)0))
     return compare_range_with_value (TREE_CODE (cond), vr0, op1,
          strict_overflow_p);
   else if (vr0 == ((void*)0) && vr1)
     return (compare_range_with_value
      (swap_tree_comparison (TREE_CODE (cond)), vr1, op0,
       strict_overflow_p));
 }
    }


  return NULL_TREE;
}
