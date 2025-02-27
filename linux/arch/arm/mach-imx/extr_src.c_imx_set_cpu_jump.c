
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SRC_GPR1 ;
 int __pa_symbol (void*) ;
 int cpu_logical_map (int) ;
 scalar_t__ src_base ;
 int writel_relaxed (int ,scalar_t__) ;

void imx_set_cpu_jump(int cpu, void *jump_addr)
{
 cpu = cpu_logical_map(cpu);
 writel_relaxed(__pa_symbol(jump_addr),
         src_base + SRC_GPR1 + cpu * 8);
}
