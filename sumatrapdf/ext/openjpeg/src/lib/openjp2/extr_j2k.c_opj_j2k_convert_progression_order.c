
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int enum_prog; char const* str_prog; } ;
typedef TYPE_1__ j2k_prog_order_t ;
typedef int OPJ_PROG_ORDER ;


 TYPE_1__* j2k_prog_order_list ;

const char *opj_j2k_convert_progression_order(OPJ_PROG_ORDER prg_order)
{
    const j2k_prog_order_t *po;
    for (po = j2k_prog_order_list; po->enum_prog != -1; po++) {
        if (po->enum_prog == prg_order) {
            return po->str_prog;
        }
    }
    return po->str_prog;
}
