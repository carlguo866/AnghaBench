
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ m68k_start; TYPE_3__* next; TYPE_2__* prev; int * native_code; scalar_t__ native_size; } ;
struct TYPE_11__ {TYPE_3__** jit_hashchain; int (* free_func ) (int *) ;int jit_total_data; TYPE_1__* jit_callstack; } ;
struct TYPE_10__ {TYPE_2__* prev; } ;
struct TYPE_9__ {TYPE_3__* next; } ;
struct TYPE_8__ {scalar_t__ return_PC; TYPE_5__* return_entry; } ;
typedef TYPE_4__ Q68State ;
typedef TYPE_5__ Q68JitEntry ;


 size_t JIT_HASH (scalar_t__) ;
 int Q68_JIT_CALLSTACK_SIZE ;
 int stub1 (int *) ;

__attribute__((used)) static void clear_entry(Q68State *state, Q68JitEntry *entry)
{

    int i;
    for (i = 0; i < Q68_JIT_CALLSTACK_SIZE; i++) {
        if (state->jit_callstack[i].return_entry == entry) {
            state->jit_callstack[i].return_PC = 0;
        }
    }


    state->jit_total_data -= entry->native_size;
    state->free_func(entry->native_code);
    entry->native_code = ((void*)0);


    if (entry->next) {
        entry->next->prev = entry->prev;
    }
    if (entry->prev) {
        entry->prev->next = entry->next;
    } else {
        state->jit_hashchain[JIT_HASH(entry->m68k_start)] = entry->next;
    }


    entry->m68k_start = 0;
}
