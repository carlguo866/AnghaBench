
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int expr; int * expression; } ;
typedef TYPE_1__ unary_expression_t ;
typedef int parser_ctx_t ;
typedef int expression_type_t ;
typedef int expression_t ;


 TYPE_1__* new_expression (int *,int ,int) ;

__attribute__((used)) static expression_t *new_unary_expression(parser_ctx_t *ctx, expression_type_t type, expression_t *expression)
{
    unary_expression_t *ret = new_expression(ctx, type, sizeof(*ret));

    ret->expression = expression;

    return &ret->expr;
}
