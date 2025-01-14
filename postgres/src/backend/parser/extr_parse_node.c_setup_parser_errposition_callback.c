
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* previous; void* arg; int callback; } ;
struct TYPE_4__ {int location; TYPE_3__ errcallback; int * pstate; } ;
typedef int ParseState ;
typedef TYPE_1__ ParseCallbackState ;


 TYPE_3__* error_context_stack ;
 int pcb_error_callback ;

void
setup_parser_errposition_callback(ParseCallbackState *pcbstate,
          ParseState *pstate, int location)
{

 pcbstate->pstate = pstate;
 pcbstate->location = location;
 pcbstate->errcallback.callback = pcb_error_callback;
 pcbstate->errcallback.arg = (void *) pcbstate;
 pcbstate->errcallback.previous = error_context_stack;
 error_context_stack = &pcbstate->errcallback;
}
