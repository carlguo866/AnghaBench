
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ss_ScanTupleSlot; int ps; } ;
struct TYPE_8__ {int numtrans; TYPE_1__ ss; scalar_t__ hashcontext; scalar_t__* aggcontexts; TYPE_2__* pertrans; scalar_t__ sort_out; scalar_t__ sort_in; int maxsets; } ;
struct TYPE_7__ {scalar_t__* sortstates; } ;
typedef int PlanState ;
typedef TYPE_2__* AggStatePerTrans ;
typedef TYPE_3__ AggState ;


 int ExecClearTuple (int ) ;
 int ExecEndNode (int *) ;
 int ExecFreeExprContext (int *) ;
 int Max (int ,int) ;
 int ReScanExprContext (scalar_t__) ;
 int * outerPlanState (TYPE_3__*) ;
 int tuplesort_end (scalar_t__) ;

void
ExecEndAgg(AggState *node)
{
 PlanState *outerPlan;
 int transno;
 int numGroupingSets = Max(node->maxsets, 1);
 int setno;



 if (node->sort_in)
  tuplesort_end(node->sort_in);
 if (node->sort_out)
  tuplesort_end(node->sort_out);

 for (transno = 0; transno < node->numtrans; transno++)
 {
  AggStatePerTrans pertrans = &node->pertrans[transno];

  for (setno = 0; setno < numGroupingSets; setno++)
  {
   if (pertrans->sortstates[setno])
    tuplesort_end(pertrans->sortstates[setno]);
  }
 }


 for (setno = 0; setno < numGroupingSets; setno++)
  ReScanExprContext(node->aggcontexts[setno]);
 if (node->hashcontext)
  ReScanExprContext(node->hashcontext);






 ExecFreeExprContext(&node->ss.ps);


 ExecClearTuple(node->ss.ss_ScanTupleSlot);

 outerPlan = outerPlanState(node);
 ExecEndNode(outerPlan);
}
