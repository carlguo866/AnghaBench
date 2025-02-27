
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ce_flags; struct TYPE_6__* parent; } ;
typedef TYPE_1__ zend_class_entry ;
typedef scalar_t__ uint32_t ;


 int ZEND_ACC_LINKED ;
 scalar_t__ get_class_entry_rank (TYPE_1__*) ;

__attribute__((used)) static zend_class_entry *join_class_entries(
  zend_class_entry *ce1, zend_class_entry *ce2, int *is_instanceof) {
 uint32_t rank1, rank2;
 if (ce1 == ce2) {
  return ce1;
 }
 if (!ce1 || !ce2) {
  return ((void*)0);
 }

 rank1 = get_class_entry_rank(ce1);
 rank2 = get_class_entry_rank(ce2);

 while (rank1 != rank2) {
  if (rank1 > rank2) {
   ce1 = !(ce1->ce_flags & ZEND_ACC_LINKED) ? ((void*)0) : ce1->parent;
   rank1--;
  } else {
   ce2 = !(ce2->ce_flags & ZEND_ACC_LINKED) ? ((void*)0) : ce2->parent;
   rank2--;
  }
 }

 while (ce1 != ce2) {
  ce1 = !(ce1->ce_flags & ZEND_ACC_LINKED) ? ((void*)0) : ce1->parent;
  ce2 = !(ce2->ce_flags & ZEND_ACC_LINKED) ? ((void*)0) : ce2->parent;
 }

 if (ce1) {
  *is_instanceof = 1;
 }
 return ce1;
}
