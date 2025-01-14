
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int zval ;
struct TYPE_16__ {int op1_use; int op2_use; int op2_def; int op2_use_chain; } ;
typedef TYPE_3__ zend_ssa_op ;
struct TYPE_14__ {void* constant; } ;
struct TYPE_17__ {int opcode; int op2_type; TYPE_1__ op1; void* op1_type; } ;
typedef TYPE_4__ zend_op ;
typedef int zend_bool ;
struct TYPE_15__ {TYPE_6__* ssa; int op_array; } ;
struct TYPE_18__ {TYPE_2__ scdf; } ;
typedef TYPE_5__ sccp_ctx ;
struct TYPE_19__ {int ops; } ;


 void* IS_CONST ;
 int IS_STRING ;
 int IS_UNUSED ;
 int ZEND_ASSERT (int) ;



 int ZEND_IS_EQUAL ;
 int ZEND_QM_ASSIGN ;


 int ZVAL_COPY (int *,int *) ;
 int ZVAL_FALSE (int *) ;
 int Z_STR (int ) ;
 int Z_TYPE (int ) ;
 scalar_t__ can_replace_op1 (int ,TYPE_4__*,TYPE_3__*) ;
 void* zend_optimizer_add_literal (int ,int *) ;
 scalar_t__ zend_optimizer_update_op1_const (int ,TYPE_4__*,int *) ;
 int zend_ssa_unlink_use_chain (TYPE_6__*,TYPE_3__*,int) ;
 int zend_string_hash_val (int ) ;
 int zval_ptr_dtor_nogc (int *) ;

__attribute__((used)) static zend_bool try_replace_op1(
  sccp_ctx *ctx, zend_op *opline, zend_ssa_op *ssa_op, int var, zval *value) {
 if (ssa_op->op1_use == var && can_replace_op1(ctx->scdf.op_array, opline, ssa_op)) {
  zval zv;
  ZVAL_COPY(&zv, value);
  if (zend_optimizer_update_op1_const(ctx->scdf.op_array, opline, &zv)) {
   return 1;
  } else {

   switch (opline->opcode) {
    case 132:
     opline->opcode = ZEND_IS_EQUAL;

    case 131:
    case 128:
    case 129:
     if (Z_TYPE(zv) == IS_STRING) {
      zend_string_hash_val(Z_STR(zv));
     }
     opline->op1.constant = zend_optimizer_add_literal(ctx->scdf.op_array, &zv);
     opline->op1_type = IS_CONST;
     return 1;
    case 130:
     zval_ptr_dtor_nogc(&zv);
     ZVAL_FALSE(&zv);
     opline->opcode = ZEND_QM_ASSIGN;
     opline->op1_type = IS_CONST;
     opline->op1.constant = zend_optimizer_add_literal(ctx->scdf.op_array, &zv);
     opline->op2_type = IS_UNUSED;
     if (ssa_op->op2_use >= 0) {
      ZEND_ASSERT(ssa_op->op2_def == -1);
      zend_ssa_unlink_use_chain(ctx->scdf.ssa, ssa_op - ctx->scdf.ssa->ops, ssa_op->op2_use);
      ssa_op->op2_use = -1;
      ssa_op->op2_use_chain = -1;
     }
     return 1;
    default:
     break;
   }
   zval_ptr_dtor_nogc(&zv);
  }
 }
 return 0;
}
