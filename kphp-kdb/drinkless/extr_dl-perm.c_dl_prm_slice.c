
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* dl_prm_ptr ;
struct TYPE_4__ {int b; int a; struct TYPE_4__* r; struct TYPE_4__* l; } ;


 int LEN (TYPE_1__*) ;

int dl_prm_slice (dl_prm_ptr v, int *a, int n, int offset) {
  if (n == 0 || v == ((void*)0)) {
    return 0;
  }
  int ln = LEN (v->l), res = 0;
  if (offset < ln) {
    res = dl_prm_slice (v->l, a, n, offset);
    a += res;
    n -= res;
    offset = 0;
  } else {
    offset -= ln;
  }

  int vn = v->b - v->a;
  if (offset < v->b - v->a) {
    int x;
    for (x = v->a + offset; x < v->b && n > 0; x++) {
      *a++ = x;
      n--;
      res++;
    }
    offset = 0;
  } else {
    offset -= vn;
  }

  res += dl_prm_slice (v->r, a, n, offset);

  return res;
}
