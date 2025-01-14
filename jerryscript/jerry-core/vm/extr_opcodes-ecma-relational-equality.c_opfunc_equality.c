
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ecma_value_t ;


 scalar_t__ ECMA_IS_VALUE_ERROR (int ) ;
 int JERRY_ASSERT (int) ;
 scalar_t__ ecma_is_value_boolean (int ) ;
 int ecma_op_abstract_equality_compare (int ,int ) ;

ecma_value_t
opfunc_equality (ecma_value_t left_value,
                 ecma_value_t right_value)
{
  JERRY_ASSERT (!ECMA_IS_VALUE_ERROR (left_value)
                && !ECMA_IS_VALUE_ERROR (right_value));

  ecma_value_t compare_result = ecma_op_abstract_equality_compare (left_value, right_value);

  JERRY_ASSERT (ecma_is_value_boolean (compare_result)
                || ECMA_IS_VALUE_ERROR (compare_result));

  return compare_result;
}
