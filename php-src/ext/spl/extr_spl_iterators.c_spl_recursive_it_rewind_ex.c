
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_10__ ;


typedef int zval ;
struct TYPE_17__ {TYPE_2__* funcs; } ;
typedef TYPE_3__ zend_object_iterator ;
typedef int spl_sub_iterator ;
struct TYPE_18__ {int level; int in_iteration; TYPE_6__* beginIteration; int ce; TYPE_10__* iterators; TYPE_6__* endChildren; } ;
typedef TYPE_4__ spl_recursive_it_object ;
struct TYPE_15__ {scalar_t__ scope; } ;
struct TYPE_19__ {TYPE_1__ common; } ;
struct TYPE_16__ {int (* rewind ) (TYPE_3__*) ;} ;
struct TYPE_14__ {TYPE_3__* iterator; int state; int zobject; } ;


 int EG (int ) ;
 int RS_START ;
 int SPL_FETCH_SUB_ITERATOR (TYPE_3__*,TYPE_4__*) ;
 int Z_OBJ_P (int *) ;
 TYPE_10__* erealloc (TYPE_10__*,int) ;
 int exception ;
 scalar_t__ spl_ce_RecursiveIteratorIterator ;
 int spl_recursive_it_move_forward_ex (TYPE_4__*,int *) ;
 int stub1 (TYPE_3__*) ;
 int zend_call_method_with_0_params (int ,int ,TYPE_6__**,char*,int *) ;
 int zend_iterator_dtor (TYPE_3__*) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void spl_recursive_it_rewind_ex(spl_recursive_it_object *object, zval *zthis)
{
 zend_object_iterator *sub_iter;

 SPL_FETCH_SUB_ITERATOR(sub_iter, object);

 while (object->level) {
  sub_iter = object->iterators[object->level].iterator;
  zend_iterator_dtor(sub_iter);
  zval_ptr_dtor(&object->iterators[object->level--].zobject);
  if (!EG(exception) && (!object->endChildren || object->endChildren->common.scope != spl_ce_RecursiveIteratorIterator)) {
   zend_call_method_with_0_params(Z_OBJ_P(zthis), object->ce, &object->endChildren, "endchildren", ((void*)0));
  }
 }
 object->iterators = erealloc(object->iterators, sizeof(spl_sub_iterator));
 object->iterators[0].state = RS_START;
 sub_iter = object->iterators[0].iterator;
 if (sub_iter->funcs->rewind) {
  sub_iter->funcs->rewind(sub_iter);
 }
 if (!EG(exception) && object->beginIteration && !object->in_iteration) {
  zend_call_method_with_0_params(Z_OBJ_P(zthis), object->ce, &object->beginIteration, "beginIteration", ((void*)0));
 }
 object->in_iteration = 1;
 spl_recursive_it_move_forward_ex(object, zthis);
}
