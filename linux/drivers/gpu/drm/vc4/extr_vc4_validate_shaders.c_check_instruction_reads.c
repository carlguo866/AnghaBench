
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct vc4_validated_shader_info {int uniforms_size; } ;
struct vc4_shader_validation_state {size_t ip; int all_registers_used; scalar_t__ needs_uniform_address_update; int * shader; } ;


 int DRM_DEBUG (char*) ;
 scalar_t__ QPU_GET_FIELD (int ,int ) ;
 int QPU_RADDR_A ;
 int QPU_RADDR_B ;
 scalar_t__ QPU_R_UNIF ;
 int QPU_SIG ;
 scalar_t__ QPU_SIG_SMALL_IMM ;

__attribute__((used)) static bool
check_instruction_reads(struct vc4_validated_shader_info *validated_shader,
   struct vc4_shader_validation_state *validation_state)
{
 uint64_t inst = validation_state->shader[validation_state->ip];
 uint32_t raddr_a = QPU_GET_FIELD(inst, QPU_RADDR_A);
 uint32_t raddr_b = QPU_GET_FIELD(inst, QPU_RADDR_B);
 uint32_t sig = QPU_GET_FIELD(inst, QPU_SIG);

 if (raddr_a == QPU_R_UNIF ||
     (raddr_b == QPU_R_UNIF && sig != QPU_SIG_SMALL_IMM)) {




  validated_shader->uniforms_size += 4;

  if (validation_state->needs_uniform_address_update) {
   DRM_DEBUG("Uniform read with undefined uniform "
      "address\n");
   return 0;
  }
 }

 if ((raddr_a >= 16 && raddr_a < 32) ||
     (raddr_b >= 16 && raddr_b < 32 && sig != QPU_SIG_SMALL_IMM)) {
  validation_state->all_registers_used = 1;
 }

 return 1;
}
