
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CPU_VENDOR_AMD ;
 int cpu_id ;
 int cpu_ident_amdc1e ;
 scalar_t__ cpu_vendor_id ;

void
cpu_probe_amdc1e(void)
{





 if (cpu_vendor_id == CPU_VENDOR_AMD &&
     (cpu_id & 0x00000f00) == 0x00000f00 &&
     (cpu_id & 0x0fff0000) >= 0x00040000) {
  cpu_ident_amdc1e = 1;
 }
}
