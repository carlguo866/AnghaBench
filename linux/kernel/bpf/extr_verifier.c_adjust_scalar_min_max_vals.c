
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct bpf_verifier_env {int dummy; } ;
struct TYPE_23__ {int value; int mask; } ;
struct bpf_reg_state {scalar_t__ smin_value; scalar_t__ smax_value; int umin_value; int umax_value; TYPE_1__ var_off; } ;
struct bpf_insn {int code; int dst_reg; } ;
typedef scalar_t__ s64 ;



 scalar_t__ BPF_ALU64 ;


 scalar_t__ BPF_CLASS (int ) ;


 int BPF_OP (int ) ;



 void* S64_MAX ;
 void* S64_MIN ;
 int U32_MAX ;
 void* U64_MAX ;
 int __mark_reg_known (struct bpf_reg_state*,int) ;
 int __mark_reg_unbounded (struct bpf_reg_state*) ;
 int __mark_reg_unknown (struct bpf_reg_state*) ;
 int __reg_bound_offset (struct bpf_reg_state*) ;
 int __reg_deduce_bounds (struct bpf_reg_state*) ;
 int __update_reg_bounds (struct bpf_reg_state*) ;
 int coerce_reg_to_size (struct bpf_reg_state*,int) ;
 struct bpf_reg_state* cur_regs (struct bpf_verifier_env*) ;
 int mark_reg_unknown (struct bpf_verifier_env*,struct bpf_reg_state*,int ) ;
 scalar_t__ max (scalar_t__,int) ;
 scalar_t__ min (scalar_t__,int) ;
 int sanitize_val_alu (struct bpf_verifier_env*,struct bpf_insn*) ;
 int signed_add_overflows (scalar_t__,scalar_t__) ;
 int signed_sub_overflows (scalar_t__,scalar_t__) ;
 TYPE_1__ tnum_add (TYPE_1__,TYPE_1__) ;
 TYPE_1__ tnum_and (TYPE_1__,TYPE_1__) ;
 TYPE_1__ tnum_arshift (TYPE_1__,int) ;
 int tnum_is_const (TYPE_1__) ;
 TYPE_1__ tnum_lshift (TYPE_1__,int) ;
 TYPE_1__ tnum_mul (TYPE_1__,TYPE_1__) ;
 TYPE_1__ tnum_or (TYPE_1__,TYPE_1__) ;
 TYPE_1__ tnum_rshift (TYPE_1__,int) ;
 TYPE_1__ tnum_sub (TYPE_1__,TYPE_1__) ;
 int verbose (struct bpf_verifier_env*,char*,int ) ;

__attribute__((used)) static int adjust_scalar_min_max_vals(struct bpf_verifier_env *env,
          struct bpf_insn *insn,
          struct bpf_reg_state *dst_reg,
          struct bpf_reg_state src_reg)
{
 struct bpf_reg_state *regs = cur_regs(env);
 u8 opcode = BPF_OP(insn->code);
 bool src_known, dst_known;
 s64 smin_val, smax_val;
 u64 umin_val, umax_val;
 u64 insn_bitness = (BPF_CLASS(insn->code) == BPF_ALU64) ? 64 : 32;
 u32 dst = insn->dst_reg;
 int ret;

 if (insn_bitness == 32) {




  coerce_reg_to_size(dst_reg, 4);
  coerce_reg_to_size(&src_reg, 4);
 }

 smin_val = src_reg.smin_value;
 smax_val = src_reg.smax_value;
 umin_val = src_reg.umin_value;
 umax_val = src_reg.umax_value;
 src_known = tnum_is_const(src_reg.var_off);
 dst_known = tnum_is_const(dst_reg->var_off);

 if ((src_known && (smin_val != smax_val || umin_val != umax_val)) ||
     smin_val > smax_val || umin_val > umax_val) {



  __mark_reg_unknown(dst_reg);
  return 0;
 }

 if (!src_known &&
     opcode != 135 && opcode != 128 && opcode != 134) {
  __mark_reg_unknown(dst_reg);
  return 0;
 }

