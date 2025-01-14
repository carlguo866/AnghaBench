
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int timer_latch; } ;
struct TYPE_6__ {int mutex; TYPE_1__ params; } ;
typedef TYPE_2__ TestParamsWrapper ;


 int Assert (int ) ;
 int InitLatch (int *) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int params_close_wrapper (TYPE_2__*) ;
 TYPE_2__* params_open_wrapper () ;

void
ts_initialize_timer_latch()
{
 TestParamsWrapper *wrapper = params_open_wrapper();

 Assert(wrapper != ((void*)0));

 SpinLockAcquire(&wrapper->mutex);

 InitLatch(&wrapper->params.timer_latch);

 SpinLockRelease(&wrapper->mutex);

 params_close_wrapper(wrapper);
}
