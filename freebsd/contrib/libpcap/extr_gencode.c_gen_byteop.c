
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {int k; } ;
struct slist {TYPE_1__ s; } ;
struct block {struct slist* stmts; } ;
typedef int compiler_state_t ;
typedef int bpf_int32 ;


 int BPF_ALU ;
 int BPF_AND ;
 int BPF_B ;
 int BPF_JEQ ;
 int BPF_K ;
 int BPF_OR ;
 int JMP (int ) ;
 int OR_LINKHDR ;
 int abort () ;
 struct block* gen_cmp (int *,int ,int ,int ,int ) ;
 struct block* gen_cmp_gt (int *,int ,int ,int ,int ) ;
 struct block* gen_cmp_lt (int *,int ,int ,int ,int ) ;
 int gen_not (struct block*) ;
 struct block* new_block (int *,int ) ;
 struct slist* new_stmt (int *,int) ;

struct block *
gen_byteop(compiler_state_t *cstate, int op, int idx, int val)
{
 struct block *b;
 struct slist *s;

 switch (op) {
 default:
  abort();

 case '=':
  return gen_cmp(cstate, OR_LINKHDR, (u_int)idx, BPF_B, (bpf_int32)val);

 case '<':
  b = gen_cmp_lt(cstate, OR_LINKHDR, (u_int)idx, BPF_B, (bpf_int32)val);
  return b;

 case '>':
  b = gen_cmp_gt(cstate, OR_LINKHDR, (u_int)idx, BPF_B, (bpf_int32)val);
  return b;

 case '|':
  s = new_stmt(cstate, BPF_ALU|BPF_OR|BPF_K);
  break;

 case '&':
  s = new_stmt(cstate, BPF_ALU|BPF_AND|BPF_K);
  break;
 }
 s->s.k = val;
 b = new_block(cstate, JMP(BPF_JEQ));
 b->stmts = s;
 gen_not(b);

 return b;
}
