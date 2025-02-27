
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_cpu_ir ;
 int g_dasm_str ;
 char* get_ea_mode_str_32 (int ) ;
 char* get_imm_str_u32 () ;
 int sprintf (int ,char*,char*,char*) ;

__attribute__((used)) static void d68000_ori_32(void)
{
 char* str = get_imm_str_u32();
 sprintf(g_dasm_str, "ori.l   %s, %s", str, get_ea_mode_str_32(g_cpu_ir));
}
