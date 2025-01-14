
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef enum ssa_prop_result { ____Placeholder_ssa_prop_result } ssa_prop_result ;
typedef TYPE_3__* edge ;
typedef int basic_block ;
struct TYPE_8__ {TYPE_2__* dest; TYPE_1__* src; } ;
struct TYPE_7__ {int index; } ;
struct TYPE_6__ {int index; } ;


 scalar_t__ COMPARISON_CLASS_P (scalar_t__) ;
 scalar_t__ COND_EXPR_COND (scalar_t__) ;
 scalar_t__ SSA_NAME ;
 int SSA_PROP_INTERESTING ;
 int SSA_PROP_VARYING ;
 int TDF_DETAILS ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 int bb_for_stmt (scalar_t__) ;
 int boolean_type_node ;
 scalar_t__ dump_file ;
 int dump_flags ;
 TYPE_3__* find_taken_edge (int ,scalar_t__) ;
 scalar_t__ fold_binary (scalar_t__,int ,scalar_t__,scalar_t__) ;
 int fprintf (scalar_t__,char*,...) ;
 scalar_t__ get_last_copy_of (scalar_t__) ;
 int print_generic_stmt (scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static enum ssa_prop_result
copy_prop_visit_cond_stmt (tree stmt, edge *taken_edge_p)
{
  enum ssa_prop_result retval;
  tree cond;

  cond = COND_EXPR_COND (stmt);
  retval = SSA_PROP_VARYING;



  if (COMPARISON_CLASS_P (cond)
      && TREE_CODE (TREE_OPERAND (cond, 0)) == SSA_NAME
      && TREE_CODE (TREE_OPERAND (cond, 1)) == SSA_NAME)
    {
      tree op0 = get_last_copy_of (TREE_OPERAND (cond, 0));
      tree op1 = get_last_copy_of (TREE_OPERAND (cond, 1));


      if (dump_file && (dump_flags & TDF_DETAILS))
 {
   fprintf (dump_file, "Trying to determine truth value of ");
   fprintf (dump_file, "predicate ");
   print_generic_stmt (dump_file, cond, 0);
 }



      if (op0 == op1)
 {
   tree folded_cond = fold_binary (TREE_CODE (cond), boolean_type_node,
       op0, op1);
   if (folded_cond)
     {
       basic_block bb = bb_for_stmt (stmt);
       *taken_edge_p = find_taken_edge (bb, folded_cond);
       if (*taken_edge_p)
  retval = SSA_PROP_INTERESTING;
     }
 }
    }

  if (dump_file && (dump_flags & TDF_DETAILS) && *taken_edge_p)
    fprintf (dump_file, "\nConditional will always take edge %d->%d\n",
      (*taken_edge_p)->src->index, (*taken_edge_p)->dest->index);

  return retval;
}
