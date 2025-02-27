
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int flags; scalar_t__ type; struct TYPE_9__* last; struct TYPE_9__* right; struct TYPE_9__* left; } ;
typedef TYPE_1__ query_t ;


 int Q_IS_SMALLISH (TYPE_1__*) ;
 TYPE_1__* apply_quantifier (int,TYPE_1__*) ;
 TYPE_1__* new_qnode (scalar_t__,int ) ;
 scalar_t__ q_and ;
 scalar_t__ q_or ;
 int relax_max_res (TYPE_1__*) ;

query_t *lift_quantifier (int quantifier, query_t *Q) {
  if ((Q->flags & 1) || !Q_IS_SMALLISH (Q)) {
    return 0;
  }
  if (Q->type == q_and || Q->type == q_or) {
    query_t *A = lift_quantifier (quantifier, Q->left);
    query_t *B = lift_quantifier (quantifier, Q->right);
    if (!A) {
      return B;
    }
    if (!B) {
      return A;
    }
    query_t *C = new_qnode (Q->type, 0);
    C->left = A;
    C->right = B;
    relax_max_res (C);
    if (B->type == Q->type && !(B->flags & 1)) {
      C->last = B->last;
    } else {
      C->last = C;
    }
    return C;
  }
  return apply_quantifier (quantifier, Q);
}
