
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item {scalar_t__ y; struct item* left; struct item* right; } ;


 int update_counters (struct item*) ;

__attribute__((used)) static struct item *tree_merge (struct item *L, struct item *R) {
  if (!L) { return R; }
  if (!R) { return L; }
  if (L->y > R->y) {
    L->right = tree_merge (L->right, R);
    update_counters (L);
    return L;
  } else {
    R->left = tree_merge (L, R->left);
    update_counters (R);
    return R;
  }
}
