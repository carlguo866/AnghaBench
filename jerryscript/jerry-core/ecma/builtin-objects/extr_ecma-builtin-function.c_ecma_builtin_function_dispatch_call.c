
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ecma_value_t ;
typedef scalar_t__ ecma_length_t ;


 int JERRY_ASSERT (int) ;
 int ecma_builtin_function_dispatch_construct (int const*,scalar_t__) ;

ecma_value_t
ecma_builtin_function_dispatch_call (const ecma_value_t *arguments_list_p,
                                     ecma_length_t arguments_list_len)
{
  JERRY_ASSERT (arguments_list_len == 0 || arguments_list_p != ((void*)0));

  return ecma_builtin_function_dispatch_construct (arguments_list_p, arguments_list_len);
}
