
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AX ;
 int MAKE_INT_16 (int ) ;
 int OPER_AL_16 () ;

void m68k_op_movea_16_al(void)
{
 AX = MAKE_INT_16(OPER_AL_16());
}
