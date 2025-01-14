
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_13__ {size_t last_var; size_t num_args; scalar_t__ opcodes; size_t last_live_range; TYPE_3__* live_range; } ;
typedef TYPE_2__ zend_op_array ;
struct TYPE_14__ {size_t start; size_t end; size_t var; } ;
typedef TYPE_3__ zend_live_range ;
struct TYPE_12__ {TYPE_4__* root; } ;
struct TYPE_17__ {scalar_t__ children; TYPE_1__ ptr; } ;
struct TYPE_15__ {TYPE_7__ node; TYPE_5__* execute_data; } ;
typedef TYPE_4__ zend_generator ;
struct TYPE_16__ {scalar_t__ opline; } ;
typedef TYPE_5__ zend_execute_data ;
typedef size_t uint32_t ;
struct TYPE_11__ {TYPE_2__ op_array; } ;


 TYPE_10__* EX (int ) ;
 int EX_CALL_INFO () ;
 size_t EX_NUM_ARGS () ;
 int ZEND_CALL_CLOSURE ;
 int ZEND_CALL_FREE_EXTRA_ARGS ;
 int ZEND_CALL_HAS_SYMBOL_TABLE ;
 int ZEND_CALL_RELEASE_THIS ;
 size_t ZEND_LIVE_LOOP ;
 size_t ZEND_LIVE_MASK ;
 size_t ZEND_LIVE_TMPVAR ;
 int func ;
 TYPE_4__* zend_generator_get_child (TYPE_7__*,TYPE_4__*) ;

__attribute__((used)) static uint32_t calc_gc_buffer_size(zend_generator *generator)
{
 uint32_t size = 4;
 if (generator->execute_data) {
  zend_execute_data *execute_data = generator->execute_data;
  zend_op_array *op_array = &EX(func)->op_array;


  if (!(EX_CALL_INFO() & ZEND_CALL_HAS_SYMBOL_TABLE)) {
   size += op_array->last_var;
  }

  if (EX_CALL_INFO() & ZEND_CALL_FREE_EXTRA_ARGS) {
   size += EX_NUM_ARGS() - op_array->num_args;
  }
  size += (EX_CALL_INFO() & ZEND_CALL_RELEASE_THIS) != 0;
  size += (EX_CALL_INFO() & ZEND_CALL_CLOSURE) != 0;


  if (execute_data->opline != op_array->opcodes) {

   uint32_t i, op_num = execute_data->opline - op_array->opcodes - 1;
   for (i = 0; i < op_array->last_live_range; i++) {
    const zend_live_range *range = &op_array->live_range[i];
    if (range->start > op_num) {

     break;
    } else if (op_num < range->end) {

     uint32_t kind = range->var & ZEND_LIVE_MASK;
     if (kind == ZEND_LIVE_TMPVAR || kind == ZEND_LIVE_LOOP) {
      size++;
     }
    }
   }
  }


  if (generator->node.children == 0) {
   zend_generator *root = generator->node.ptr.root;
   while (root != generator) {
    root = zend_generator_get_child(&root->node, generator);
    size++;
   }
  }
 }
 return size;
}
