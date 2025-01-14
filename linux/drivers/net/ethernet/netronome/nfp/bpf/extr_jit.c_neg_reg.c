
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nfp_prog {int dummy; } ;
struct TYPE_2__ {int dst_reg; } ;
struct nfp_insn_meta {TYPE_1__ insn; } ;


 int ALU_OP_SUB ;
 int emit_alu (struct nfp_prog*,int ,int ,int ,int ) ;
 int reg_b (int) ;
 int reg_both (int) ;
 int reg_imm (int ) ;
 int wrp_zext (struct nfp_prog*,struct nfp_insn_meta*,int) ;

__attribute__((used)) static int neg_reg(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
 u8 dst = meta->insn.dst_reg * 2;

 emit_alu(nfp_prog, reg_both(dst), reg_imm(0), ALU_OP_SUB, reg_b(dst));
 wrp_zext(nfp_prog, meta, dst);

 return 0;
}
