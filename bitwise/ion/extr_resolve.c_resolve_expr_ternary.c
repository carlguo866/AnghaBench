
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_14__ ;
typedef struct TYPE_19__ TYPE_11__ ;


typedef int Type ;
struct TYPE_21__ {int else_expr; int then_expr; int cond; } ;
struct TYPE_23__ {scalar_t__ kind; int pos; TYPE_1__ ternary; } ;
struct TYPE_20__ {scalar_t__ i; } ;
struct TYPE_22__ {TYPE_11__* type; TYPE_14__ val; scalar_t__ is_const; } ;
struct TYPE_19__ {scalar_t__ base; } ;
typedef TYPE_2__ Operand ;
typedef TYPE_3__ Expr ;


 scalar_t__ EXPR_TERNARY ;
 int assert (int) ;
 int fatal_error (int ,char*) ;
 scalar_t__ is_arithmetic_type (TYPE_11__*) ;
 scalar_t__ is_null_ptr (TYPE_2__) ;
 scalar_t__ is_ptr_type (TYPE_11__*) ;
 int is_scalar_type (TYPE_11__*) ;
 TYPE_2__ operand_const (TYPE_11__*,TYPE_14__) ;
 TYPE_2__ operand_rvalue (TYPE_11__*) ;
 TYPE_2__ resolve_expected_expr_rvalue (int ,int *) ;
 TYPE_2__ resolve_expr_rvalue (int ) ;
 scalar_t__ type_char ;
 scalar_t__ type_void ;
 int unify_arithmetic_operands (TYPE_2__*,TYPE_2__*) ;

Operand resolve_expr_ternary(Expr *expr, Type *expected_type) {
    assert(expr->kind == EXPR_TERNARY);
    Operand cond = resolve_expr_rvalue(expr->ternary.cond);
    if (!is_scalar_type(cond.type)) {
        fatal_error(expr->pos, "Ternary conditional must have scalar type");
    }
    Operand left = resolve_expected_expr_rvalue(expr->ternary.then_expr, expected_type);
    Operand right = resolve_expected_expr_rvalue(expr->ternary.else_expr, expected_type);
    if (left.type == right.type) {
        return operand_rvalue(left.type);
    } else if (is_arithmetic_type(left.type) && is_arithmetic_type(right.type)) {
        unify_arithmetic_operands(&left, &right);
        if (cond.is_const && left.is_const && right.is_const) {
            return operand_const(left.type, cond.val.i ? left.val : right.val);
        } else {
            return operand_rvalue(left.type);
        }
    } else if (is_ptr_type(left.type) && is_null_ptr(right)) {
        return operand_rvalue(left.type);
    } else if (is_ptr_type(right.type) && is_null_ptr(left)) {
        return operand_rvalue(right.type);
    } else {
        if (is_ptr_type(left.type) && is_ptr_type(right.type)) {
            if (left.type->base == type_void && right.type->base == type_char) {
                return operand_rvalue(right.type);
            } else if (left.type->base == type_char && right.type->base == type_void) {
                return operand_rvalue(left.type);
            }
        }
        fatal_error(expr->pos, "Left and right operands of ternary expression must have arithmetic types or identical types");
    }
}
