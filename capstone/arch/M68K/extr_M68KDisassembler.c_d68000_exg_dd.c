
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m68k_info ;


 int M68K_INS_EXG ;
 int build_r (int *,int ,int) ;

__attribute__((used)) static void d68000_exg_dd(m68k_info *info)
{
 build_r(info, M68K_INS_EXG, 4);
}
