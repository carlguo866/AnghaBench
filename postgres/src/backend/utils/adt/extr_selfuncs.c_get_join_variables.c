
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* rel; } ;
typedef TYPE_2__ VariableStatData ;
struct TYPE_10__ {int syn_lefthand; int syn_righthand; } ;
struct TYPE_8__ {int relids; } ;
typedef TYPE_3__ SpecialJoinInfo ;
typedef int PlannerInfo ;
typedef int Node ;
typedef int List ;


 int ERROR ;
 scalar_t__ bms_is_subset (int ,int ) ;
 int elog (int ,char*) ;
 int examine_variable (int *,int *,int ,TYPE_2__*) ;
 scalar_t__ linitial (int *) ;
 int list_length (int *) ;
 scalar_t__ lsecond (int *) ;

void
get_join_variables(PlannerInfo *root, List *args, SpecialJoinInfo *sjinfo,
       VariableStatData *vardata1, VariableStatData *vardata2,
       bool *join_is_reversed)
{
 Node *left,
      *right;

 if (list_length(args) != 2)
  elog(ERROR, "join operator should take two arguments");

 left = (Node *) linitial(args);
 right = (Node *) lsecond(args);

 examine_variable(root, left, 0, vardata1);
 examine_variable(root, right, 0, vardata2);

 if (vardata1->rel &&
  bms_is_subset(vardata1->rel->relids, sjinfo->syn_righthand))
  *join_is_reversed = 1;
 else if (vardata2->rel &&
    bms_is_subset(vardata2->rel->relids, sjinfo->syn_lefthand))
  *join_is_reversed = 1;
 else
  *join_is_reversed = 0;
}