 switch (opcode) {
 case 135:
  ret = sanitize_val_alu(env, insn);
  if (ret < 0) {
   verbose(env, "R%d tried to add from different pointers or scalars\n", dst);
   return ret;
  }
  if (signed_add_overflows(dst_reg->smin_value, smin_val) ||
      signed_add_overflows(dst_reg->smax_value, smax_val)) {
   dst_reg->smin_value = S64_MIN;
   dst_reg->smax_value = S64_MAX;
  } else {
   dst_reg->smin_value += smin_val;
   dst_reg->smax_value += smax_val;
  }
  if (dst_reg->umin_value + umin_val < umin_val ||
      dst_reg->umax_value + umax_val < umax_val) {
   dst_reg->umin_value = 0;
   dst_reg->umax_value = U64_MAX;
  } else {
   dst_reg->umin_value += umin_val;
   dst_reg->umax_value += umax_val;
  }
  dst_reg->var_off = tnum_add(dst_reg->var_off, src_reg.var_off);
  break;
 case 128:
  ret = sanitize_val_alu(env, insn);
  if (ret < 0) {
   verbose(env, "R%d tried to sub from different pointers or scalars\n", dst);
   return ret;
  }
  if (signed_sub_overflows(dst_reg->smin_value, smax_val) ||
      signed_sub_overflows(dst_reg->smax_value, smin_val)) {

   dst_reg->smin_value = S64_MIN;
   dst_reg->smax_value = S64_MAX;
  } else {
   dst_reg->smin_value -= smax_val;
   dst_reg->smax_value -= smin_val;
  }
  if (dst_reg->umin_value < umax_val) {

   dst_reg->umin_value = 0;
   dst_reg->umax_value = U64_MAX;
  } else {

   dst_reg->umin_value -= umax_val;
   dst_reg->umax_value -= umin_val;
  }
  dst_reg->var_off = tnum_sub(dst_reg->var_off, src_reg.var_off);
  break;
 case 131:
  dst_reg->var_off = tnum_mul(dst_reg->var_off, src_reg.var_off);
  if (smin_val < 0 || dst_reg->smin_value < 0) {

   __mark_reg_unbounded(dst_reg);
   __update_reg_bounds(dst_reg);
   break;
  }



  if (umax_val > U32_MAX || dst_reg->umax_value > U32_MAX) {

   __mark_reg_unbounded(dst_reg);

   __update_reg_bounds(dst_reg);
   break;
  }
  dst_reg->umin_value *= umin_val;
  dst_reg->umax_value *= umax_val;
  if (dst_reg->umax_value > S64_MAX) {

   dst_reg->smin_value = S64_MIN;
   dst_reg->smax_value = S64_MAX;
  } else {
   dst_reg->smin_value = dst_reg->umin_value;
   dst_reg->smax_value = dst_reg->umax_value;
  }
  break;
 case 134:
  if (src_known && dst_known) {
   __mark_reg_known(dst_reg, dst_reg->var_off.value &
        src_reg.var_off.value);
   break;
  }



  dst_reg->var_off = tnum_and(dst_reg->var_off, src_reg.var_off);
  dst_reg->umin_value = dst_reg->var_off.value;
  dst_reg->umax_value = min(dst_reg->umax_value, umax_val);
  if (dst_reg->smin_value < 0 || smin_val < 0) {



   dst_reg->smin_value = S64_MIN;
   dst_reg->smax_value = S64_MAX;
  } else {



   dst_reg->smin_value = dst_reg->umin_value;
   dst_reg->smax_value = dst_reg->umax_value;
  }

  __update_reg_bounds(dst_reg);
  break;
 case 130:
  if (src_known && dst_known) {
   __mark_reg_known(dst_reg, dst_reg->var_off.value |
        src_reg.var_off.value);
   break;
  }



  dst_reg->var_off = tnum_or(dst_reg->var_off, src_reg.var_off);
  dst_reg->umin_value = max(dst_reg->umin_value, umin_val);
  dst_reg->umax_value = dst_reg->var_off.value |
          dst_reg->var_off.mask;
  if (dst_reg->smin_value < 0 || smin_val < 0) {



   dst_reg->smin_value = S64_MIN;
   dst_reg->smax_value = S64_MAX;
  } else {



   dst_reg->smin_value = dst_reg->umin_value;
   dst_reg->smax_value = dst_reg->umax_value;
  }

  __update_reg_bounds(dst_reg);
  break;
 case 132:
  if (umax_val >= insn_bitness) {



   mark_reg_unknown(env, regs, insn->dst_reg);
   break;
  }



  dst_reg->smin_value = S64_MIN;
  dst_reg->smax_value = S64_MAX;

  if (dst_reg->umax_value > 1ULL << (63 - umax_val)) {
   dst_reg->umin_value = 0;
   dst_reg->umax_value = U64_MAX;
  } else {
   dst_reg->umin_value <<= umin_val;
   dst_reg->umax_value <<= umax_val;
  }
  dst_reg->var_off = tnum_lshift(dst_reg->var_off, umin_val);

  __update_reg_bounds(dst_reg);
  break;
 case 129:
  if (umax_val >= insn_bitness) {



   mark_reg_unknown(env, regs, insn->dst_reg);
   break;
  }
  dst_reg->smin_value = S64_MIN;
  dst_reg->smax_value = S64_MAX;
  dst_reg->var_off = tnum_rshift(dst_reg->var_off, umin_val);
  dst_reg->umin_value >>= umax_val;
  dst_reg->umax_value >>= umin_val;

  __update_reg_bounds(dst_reg);
  break;
 case 133:
  if (umax_val >= insn_bitness) {



   mark_reg_unknown(env, regs, insn->dst_reg);
   break;
  }




  dst_reg->smin_value >>= umin_val;
  dst_reg->smax_value >>= umin_val;
  dst_reg->var_off = tnum_arshift(dst_reg->var_off, umin_val);




  dst_reg->umin_value = 0;
  dst_reg->umax_value = U64_MAX;
  __update_reg_bounds(dst_reg);
  break;
 default:
  mark_reg_unknown(env, regs, insn->dst_reg);
  break;
 }

 if (BPF_CLASS(insn->code) != BPF_ALU64) {

  coerce_reg_to_size(dst_reg, 4);
 }

 __reg_deduce_bounds(dst_reg);
 __reg_bound_offset(dst_reg);
 return 0;
}
