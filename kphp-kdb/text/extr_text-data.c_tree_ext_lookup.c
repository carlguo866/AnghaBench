
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int x; struct TYPE_5__* right; struct TYPE_5__* left; } ;
typedef TYPE_1__ tree_ext_t ;


 TYPE_1__* NIL ;

__attribute__((used)) static inline tree_ext_t *tree_ext_lookup (tree_ext_t *T, int x) {
  while (T != NIL && x != T->x) {
    T = (x < T->x) ? T->left : T->right;
  }
  return T;
}
