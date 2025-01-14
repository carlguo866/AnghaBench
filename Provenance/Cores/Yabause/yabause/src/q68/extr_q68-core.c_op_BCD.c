
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_5__ {int SR; } ;
typedef TYPE_1__ Q68State ;


 int EA_DATA_REG ;
 int EA_PREDECREMENT ;
 int INSN_GET_REG ;
 int INSN_GET_REG0 ;
 int SIZE_B ;
 int SR_C ;
 int SR_X ;
 int SR_X_SHIFT ;
 int SR_Z ;
 int ea_get (TYPE_1__*,int const,int ,int,int*) ;
 int ea_set (TYPE_1__*,int const,int ,int) ;
 int reg ;
 int reg0 ;

__attribute__((used)) static int op_BCD(Q68State *state, uint32_t opcode)
{
    INSN_GET_REG;
    INSN_GET_REG0;
    const int is_add = opcode & 0x4000;
    const int is_memory = opcode & 0x0008;

    const uint16_t src_ea =
        (is_memory ? EA_PREDECREMENT : EA_DATA_REG) << 3 | reg0;
    const uint16_t dest_ea =
        (is_memory ? EA_PREDECREMENT : EA_DATA_REG) << 3 | reg;
    int dummy;
    uint8_t src = ea_get(state, src_ea, SIZE_B, 0, &dummy);
    uint8_t dest = ea_get(state, dest_ea, SIZE_B, 1, &dummy);

    int result;
    int X = (state->SR >> SR_X_SHIFT) & 1;
    state->SR &= ~(SR_X | SR_C);
    if (is_add) {
        result = (dest & 0x0F) + (src & 0x0F) + X;
        if (result >= 10) {


            result += 6;
        }
        result += (dest & 0xF0) + (src & 0xF0);
        if (result >= 10<<4) {
            result -= 10<<4;
            state->SR |= SR_X | SR_C;
        }
    } else {

        int res_low = (dest & 0x0F) - (src & 0x0F) - X;
        int borrow = 0;
        if (res_low < 0) {
            res_low += 10;
            borrow = 1<<4;
        }
        int res_high = (dest & 0xF0) - (src & 0xF0) - borrow;
        if (res_high < 0) {
            res_high += 10<<4;
            state->SR |= SR_X | SR_C;
        }
        result = res_high + res_low;
        if (result < 0) {
            state->SR |= SR_X | SR_C;
        }
    }
    result &= 0xFF;
    if (result != 0) {
        state->SR &= ~SR_Z;
    }

    ea_set(state, dest_ea, SIZE_B, result);
    return is_memory ? 18 : 6;
}
