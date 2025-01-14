
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_18__ ;
typedef struct TYPE_20__ TYPE_15__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_23__ {int ever_been_in_debug; } ;
typedef TYPE_2__ cvmx_debug_state_t ;
struct TYPE_24__ {int u64; } ;
typedef TYPE_3__ cvmx_debug_register_t ;
struct TYPE_22__ {int debug; } ;
struct TYPE_25__ {TYPE_1__ cop0; } ;
typedef TYPE_4__ cvmx_debug_core_context_t ;
struct TYPE_21__ {int needs_proxy; int (* wait_for_resume ) (TYPE_4__ volatile*,TYPE_2__) ;} ;
struct TYPE_20__ {scalar_t__ comm_changed; scalar_t__ comm_type; int lock; } ;


 scalar_t__ COMM_SIZE ;
 int COP0_DEPC ;
 int CVMX_MF_COP0 (scalar_t__,int ) ;
 scalar_t__ __cvmx_debug_mode_exception_occured ;
 int cvmx_debug_clear_status (TYPE_4__ volatile*) ;
 TYPE_18__** cvmx_debug_comms ;
 TYPE_4__* cvmx_debug_core_context () ;
 TYPE_2__ cvmx_debug_get_state () ;
 TYPE_15__* cvmx_debug_globals ;
 int cvmx_debug_perform_proxy (TYPE_3__*,TYPE_4__ volatile*) ;
 int cvmx_debug_print_cause (TYPE_4__ volatile*) ;
 int cvmx_debug_printf (char*,...) ;
 int cvmx_debug_restore_core_context (TYPE_4__ volatile*) ;
 int cvmx_debug_save_core_context (TYPE_4__ volatile*,scalar_t__,scalar_t__) ;
 int cvmx_debug_stop_core (TYPE_2__,unsigned int,TYPE_3__*,int) ;
 int cvmx_debug_update_state (TYPE_2__) ;
 int cvmx_dprintf (char*,long long,int) ;
 unsigned int cvmx_get_core_num () ;
 int cvmx_spinlock_lock (int *) ;
 int cvmx_spinlock_unlock (int *) ;
 int panic (char*,...) ;
 int stub1 (TYPE_4__ volatile*,TYPE_2__) ;

void __cvmx_debug_handler_stage3 (uint64_t lo, uint64_t hi)
{
    volatile cvmx_debug_core_context_t *context;
    int comms_changed = 0;

    cvmx_debug_printf("Entering debug exception handler\n");
    cvmx_debug_printf("Debug named block at %p\n", cvmx_debug_globals);
    if (__cvmx_debug_mode_exception_occured)
    {
        uint64_t depc;
        CVMX_MF_COP0(depc, COP0_DEPC);
        cvmx_dprintf("Unexpected debug-mode exception occured at 0x%llx, 0x%llx spinning\n", (long long) depc, (long long)(__cvmx_debug_mode_exception_occured));



        while (1)
            ;
    }

    context = cvmx_debug_core_context();
    cvmx_debug_save_core_context(context, hi, lo);

    {
        cvmx_debug_state_t state;
        cvmx_spinlock_lock(&cvmx_debug_globals->lock);
        state = cvmx_debug_get_state();
        state.ever_been_in_debug = 1;
        cvmx_debug_update_state (state);
        cvmx_spinlock_unlock(&cvmx_debug_globals->lock);
    }
    cvmx_debug_print_cause(context);

    do
    {
        int needs_proxy;
        comms_changed = 0;

        cvmx_spinlock_lock(&cvmx_debug_globals->lock);
        if (cvmx_debug_globals->comm_changed)
        {
            cvmx_debug_printf("Communication changed: %d\n", (int)cvmx_debug_globals->comm_changed);
            if (cvmx_debug_globals->comm_changed > COMM_SIZE)
            {
                cvmx_dprintf("Unknown communication spinning: %lld > %d.\n", (long long)cvmx_debug_globals->comm_changed, (int)(COMM_SIZE));



                while (1)
                    ;
            }
            cvmx_debug_globals->comm_type = cvmx_debug_globals->comm_changed - 1;
            cvmx_debug_globals->comm_changed = 0;
        }
        cvmx_spinlock_unlock(&cvmx_debug_globals->lock);
        needs_proxy = cvmx_debug_comms[cvmx_debug_globals->comm_type]->needs_proxy;

        {
            cvmx_debug_register_t debug_reg;
            cvmx_debug_state_t state;
            unsigned core = cvmx_get_core_num();

            state = cvmx_debug_get_state();
            debug_reg.u64 = context->cop0.debug;



            if (!cvmx_debug_stop_core(state, core, &debug_reg, needs_proxy))
            {
                context->cop0.debug = debug_reg.u64;
                break;
            }
        }

        if (needs_proxy)
        {
            cvmx_debug_register_t debug_reg;
            debug_reg.u64 = context->cop0.debug;
            cvmx_debug_printf("Starting to proxy\n");
            comms_changed = cvmx_debug_perform_proxy(&debug_reg, context);
            context->cop0.debug = debug_reg.u64;
        }
        else
        {
            cvmx_debug_printf("Starting to wait for remote host\n");
            cvmx_debug_comms[cvmx_debug_globals->comm_type]->wait_for_resume(context, cvmx_debug_get_state());
        }
    } while (comms_changed);

    cvmx_debug_clear_status(context);

    cvmx_debug_restore_core_context(context);
    cvmx_debug_printf("Exiting debug exception handler\n");
}
