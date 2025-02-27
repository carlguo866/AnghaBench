
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_13__ {int cycles; int pc; } ;
typedef TYPE_1__ sh2rec_block_t ;


 int INSTRUCTION_CD (int ) ;
 int OP_ADD ;
 int OP_ROTCL ;
 int OP_ROTCR ;
 int OP_TST ;
 int R0 ;
 int R1 ;
 int R10 ;
 int R3 ;
 int R4 ;
 int R5 ;
 int R8 ;
 int R9 ;
 int R_PR ;
 int emitALU (TYPE_1__*,int ,int ,int ) ;
 int emitJSR (TYPE_1__*,int ) ;
 int emitLDS (TYPE_1__*,int ,int ) ;
 int emitMOV (TYPE_1__*,int ,int ) ;
 int emitMOVI (TYPE_1__*,int,int ) ;
 int emitMOVLL4 (TYPE_1__*,int ,int ,int ) ;
 int emitMOVLLG (TYPE_1__*,int) ;
 int emitMOVLSG (TYPE_1__*,int) ;
 int emitSHIFT (TYPE_1__*,int ,int ) ;
 int emitSTS (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void generateTSTM(uint16_t inst, sh2rec_block_t *b) {
    int imm = INSTRUCTION_CD(inst);

    emitSTS(b, R_PR, R10);
    emitMOVLL4(b, R9, 0, R1);
    emitMOVLLG(b, 17);
    emitMOVLL4(b, R8, 0, R4);
    emitJSR(b, R1);
    emitALU(b, R0, R4, OP_ADD);
    emitMOV(b, R0, R5);
    emitMOVI(b, imm, R3);
    emitMOVLLG(b, 16);
    emitSHIFT(b, R0, OP_ROTCR);
    emitALU(b, R3, R5, OP_TST);
    emitSHIFT(b, R0, OP_ROTCL);
    emitMOVLSG(b, 16);
    emitLDS(b, R10, R_PR);

    b->cycles += 3;
    b->pc += 2;
}
