
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct binary_operation_iterator {int pos; void* B; void* A; int (* jump_to ) (void*,int ) ;} ;
typedef void* iterator_t ;


 int binary_intersection_iterator_jump_to (void*,int ) ;
 struct binary_operation_iterator* zmalloc (int) ;

iterator_t build_binary_intersection_iterator (iterator_t A, iterator_t B) {
  struct binary_operation_iterator *I = zmalloc (sizeof (struct binary_operation_iterator));
  I->jump_to = binary_intersection_iterator_jump_to;
  I->pos = -1;
  I->A = A;
  I->B = B;
  binary_intersection_iterator_jump_to ((iterator_t) I, 0);
  return (iterator_t) I;
}
