
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct condition_with_iterator {int Iter; void* false_branch; void* true_branch; int eval; } ;
typedef int iterator_t ;
typedef void* condition_t ;


 int check_iterator_condition ;
 struct condition_with_iterator* zmalloc (int) ;

condition_t build_condition_from_iterator (iterator_t I, condition_t true_branch, condition_t false_branch) {
  struct condition_with_iterator *Cond = zmalloc (sizeof (struct condition_with_iterator));
  Cond->eval = check_iterator_condition;
  Cond->true_branch = true_branch;
  Cond->false_branch = false_branch;
  Cond->Iter = I;
  return (condition_t) Cond;
}
