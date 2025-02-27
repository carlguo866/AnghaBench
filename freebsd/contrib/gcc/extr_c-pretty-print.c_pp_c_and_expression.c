
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int c_pretty_printer ;


 scalar_t__ BIT_AND_EXPR ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int pp_ampersand (int *) ;
 int pp_c_equality_expression (int *,int ) ;
 int pp_c_whitespace (int *) ;

__attribute__((used)) static void
pp_c_and_expression (c_pretty_printer *pp, tree e)
{
  if (TREE_CODE (e) == BIT_AND_EXPR)
    {
      pp_c_and_expression (pp, TREE_OPERAND (e, 0));
      pp_c_whitespace (pp);
      pp_ampersand (pp);
      pp_c_whitespace (pp);
      pp_c_equality_expression (pp, TREE_OPERAND (e, 1));
    }
  else
    pp_c_equality_expression (pp, e);
}
