
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {double dval; } ;
struct TYPE_6__ {int type; double cval; int is_const; TYPE_1__ u; int * ref; } ;
typedef TYPE_2__ expr_t ;
typedef enum expr_type { ____Placeholder_expr_type } expr_type ;


 int TRUE ;
 TYPE_2__* xmalloc (int) ;

expr_t *make_exprd(enum expr_type type, double val)
{
    expr_t *e = xmalloc(sizeof(expr_t));
    e->type = type;
    e->ref = ((void*)0);
    e->u.dval = val;
    e->is_const = TRUE;
    e->cval = val;
    return e;
}
