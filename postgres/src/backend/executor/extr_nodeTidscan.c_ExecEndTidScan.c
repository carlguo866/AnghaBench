
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ ps_ResultTupleSlot; } ;
struct TYPE_5__ {scalar_t__ ss_ScanTupleSlot; TYPE_3__ ps; scalar_t__ ss_currentScanDesc; } ;
struct TYPE_6__ {TYPE_1__ ss; } ;
typedef TYPE_2__ TidScanState ;


 int ExecClearTuple (scalar_t__) ;
 int ExecFreeExprContext (TYPE_3__*) ;
 int table_endscan (scalar_t__) ;

void
ExecEndTidScan(TidScanState *node)
{
 if (node->ss.ss_currentScanDesc)
  table_endscan(node->ss.ss_currentScanDesc);




 ExecFreeExprContext(&node->ss.ps);




 if (node->ss.ps.ps_ResultTupleSlot)
  ExecClearTuple(node->ss.ps.ps_ResultTupleSlot);
 ExecClearTuple(node->ss.ss_ScanTupleSlot);
}
