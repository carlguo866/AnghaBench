
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* g_3bit_qdata_table ;
 int g_cpu_ir ;
 int g_dasm_str ;
 char* get_ea_mode_str_16 (int) ;
 int sprintf (int ,char*,int,char*) ;

__attribute__((used)) static void d68000_subq_16(void)
{
 sprintf(g_dasm_str, "subq.w  #%d, %s", g_3bit_qdata_table[(g_cpu_ir>>9)&7], get_ea_mode_str_16(g_cpu_ir));
}
