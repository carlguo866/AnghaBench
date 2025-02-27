
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int value; } ;
struct TYPE_5__ {int off; TYPE_1__ var_off; } ;
struct nfp_bpf_reg_state {int var_off; TYPE_2__ reg; } ;
struct bpf_verifier_env {int dummy; } ;
struct TYPE_6__ {int value; } ;
struct bpf_reg_state {scalar_t__ type; int off; TYPE_3__ var_off; } ;
typedef int s64 ;


 scalar_t__ PTR_TO_STACK ;
 int pr_vlog (struct bpf_verifier_env*,char*,char const*,...) ;
 int tnum_is_const (TYPE_3__) ;

__attribute__((used)) static int
nfp_bpf_stack_arg_ok(const char *fname, struct bpf_verifier_env *env,
       const struct bpf_reg_state *reg,
       struct nfp_bpf_reg_state *old_arg)
{
 s64 off, old_off;

 if (reg->type != PTR_TO_STACK) {
  pr_vlog(env, "%s: unsupported ptr type %d\n",
   fname, reg->type);
  return 0;
 }
 if (!tnum_is_const(reg->var_off)) {
  pr_vlog(env, "%s: variable pointer\n", fname);
  return 0;
 }

 off = reg->var_off.value + reg->off;
 if (-off % 4) {
  pr_vlog(env, "%s: unaligned stack pointer %lld\n", fname, -off);
  return 0;
 }


 if (!old_arg)
  return 1;

 old_off = old_arg->reg.var_off.value + old_arg->reg.off;
 old_arg->var_off |= off != old_off;

 return 1;
}
