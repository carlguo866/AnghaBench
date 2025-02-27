
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_op_instr {scalar_t__ type; } ;


 scalar_t__ NAND_OP_DATA_IN_INSTR ;
 scalar_t__ NAND_OP_DATA_OUT_INSTR ;

__attribute__((used)) static bool nand_instr_is_data(const struct nand_op_instr *instr)
{
 return instr && (instr->type == NAND_OP_DATA_IN_INSTR ||
    instr->type == NAND_OP_DATA_OUT_INSTR);
}
