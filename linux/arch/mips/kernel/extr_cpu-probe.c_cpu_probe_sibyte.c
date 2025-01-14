
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_mips {int processor_id; int options; int cputype; int writecombine; } ;


 int CPU_SB1 ;
 int CPU_SB1A ;
 int MIPS_CPU_32FPR ;
 int MIPS_CPU_FPU ;
 int PRID_IMP_MASK ;


 int PRID_REV_MASK ;
 int _CACHE_UNCACHED_ACCELERATED ;
 char** __cpu_name ;
 int decode_configs (struct cpuinfo_mips*) ;

__attribute__((used)) static inline void cpu_probe_sibyte(struct cpuinfo_mips *c, unsigned int cpu)
{
 decode_configs(c);

 c->writecombine = _CACHE_UNCACHED_ACCELERATED;
 switch (c->processor_id & PRID_IMP_MASK) {
 case 129:
  c->cputype = CPU_SB1;
  __cpu_name[cpu] = "SiByte SB1";

  if ((c->processor_id & PRID_REV_MASK) < 0x02)
   c->options &= ~(MIPS_CPU_FPU | MIPS_CPU_32FPR);
  break;
 case 128:
  c->cputype = CPU_SB1A;
  __cpu_name[cpu] = "SiByte SB1A";
  break;
 }
}
