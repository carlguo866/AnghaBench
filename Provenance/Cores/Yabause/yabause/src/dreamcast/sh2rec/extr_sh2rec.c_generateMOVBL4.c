
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_10__ {int pc; int cycles; } ;
typedef TYPE_1__ sh2rec_block_t ;


 int INSTRUCTION_C (int ) ;
 int INSTRUCTION_D (int ) ;
 int OP_EXTSB ;
 int R0 ;
 int R1 ;
 int R10 ;
 int R4 ;
 int R8 ;
 int R9 ;
 int R_PR ;
 int emitADDI (TYPE_1__*,int,int ) ;
 int emitALU (TYPE_1__*,int ,int ,int ) ;
 int emitJSR (TYPE_1__*,int ) ;
 int emitLDS (TYPE_1__*,int ,int ) ;
 int emitMOVLL4 (TYPE_1__*,int ,int,int ) ;
 int emitMOVLS4 (TYPE_1__*,int ,int ,int ) ;
 int emitSTS (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void generateMOVBL4(uint16_t inst, sh2rec_block_t *b) {
    int regm = INSTRUCTION_C(inst);
    int imm = INSTRUCTION_D(inst);

    emitMOVLL4(b, R8, regm, R4);
    emitMOVLL4(b, R9, 0, R1);
    emitSTS(b, R_PR, R10);
    emitJSR(b, R1);
    emitADDI(b, imm, R4);
    emitALU(b, R0, R0, OP_EXTSB);
    emitLDS(b, R10, R_PR);
    emitMOVLS4(b, R0, 0, R8);

    ++b->cycles;
    b->pc += 2;
}
