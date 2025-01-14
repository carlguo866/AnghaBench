
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_9__ {scalar_t__ left; scalar_t__ right; } ;
struct TYPE_8__ {int fs; int tok; } ;
typedef TYPE_1__ LexState ;
typedef int ExpDesc ;
typedef size_t BinOpr ;


 size_t OPR_NOBINOPR ;
 int bcemit_binop (int ,size_t,int *,int *) ;
 int bcemit_binop_left (int ,size_t,int *) ;
 int expr_unop (TYPE_1__*,int *) ;
 int lj_lex_next (TYPE_1__*) ;
 TYPE_4__* priority ;
 int synlevel_begin (TYPE_1__*) ;
 int synlevel_end (TYPE_1__*) ;
 size_t token2binop (int ) ;

__attribute__((used)) static BinOpr expr_binop(LexState *ls, ExpDesc *v, uint32_t limit)
{
  BinOpr op;
  synlevel_begin(ls);
  expr_unop(ls, v);
  op = token2binop(ls->tok);
  while (op != OPR_NOBINOPR && priority[op].left > limit) {
    ExpDesc v2;
    BinOpr nextop;
    lj_lex_next(ls);
    bcemit_binop_left(ls->fs, op, v);

    nextop = expr_binop(ls, &v2, priority[op].right);
    bcemit_binop(ls->fs, op, v, &v2);
    op = nextop;
  }
  synlevel_end(ls);
  return op;
}
