
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int tn_buf ;
struct bpf_verifier_env {int allow_ptr_leaks; } ;
struct TYPE_7__ {int value; } ;
struct bpf_reg_state {size_t type; int off; int smax_value; int smin_value; TYPE_2__ var_off; } ;
struct bpf_func_state {int allocated_stack; TYPE_1__* stack; } ;
struct bpf_call_arg_meta {int access_size; int regno; scalar_t__ raw_mode; } ;
struct TYPE_8__ {scalar_t__ type; int parent; } ;
struct TYPE_6__ {scalar_t__* slot_type; TYPE_4__ spilled_ptr; } ;


 int BPF_MAX_VAR_OFF ;
 int BPF_REG_SIZE ;
 int EACCES ;
 size_t PTR_TO_STACK ;
 int REG_LIVE_READ64 ;
 scalar_t__ SCALAR_VALUE ;
 scalar_t__ STACK_MISC ;
 scalar_t__ STACK_SPILL ;
 scalar_t__ STACK_ZERO ;
 int __check_stack_boundary (struct bpf_verifier_env*,int,int,int,int) ;
 int __mark_reg_unknown (TYPE_4__*) ;
 struct bpf_func_state* func (struct bpf_verifier_env*,struct bpf_reg_state*) ;
 int mark_reg_read (struct bpf_verifier_env*,TYPE_4__*,int ,int ) ;
 struct bpf_reg_state* reg_state (struct bpf_verifier_env*,int) ;
 int * reg_type_str ;
 scalar_t__ register_is_null (struct bpf_reg_state*) ;
 scalar_t__ tnum_is_const (TYPE_2__) ;
 int tnum_strn (char*,int,TYPE_2__) ;
 int update_stack_depth (struct bpf_verifier_env*,struct bpf_func_state*,int) ;
 int verbose (struct bpf_verifier_env*,char*,...) ;

__attribute__((used)) static int check_stack_boundary(struct bpf_verifier_env *env, int regno,
    int access_size, bool zero_size_allowed,
    struct bpf_call_arg_meta *meta)
{
 struct bpf_reg_state *reg = reg_state(env, regno);
 struct bpf_func_state *state = func(env, reg);
 int err, min_off, max_off, i, j, slot, spi;

 if (reg->type != PTR_TO_STACK) {

  if (zero_size_allowed && access_size == 0 &&
      register_is_null(reg))
   return 0;

  verbose(env, "R%d type=%s expected=%s\n", regno,
   reg_type_str[reg->type],
   reg_type_str[PTR_TO_STACK]);
  return -EACCES;
 }

 if (tnum_is_const(reg->var_off)) {
  min_off = max_off = reg->var_off.value + reg->off;
  err = __check_stack_boundary(env, regno, min_off, access_size,
          zero_size_allowed);
  if (err)
   return err;
 } else {





  if (!env->allow_ptr_leaks) {
   char tn_buf[48];

   tnum_strn(tn_buf, sizeof(tn_buf), reg->var_off);
   verbose(env, "R%d indirect variable offset stack access prohibited for !root, var_off=%s\n",
    regno, tn_buf);
   return -EACCES;
  }






  if (meta && meta->raw_mode)
   meta = ((void*)0);

  if (reg->smax_value >= BPF_MAX_VAR_OFF ||
      reg->smax_value <= -BPF_MAX_VAR_OFF) {
   verbose(env, "R%d unbounded indirect variable offset stack access\n",
    regno);
   return -EACCES;
  }
  min_off = reg->smin_value + reg->off;
  max_off = reg->smax_value + reg->off;
  err = __check_stack_boundary(env, regno, min_off, access_size,
          zero_size_allowed);
  if (err) {
   verbose(env, "R%d min value is outside of stack bound\n",
    regno);
   return err;
  }
  err = __check_stack_boundary(env, regno, max_off, access_size,
          zero_size_allowed);
  if (err) {
   verbose(env, "R%d max value is outside of stack bound\n",
    regno);
   return err;
  }
 }

 if (meta && meta->raw_mode) {
  meta->access_size = access_size;
  meta->regno = regno;
  return 0;
 }

 for (i = min_off; i < max_off + access_size; i++) {
  u8 *stype;

  slot = -i - 1;
  spi = slot / BPF_REG_SIZE;
  if (state->allocated_stack <= slot)
   goto err;
  stype = &state->stack[spi].slot_type[slot % BPF_REG_SIZE];
  if (*stype == STACK_MISC)
   goto mark;
  if (*stype == STACK_ZERO) {

   *stype = STACK_MISC;
   goto mark;
  }
  if (state->stack[spi].slot_type[0] == STACK_SPILL &&
      state->stack[spi].spilled_ptr.type == SCALAR_VALUE) {
   __mark_reg_unknown(&state->stack[spi].spilled_ptr);
   for (j = 0; j < BPF_REG_SIZE; j++)
    state->stack[spi].slot_type[j] = STACK_MISC;
   goto mark;
  }

err:
  if (tnum_is_const(reg->var_off)) {
   verbose(env, "invalid indirect read from stack off %d+%d size %d\n",
    min_off, i - min_off, access_size);
  } else {
   char tn_buf[48];

   tnum_strn(tn_buf, sizeof(tn_buf), reg->var_off);
   verbose(env, "invalid indirect read from stack var_off %s+%d size %d\n",
    tn_buf, i - min_off, access_size);
  }
  return -EACCES;
mark:



  mark_reg_read(env, &state->stack[spi].spilled_ptr,
         state->stack[spi].spilled_ptr.parent,
         REG_LIVE_READ64);
 }
 return update_stack_depth(env, state, min_off);
}
