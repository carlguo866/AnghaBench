
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint ;
struct TYPE_9__ {int ir; } ;
typedef TYPE_1__ m68k_info ;
struct TYPE_10__ {int reg; int register_bits; void* type; void* address_mode; } ;
typedef TYPE_2__ cs_m68k_op ;
struct TYPE_11__ {TYPE_2__* operands; } ;
typedef TYPE_3__ cs_m68k ;


 void* M68K_AM_NONE ;
 int M68K_INS_FMOVEM ;
 void* M68K_OP_REG_BITS ;
 int M68K_REG_D0 ;
 TYPE_3__* build_init_op (TYPE_1__*,int ,int,int ) ;
 int get_ea_mode_op (TYPE_1__*,TYPE_2__*,int ,int ) ;
 int reverse_bits_8 (int) ;

__attribute__((used)) static void fmovem(m68k_info *info, uint extension)
{
 cs_m68k_op* op_reglist;
 cs_m68k_op* op_ea;
 int dir = (extension >> 13) & 0x1;
 int mode = (extension >> 11) & 0x3;
 uint reglist = extension & 0xff;
 cs_m68k* ext = build_init_op(info, M68K_INS_FMOVEM, 2, 0);

 op_reglist = &ext->operands[0];
 op_ea = &ext->operands[1];



 if (!dir) {
  cs_m68k_op* t = op_reglist;
  op_reglist = op_ea;
  op_ea = t;
 }

 get_ea_mode_op(info, op_ea, info->ir, 0);

 switch (mode) {
  case 1 :
   op_reglist->reg = M68K_REG_D0 + ((reglist >> 4) & 7);
   break;

  case 0 :
   op_reglist->address_mode = M68K_AM_NONE;
   op_reglist->type = M68K_OP_REG_BITS;
   op_reglist->register_bits = reglist << 16;
   break;

  case 2 :
   op_reglist->address_mode = M68K_AM_NONE;
   op_reglist->type = M68K_OP_REG_BITS;
   op_reglist->register_bits = ((uint32_t)reverse_bits_8(reglist)) << 16;
   break;
 }
}
