
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int use_operand_p ;
typedef int tree ;
struct TYPE_5__ {int iter_type; } ;
typedef TYPE_1__ ssa_op_iter ;
typedef int def_operand_p ;


 scalar_t__ PHI_NODE ;
 int SSA_OP_VMUSTKILL ;
 scalar_t__ TREE_CODE (int ) ;
 int gcc_assert (int) ;
 int op_iter_init (TYPE_1__*,int ,int ) ;
 int op_iter_next_maymustdef (int *,int *,TYPE_1__*) ;
 int ssa_op_iter_maymustdef ;

__attribute__((used)) static inline void
op_iter_init_mustdef (ssa_op_iter *ptr, tree stmt, use_operand_p *kill,
       def_operand_p *def)
{
  gcc_assert (TREE_CODE (stmt) != PHI_NODE);

  op_iter_init (ptr, stmt, SSA_OP_VMUSTKILL);
  ptr->iter_type = ssa_op_iter_maymustdef;
  op_iter_next_maymustdef (kill, def, ptr);
}
