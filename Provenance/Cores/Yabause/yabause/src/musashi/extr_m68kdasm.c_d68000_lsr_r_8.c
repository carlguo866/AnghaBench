
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_cpu_ir ;
 int g_dasm_str ;
 int sprintf (int ,char*,int,int) ;

__attribute__((used)) static void d68000_lsr_r_8(void)
{
 sprintf(g_dasm_str, "lsr.b   D%d, D%d", (g_cpu_ir>>9)&7, g_cpu_ir&7);
}
