
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ pi; struct TYPE_7__* next; int var; } ;
typedef TYPE_2__ zend_ssa_phi ;
struct TYPE_8__ {TYPE_2__* phis; } ;
typedef TYPE_3__ zend_ssa_block ;
struct TYPE_6__ {int blocks_count; } ;
struct TYPE_9__ {TYPE_1__ cfg; TYPE_3__* blocks; } ;
typedef TYPE_4__ zend_ssa ;
typedef int zend_op_array ;


 int IS_CV ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 int zend_dump_op_array_name (int const*) ;
 int zend_dump_var (int const*,int ,int ) ;

void zend_dump_phi_placement(const zend_op_array *op_array, const zend_ssa *ssa)
{
 int j;
 zend_ssa_block *ssa_blocks = ssa->blocks;
 int blocks_count = ssa->cfg.blocks_count;

 fprintf(stderr, "\nSSA Phi() Placement for \"");
 zend_dump_op_array_name(op_array);
 fprintf(stderr, "\"\n");
 for (j = 0; j < blocks_count; j++) {
  if (ssa_blocks && ssa_blocks[j].phis) {
   zend_ssa_phi *p = ssa_blocks[j].phis;
   int first = 1;

   fprintf(stderr, "  BB%d:\n", j);
   if (p->pi >= 0) {
    fprintf(stderr, "    ; pi={");
   } else {
    fprintf(stderr, "    ; phi={");
   }
   do {
    if (first) {
     first = 0;
    } else {
     fprintf(stderr, ", ");
    }
    zend_dump_var(op_array, IS_CV, p->var);
    p = p->next;
   } while (p);
   fprintf(stderr, "}\n");
  }
 }
}
