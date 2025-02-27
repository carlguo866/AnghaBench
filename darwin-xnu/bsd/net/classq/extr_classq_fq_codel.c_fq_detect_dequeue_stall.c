
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ u_int64_t ;
struct TYPE_12__ {scalar_t__ fq_getqtime; scalar_t__ fq_bytes; } ;
typedef TYPE_2__ fq_t ;
struct TYPE_13__ {scalar_t__ fqs_update_interval; } ;
typedef TYPE_3__ fq_if_t ;
struct TYPE_11__ {int fcl_dequeue_stall; } ;
struct TYPE_14__ {TYPE_1__ fcl_stat; } ;
typedef TYPE_4__ fq_if_classq_t ;


 scalar_t__ FQ_IS_DELAYHIGH (TYPE_2__*) ;
 scalar_t__ FQ_MIN_FC_THRESHOLD_BYTES ;
 int FQ_SET_DELAY_HIGH (TYPE_2__*) ;
 scalar_t__ fq_empty (TYPE_2__*) ;

__attribute__((used)) static void
fq_detect_dequeue_stall(fq_if_t *fqs, fq_t *flowq, fq_if_classq_t *fq_cl,
    u_int64_t *now)
{
 u_int64_t maxgetqtime;
 if (FQ_IS_DELAYHIGH(flowq) || flowq->fq_getqtime == 0 ||
     fq_empty(flowq) ||
     flowq->fq_bytes < FQ_MIN_FC_THRESHOLD_BYTES)
  return;
 maxgetqtime = flowq->fq_getqtime + fqs->fqs_update_interval;
 if ((*now) > maxgetqtime) {




  FQ_SET_DELAY_HIGH(flowq);
  fq_cl->fcl_stat.fcl_dequeue_stall++;
 }
}
