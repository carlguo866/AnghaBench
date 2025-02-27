
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_6__ {int q_zios_this_txg; int q_total_zio_size_this_txg; } ;
typedef TYPE_1__ dsl_scan_io_queue_t ;
struct TYPE_7__ {int * blk_dva; } ;
typedef TYPE_2__ blkptr_t ;


 int BP_GET_NDVAS (TYPE_2__ const*) ;
 scalar_t__ DVA_GET_ASIZE (int *) ;

__attribute__((used)) static void
scan_io_queues_update_zio_stats(dsl_scan_io_queue_t *q, const blkptr_t *bp)
{
 int i;
 uint64_t cur_size = 0;

 for (i = 0; i < BP_GET_NDVAS(bp); i++) {
  cur_size += DVA_GET_ASIZE(&bp->blk_dva[i]);
 }

 q->q_total_zio_size_this_txg += cur_size;
 q->q_zios_this_txg++;
}
