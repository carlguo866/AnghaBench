
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slist {int dummy; } ;
struct block {struct slist* stmts; } ;
struct arth {struct block* b; int regno; struct slist* s; } ;
typedef int compiler_state_t ;


 int BPF_ALU ;
 int BPF_JEQ ;
 int BPF_JMP ;
 int BPF_SUB ;
 int BPF_X ;
 int JMP (int) ;
 int free_reg (int *,int ) ;
 int gen_and (struct block*,struct block*) ;
 int gen_not (struct block*) ;
 struct block* new_block (int *,int) ;
 struct slist* new_stmt (int *,int) ;
 int sappend (struct slist*,struct slist*) ;
 struct slist* xfer_to_a (int *,struct arth*) ;
 struct slist* xfer_to_x (int *,struct arth*) ;

struct block *
gen_relation(compiler_state_t *cstate, int code, struct arth *a0,
    struct arth *a1, int reversed)
{
 struct slist *s0, *s1, *s2;
 struct block *b, *tmp;

 s0 = xfer_to_x(cstate, a1);
 s1 = xfer_to_a(cstate, a0);
 if (code == BPF_JEQ) {
  s2 = new_stmt(cstate, BPF_ALU|BPF_SUB|BPF_X);
  b = new_block(cstate, JMP(code));
  sappend(s1, s2);
 }
 else
  b = new_block(cstate, BPF_JMP|code|BPF_X);
 if (reversed)
  gen_not(b);

 sappend(s0, s1);
 sappend(a1->s, s0);
 sappend(a0->s, a1->s);

 b->stmts = a0->s;

 free_reg(cstate, a0->regno);
 free_reg(cstate, a1->regno);


 if (a0->b) {
  if (a1->b) {
   gen_and(a0->b, tmp = a1->b);
  }
  else
   tmp = a0->b;
 } else
  tmp = a1->b;

 if (tmp)
  gen_and(tmp, b);

 return b;
}
