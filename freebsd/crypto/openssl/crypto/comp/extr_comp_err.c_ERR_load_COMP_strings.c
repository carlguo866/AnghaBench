
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int error; } ;


 TYPE_1__* COMP_str_functs ;
 TYPE_1__* COMP_str_reasons ;
 int * ERR_func_error_string (int ) ;
 int ERR_load_strings_const (TYPE_1__*) ;

int ERR_load_COMP_strings(void)
{

    if (ERR_func_error_string(COMP_str_functs[0].error) == ((void*)0)) {
        ERR_load_strings_const(COMP_str_functs);
        ERR_load_strings_const(COMP_str_reasons);
    }

    return 1;
}
