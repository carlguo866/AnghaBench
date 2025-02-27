
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item {struct item* right; struct item* left; int key; int key_len; } ;


 int assert (int) ;
 int key_cmp2 (int,int const*,int ,int ,int) ;
 int min (int,int) ;

__attribute__((used)) static struct item *tree_lookup_next (struct item *T, int key_len, const int *key, int lc, int rc) {
  if (!T) {
    return 0;
  }
  int c = key_cmp2 (key_len, key, T->key_len, T->key, min (lc, rc) - 1);
  if (c < 0) {
    assert (-c >= min (lc, rc));
    struct item *N = tree_lookup_next (T->left, key_len, key, lc, -c);
    return N ? N : T;
  } else {
    if (c == 0) { c = 2000; }
    assert (c >= min (lc, rc));
    return tree_lookup_next (T->right, key_len, key, c, rc);
  }
}
