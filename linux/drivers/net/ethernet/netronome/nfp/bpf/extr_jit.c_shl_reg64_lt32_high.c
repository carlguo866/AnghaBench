
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct nfp_prog {int dummy; } ;


 int ALU_OP_OR ;
 int ALU_OP_SUB ;
 int SHF_OP_NONE ;
 int SHF_SC_R_DSHF ;
 int emit_alu (struct nfp_prog*,int ,int ,int ,int ) ;
 int emit_shf_indir (struct nfp_prog*,int ,int ,int ,int ,int ) ;
 int imm_a (struct nfp_prog*) ;
 int imm_both (struct nfp_prog*) ;
 int reg_a (scalar_t__) ;
 int reg_b (scalar_t__) ;
 int reg_both (scalar_t__) ;
 int reg_imm (int) ;
 int reg_none () ;

__attribute__((used)) static void shl_reg64_lt32_high(struct nfp_prog *nfp_prog, u8 dst, u8 src)
{
 emit_alu(nfp_prog, imm_both(nfp_prog), reg_imm(32), ALU_OP_SUB,
   reg_b(src));
 emit_alu(nfp_prog, reg_none(), imm_a(nfp_prog), ALU_OP_OR, reg_imm(0));
 emit_shf_indir(nfp_prog, reg_both(dst + 1), reg_a(dst + 1), SHF_OP_NONE,
         reg_b(dst), SHF_SC_R_DSHF);
}
