
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* g_3bit_qdata_table ;
 int g_cpu_ir ;
 int g_dasm_str ;
 int sprintf (int ,char*,int,int) ;

__attribute__((used)) static void d68000_roxl_s_32(void)
{
 sprintf(g_dasm_str, "roxl.l  #%d, D%d", g_3bit_qdata_table[(g_cpu_ir>>9)&7], g_cpu_ir&7);
}
