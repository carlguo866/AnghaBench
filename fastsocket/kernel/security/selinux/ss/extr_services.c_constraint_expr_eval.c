
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct role_datum {int dominates; } ;
struct mls_level {int dummy; } ;
struct TYPE_3__ {struct mls_level* level; } ;
struct context {int type; int role; int user; TYPE_1__ range; } ;
struct constraint_expr {int expr_type; int attr; int names; int op; struct constraint_expr* next; } ;
struct TYPE_4__ {struct role_datum** role_val_to_struct; } ;


 int BUG () ;
 int BUG_ON (int) ;
 int CEXPR_MAXDEPTH ;





 int CEXPR_TARGET ;


 int CEXPR_XTARGET ;
 int ebitmap_get_bit (int *,int ) ;
 int mls_level_dom (struct mls_level*,struct mls_level*) ;
 int mls_level_eq (struct mls_level*,struct mls_level*) ;
 int mls_level_incomp (struct mls_level*,struct mls_level*) ;
 TYPE_2__ policydb ;

__attribute__((used)) static int constraint_expr_eval(struct context *scontext,
    struct context *tcontext,
    struct context *xcontext,
    struct constraint_expr *cexpr)
{
 u32 val1, val2;
 struct context *c;
 struct role_datum *r1, *r2;
 struct mls_level *l1, *l2;
 struct constraint_expr *e;
 int s[CEXPR_MAXDEPTH];
 int sp = -1;

 for (e = cexpr; e; e = e->next) {
  switch (e->expr_type) {
  case 132:
   BUG_ON(sp < 0);
   s[sp] = !s[sp];
   break;
  case 146:
   BUG_ON(sp < 1);
   sp--;
   s[sp] &= s[sp+1];
   break;
  case 131:
   BUG_ON(sp < 1);
   sp--;
   s[sp] |= s[sp+1];
   break;
  case 145:
   if (sp == (CEXPR_MAXDEPTH-1))
    return 0;
   switch (e->attr) {
   case 128:
    val1 = scontext->user;
    val2 = tcontext->user;
    break;
   case 129:
    val1 = scontext->type;
    val2 = tcontext->type;
    break;
   case 130:
    val1 = scontext->role;
    val2 = tcontext->role;
    r1 = policydb.role_val_to_struct[val1 - 1];
    r2 = policydb.role_val_to_struct[val2 - 1];
    switch (e->op) {
    case 144:
     s[++sp] = ebitmap_get_bit(&r1->dominates,
          val2 - 1);
     continue;
    case 143:
     s[++sp] = ebitmap_get_bit(&r2->dominates,
          val1 - 1);
     continue;
    case 139:
     s[++sp] = (!ebitmap_get_bit(&r1->dominates,
            val2 - 1) &&
         !ebitmap_get_bit(&r2->dominates,
            val1 - 1));
     continue;
    default:
     break;
    }
    break;
   case 136:
    l1 = &(scontext->range.level[0]);
    l2 = &(tcontext->range.level[0]);
    goto mls_ops;
   case 137:
    l1 = &(scontext->range.level[0]);
    l2 = &(tcontext->range.level[1]);
    goto mls_ops;
   case 140:
    l1 = &(scontext->range.level[1]);
    l2 = &(tcontext->range.level[0]);
    goto mls_ops;
   case 141:
    l1 = &(scontext->range.level[1]);
    l2 = &(tcontext->range.level[1]);
    goto mls_ops;
   case 138:
    l1 = &(scontext->range.level[0]);
    l2 = &(scontext->range.level[1]);
    goto mls_ops;
   case 135:
    l1 = &(tcontext->range.level[0]);
    l2 = &(tcontext->range.level[1]);
    goto mls_ops;
mls_ops:
   switch (e->op) {
   case 142:
    s[++sp] = mls_level_eq(l1, l2);
    continue;
   case 133:
    s[++sp] = !mls_level_eq(l1, l2);
    continue;
   case 144:
    s[++sp] = mls_level_dom(l1, l2);
    continue;
   case 143:
    s[++sp] = mls_level_dom(l2, l1);
    continue;
   case 139:
    s[++sp] = mls_level_incomp(l2, l1);
    continue;
   default:
    BUG();
    return 0;
   }
   break;
   default:
    BUG();
    return 0;
   }

   switch (e->op) {
   case 142:
    s[++sp] = (val1 == val2);
    break;
   case 133:
    s[++sp] = (val1 != val2);
    break;
   default:
    BUG();
    return 0;
   }
   break;
  case 134:
   if (sp == (CEXPR_MAXDEPTH-1))
    return 0;
   c = scontext;
   if (e->attr & CEXPR_TARGET)
    c = tcontext;
   else if (e->attr & CEXPR_XTARGET) {
    c = xcontext;
    if (!c) {
     BUG();
     return 0;
    }
   }
   if (e->attr & 128)
    val1 = c->user;
   else if (e->attr & 130)
    val1 = c->role;
   else if (e->attr & 129)
    val1 = c->type;
   else {
    BUG();
    return 0;
   }

   switch (e->op) {
   case 142:
    s[++sp] = ebitmap_get_bit(&e->names, val1 - 1);
    break;
   case 133:
    s[++sp] = !ebitmap_get_bit(&e->names, val1 - 1);
    break;
   default:
    BUG();
    return 0;
   }
   break;
  default:
   BUG();
   return 0;
  }
 }

 BUG_ON(sp != 0);
 return s[0];
}
