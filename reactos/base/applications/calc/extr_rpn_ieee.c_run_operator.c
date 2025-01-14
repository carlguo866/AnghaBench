
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_18__ ;
typedef struct TYPE_20__ TYPE_15__ ;


struct TYPE_22__ {void* f; int i; } ;
typedef TYPE_1__ calc_number_t ;
struct TYPE_23__ {scalar_t__ base; TYPE_1__ number; } ;
typedef TYPE_2__ calc_node_t ;
struct TYPE_21__ {scalar_t__ base; int is_nan; } ;
struct TYPE_20__ {int (* op_i ) (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;int (* op_f ) (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;int (* op_p ) (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;} ;
typedef scalar_t__ DWORD ;


 scalar_t__ FALSE ;
 scalar_t__ IDC_RADIO_DEC ;
 int TRUE ;
 scalar_t__ _finite (void*) ;
 int apply_int_mask (TYPE_1__*) ;
 TYPE_18__ calc ;
 int logic_dbl2int (TYPE_1__*) ;
 void* logic_int2dbl (TYPE_1__*) ;
 TYPE_15__* operator_list ;
 scalar_t__ percent_mode ;
 int stub1 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int stub2 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int stub3 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;

void run_operator(calc_node_t *result,
                  calc_node_t *a,
                  calc_node_t *b,
                  unsigned int operation)
{
    calc_number_t da, db, dc;
    DWORD base = calc.base;

    da = a->number;
    db = b->number;
    if (a->base == IDC_RADIO_DEC && b->base != IDC_RADIO_DEC) {
        db.f = logic_int2dbl(&b->number);
        base = IDC_RADIO_DEC;
    } else
    if (a->base != IDC_RADIO_DEC && b->base == IDC_RADIO_DEC) {
        da.f = logic_int2dbl(&a->number);
        base = IDC_RADIO_DEC;
    }

    if (base == IDC_RADIO_DEC) {
        if (percent_mode) {
            percent_mode = FALSE;
            operator_list[operation].op_p(&dc, &da, &db);
        } else
            operator_list[operation].op_f(&dc, &da, &db);
        if (_finite(dc.f) == 0)
            calc.is_nan = TRUE;
    } else {
        operator_list[operation].op_i(&dc, &da, &db);

        apply_int_mask(&dc);
    }

    if (a->base == IDC_RADIO_DEC && b->base != IDC_RADIO_DEC) {
        result->number.i = logic_dbl2int(&dc);
        apply_int_mask(&result->number);
    } else
    if (a->base != IDC_RADIO_DEC && b->base == IDC_RADIO_DEC)
        result->number.f = dc.f;
    else
        result->number = dc;
}
