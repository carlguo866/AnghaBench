
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m68k_info ;


 int M68K_INS_MOVE ;
 int build_ea_ea (int *,int ,int) ;

__attribute__((used)) static void d68000_move_8(m68k_info *info)
{
 build_ea_ea(info, M68K_INS_MOVE, 1);
}
