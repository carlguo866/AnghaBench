
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c_expr {scalar_t__ value; void* original_code; } ;
typedef int c_parser ;


 int CPP_COLON ;
 int CPP_QUERY ;
 void* ERROR_MARK ;
 scalar_t__ build_conditional_expr (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ c_dialect_objc () ;
 void* c_objc_common_truthvalue_conversion (scalar_t__) ;
 struct c_expr c_parser_binary_expression (int *,struct c_expr*) ;
 int c_parser_consume_token (int *) ;
 struct c_expr c_parser_expression_conv (int *) ;
 scalar_t__ c_parser_next_token_is (int *,int ) ;
 scalar_t__ c_parser_next_token_is_not (int *,int ) ;
 int c_parser_require (int *,int ,char*) ;
 scalar_t__ default_conversion (scalar_t__) ;
 struct c_expr default_function_array_conversion (struct c_expr) ;
 scalar_t__ error_mark_node ;
 int gcc_assert (int) ;
 scalar_t__ pedantic ;
 int pedwarn (char*) ;
 scalar_t__ save_expr (scalar_t__) ;
 int skip_evaluation ;
 scalar_t__ truthvalue_false_node ;
 scalar_t__ truthvalue_true_node ;

__attribute__((used)) static struct c_expr
c_parser_conditional_expression (c_parser *parser, struct c_expr *after)
{
  struct c_expr cond, exp1, exp2, ret;
  gcc_assert (!after || c_dialect_objc ());
  cond = c_parser_binary_expression (parser, after);
  if (c_parser_next_token_is_not (parser, CPP_QUERY))
    return cond;
  cond = default_function_array_conversion (cond);
  c_parser_consume_token (parser);
  if (c_parser_next_token_is (parser, CPP_COLON))
    {
      if (pedantic)
 pedwarn ("ISO C forbids omitting the middle term of a ?: expression");

      exp1.value = save_expr (default_conversion (cond.value));
      cond.value = c_objc_common_truthvalue_conversion (exp1.value);
      skip_evaluation += cond.value == truthvalue_true_node;
    }
  else
    {
      cond.value
 = c_objc_common_truthvalue_conversion
 (default_conversion (cond.value));
      skip_evaluation += cond.value == truthvalue_false_node;
      exp1 = c_parser_expression_conv (parser);
      skip_evaluation += ((cond.value == truthvalue_true_node)
     - (cond.value == truthvalue_false_node));
    }
  if (!c_parser_require (parser, CPP_COLON, "expected %<:%>"))
    {
      skip_evaluation -= cond.value == truthvalue_true_node;
      ret.value = error_mark_node;
      ret.original_code = ERROR_MARK;
      return ret;
    }
  exp2 = c_parser_conditional_expression (parser, ((void*)0));
  exp2 = default_function_array_conversion (exp2);
  skip_evaluation -= cond.value == truthvalue_true_node;
  ret.value = build_conditional_expr (cond.value, exp1.value, exp2.value);
  ret.original_code = ERROR_MARK;
  return ret;
}
