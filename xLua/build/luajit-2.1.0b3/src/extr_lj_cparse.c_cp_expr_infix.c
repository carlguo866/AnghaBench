
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int u32; void* id; int i32; } ;
typedef TYPE_1__ CPValue ;
typedef int CPState ;


 void* CTID_INT32 ;
 char CTOK_ANDAND ;
 char CTOK_EQ ;
 char CTOK_GE ;
 char CTOK_LE ;
 char CTOK_NE ;
 char CTOK_OROR ;
 char CTOK_SHL ;
 char CTOK_SHR ;
 int LJ_ERR_BADVAL ;
 int cp_check (int *,char) ;
 int cp_err (int *,int ) ;
 int cp_expr_comma (int *,TYPE_1__*) ;
 int cp_expr_sub (int *,TYPE_1__*,int) ;
 int cp_expr_unary (int *,TYPE_1__*) ;
 int cp_opt (int *,char) ;

__attribute__((used)) static void cp_expr_infix(CPState *cp, CPValue *k, int pri)
{
  CPValue k2;
  k2.u32 = 0; k2.id = 0;
  for (;;) {
    switch (pri) {
    case 0:
      if (cp_opt(cp, '?')) {
 CPValue k3;
 cp_expr_comma(cp, &k2);
 cp_check(cp, ':');
 cp_expr_sub(cp, &k3, 0);
 k->u32 = k->u32 ? k2.u32 : k3.u32;
 k->id = k2.id > k3.id ? k2.id : k3.id;
 continue;
      }
    case 1:
      if (cp_opt(cp, CTOK_OROR)) {
 cp_expr_sub(cp, &k2, 2); k->i32 = k->u32 || k2.u32; k->id = CTID_INT32;
 continue;
      }
    case 2:
      if (cp_opt(cp, CTOK_ANDAND)) {
 cp_expr_sub(cp, &k2, 3); k->i32 = k->u32 && k2.u32; k->id = CTID_INT32;
 continue;
      }
    case 3:
      if (cp_opt(cp, '|')) {
 cp_expr_sub(cp, &k2, 4); k->u32 = k->u32 | k2.u32; goto arith_result;
      }
    case 4:
      if (cp_opt(cp, '^')) {
 cp_expr_sub(cp, &k2, 5); k->u32 = k->u32 ^ k2.u32; goto arith_result;
      }
    case 5:
      if (cp_opt(cp, '&')) {
 cp_expr_sub(cp, &k2, 6); k->u32 = k->u32 & k2.u32; goto arith_result;
      }
    case 6:
      if (cp_opt(cp, CTOK_EQ)) {
 cp_expr_sub(cp, &k2, 7); k->i32 = k->u32 == k2.u32; k->id = CTID_INT32;
 continue;
      } else if (cp_opt(cp, CTOK_NE)) {
 cp_expr_sub(cp, &k2, 7); k->i32 = k->u32 != k2.u32; k->id = CTID_INT32;
 continue;
      }
    case 7:
      if (cp_opt(cp, '<')) {
 cp_expr_sub(cp, &k2, 8);
 if (k->id == CTID_INT32 && k2.id == CTID_INT32)
   k->i32 = k->i32 < k2.i32;
 else
   k->i32 = k->u32 < k2.u32;
 k->id = CTID_INT32;
 continue;
      } else if (cp_opt(cp, '>')) {
 cp_expr_sub(cp, &k2, 8);
 if (k->id == CTID_INT32 && k2.id == CTID_INT32)
   k->i32 = k->i32 > k2.i32;
 else
   k->i32 = k->u32 > k2.u32;
 k->id = CTID_INT32;
 continue;
      } else if (cp_opt(cp, CTOK_LE)) {
 cp_expr_sub(cp, &k2, 8);
 if (k->id == CTID_INT32 && k2.id == CTID_INT32)
   k->i32 = k->i32 <= k2.i32;
 else
   k->i32 = k->u32 <= k2.u32;
 k->id = CTID_INT32;
 continue;
      } else if (cp_opt(cp, CTOK_GE)) {
 cp_expr_sub(cp, &k2, 8);
 if (k->id == CTID_INT32 && k2.id == CTID_INT32)
   k->i32 = k->i32 >= k2.i32;
 else
   k->i32 = k->u32 >= k2.u32;
 k->id = CTID_INT32;
 continue;
      }
    case 8:
      if (cp_opt(cp, CTOK_SHL)) {
 cp_expr_sub(cp, &k2, 9); k->u32 = k->u32 << k2.u32;
 continue;
      } else if (cp_opt(cp, CTOK_SHR)) {
 cp_expr_sub(cp, &k2, 9);
 if (k->id == CTID_INT32)
   k->i32 = k->i32 >> k2.i32;
 else
   k->u32 = k->u32 >> k2.u32;
 continue;
      }
    case 9:
      if (cp_opt(cp, '+')) {
 cp_expr_sub(cp, &k2, 10); k->u32 = k->u32 + k2.u32;
      arith_result:
 if (k2.id > k->id) k->id = k2.id;
 continue;
      } else if (cp_opt(cp, '-')) {
 cp_expr_sub(cp, &k2, 10); k->u32 = k->u32 - k2.u32; goto arith_result;
      }
    case 10:
      if (cp_opt(cp, '*')) {
 cp_expr_unary(cp, &k2); k->u32 = k->u32 * k2.u32; goto arith_result;
      } else if (cp_opt(cp, '/')) {
 cp_expr_unary(cp, &k2);
 if (k2.id > k->id) k->id = k2.id;
 if (k2.u32 == 0 ||
     (k->id == CTID_INT32 && k->u32 == 0x80000000u && k2.i32 == -1))
   cp_err(cp, LJ_ERR_BADVAL);
 if (k->id == CTID_INT32)
   k->i32 = k->i32 / k2.i32;
 else
   k->u32 = k->u32 / k2.u32;
 continue;
      } else if (cp_opt(cp, '%')) {
 cp_expr_unary(cp, &k2);
 if (k2.id > k->id) k->id = k2.id;
 if (k2.u32 == 0 ||
     (k->id == CTID_INT32 && k->u32 == 0x80000000u && k2.i32 == -1))
   cp_err(cp, LJ_ERR_BADVAL);
 if (k->id == CTID_INT32)
   k->i32 = k->i32 % k2.i32;
 else
   k->u32 = k->u32 % k2.u32;
 continue;
      }
    default:
      return;
    }
  }
}
