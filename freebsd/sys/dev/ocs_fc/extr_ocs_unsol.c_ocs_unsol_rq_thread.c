
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_10__ {int thread_started; int thread; int seq_cbuf; int * ocs; } ;
typedef TYPE_2__ ocs_xport_rq_thread_info_t ;
struct TYPE_11__ {int name; TYPE_2__* arg; } ;
typedef TYPE_3__ ocs_thread_t ;
typedef int ocs_t ;
struct TYPE_12__ {TYPE_1__* hw; } ;
typedef TYPE_4__ ocs_hw_sequence_t ;
typedef int int32_t ;
struct TYPE_9__ {scalar_t__ os; } ;


 int FALSE ;
 scalar_t__ OCS_MAX_FRAMES_BEFORE_YEILDING ;
 TYPE_4__* ocs_cbuf_get (int ,int) ;
 int ocs_log_debug (int *,char*,int ) ;
 int ocs_thread_terminate_requested (TYPE_3__*) ;
 int ocs_thread_yield (int *) ;
 int ocs_unsol_process (int *,TYPE_4__*) ;

int32_t
ocs_unsol_rq_thread(ocs_thread_t *mythread)
{
 ocs_xport_rq_thread_info_t *thread_data = mythread->arg;
 ocs_t *ocs = thread_data->ocs;
 ocs_hw_sequence_t *seq;
 uint32_t yield_count = OCS_MAX_FRAMES_BEFORE_YEILDING;

 ocs_log_debug(ocs, "%s running\n", mythread->name);
 while (!ocs_thread_terminate_requested(mythread)) {
  seq = ocs_cbuf_get(thread_data->seq_cbuf, 100000);
  if (seq == ((void*)0)) {

   ocs_thread_yield(&thread_data->thread);
   yield_count = OCS_MAX_FRAMES_BEFORE_YEILDING;
   continue;
  }

  ocs_unsol_process((ocs_t*)seq->hw->os, seq);


  if (--yield_count == 0) {
   ocs_thread_yield(&thread_data->thread);
   yield_count = OCS_MAX_FRAMES_BEFORE_YEILDING;
  }
 }
 ocs_log_debug(ocs, "%s exiting\n", mythread->name);
 thread_data->thread_started = FALSE;
 return 0;
}
