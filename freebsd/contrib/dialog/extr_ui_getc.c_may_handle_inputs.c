
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* getc_callbacks; } ;
struct TYPE_3__ {scalar_t__ input; struct TYPE_3__* next; } ;
typedef TYPE_1__ DIALOG_CALLBACK ;


 int FALSE ;
 int TRUE ;
 TYPE_2__ dialog_state ;

__attribute__((used)) static bool
may_handle_inputs(void)
{
    bool result = FALSE;

    DIALOG_CALLBACK *p;

    for (p = dialog_state.getc_callbacks; p != 0; p = p->next) {
 if (p->input != 0) {
     result = TRUE;
     break;
 }
    }

    return result;
}
