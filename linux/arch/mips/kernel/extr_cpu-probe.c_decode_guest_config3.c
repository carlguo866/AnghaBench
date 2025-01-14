
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int conf; int ases_dyn; int ases; int options; int options_dyn; } ;
struct cpuinfo_mips {TYPE_1__ guest; } ;


 int BIT (int) ;
 int MIPS_ASE_MSA ;
 unsigned int MIPS_CONF3_BI ;
 unsigned int MIPS_CONF3_BP ;
 unsigned int MIPS_CONF3_CTXTC ;
 unsigned int MIPS_CONF3_MSA ;
 unsigned int MIPS_CONF3_PW ;
 unsigned int MIPS_CONF3_SC ;
 unsigned int MIPS_CONF3_ULRI ;
 unsigned int MIPS_CONF_M ;
 int MIPS_CPU_BADINSTR ;
 int MIPS_CPU_BADINSTRP ;
 int MIPS_CPU_CTXTC ;
 int MIPS_CPU_HTW ;
 int MIPS_CPU_SEGMENTS ;
 int MIPS_CPU_ULRI ;
 int probe_gc0_config_dyn (unsigned int,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static inline unsigned int decode_guest_config3(struct cpuinfo_mips *c)
{
 unsigned int config3, config3_dyn;

 probe_gc0_config_dyn(config3, config3, config3_dyn,
        MIPS_CONF_M | MIPS_CONF3_MSA | MIPS_CONF3_ULRI |
        MIPS_CONF3_CTXTC);

 if (config3 & MIPS_CONF3_CTXTC)
  c->guest.options |= MIPS_CPU_CTXTC;
 if (config3_dyn & MIPS_CONF3_CTXTC)
  c->guest.options_dyn |= MIPS_CPU_CTXTC;

 if (config3 & MIPS_CONF3_PW)
  c->guest.options |= MIPS_CPU_HTW;

 if (config3 & MIPS_CONF3_ULRI)
  c->guest.options |= MIPS_CPU_ULRI;

 if (config3 & MIPS_CONF3_SC)
  c->guest.options |= MIPS_CPU_SEGMENTS;

 if (config3 & MIPS_CONF3_BI)
  c->guest.options |= MIPS_CPU_BADINSTR;
 if (config3 & MIPS_CONF3_BP)
  c->guest.options |= MIPS_CPU_BADINSTRP;

 if (config3 & MIPS_CONF3_MSA)
  c->guest.ases |= MIPS_ASE_MSA;
 if (config3_dyn & MIPS_CONF3_MSA)
  c->guest.ases_dyn |= MIPS_ASE_MSA;

 if (config3 & MIPS_CONF_M)
  c->guest.conf |= BIT(4);
 return config3 & MIPS_CONF_M;
}
