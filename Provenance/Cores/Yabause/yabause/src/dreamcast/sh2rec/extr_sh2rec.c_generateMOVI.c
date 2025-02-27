
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {int pc; int cycles; } ;
typedef TYPE_1__ sh2rec_block_t ;


 int INSTRUCTION_B (int ) ;
 int INSTRUCTION_CD (int ) ;
 int R2 ;
 int R8 ;
 int emitMOVI (TYPE_1__*,int,int ) ;
 int emitMOVLS4 (TYPE_1__*,int ,int,int ) ;

__attribute__((used)) static void generateMOVI(uint16_t inst, sh2rec_block_t *b) {
    int regn = INSTRUCTION_B(inst);
    int imm = INSTRUCTION_CD(inst);

    emitMOVI(b, imm, R2);
    emitMOVLS4(b, R2, regn, R8);

    ++b->cycles;
    b->pc += 2;
}
