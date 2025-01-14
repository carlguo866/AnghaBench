
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debug_printf (char*,int,...) ;
 scalar_t__ isst_get_config_tdp_lock_status (int) ;
 int isst_send_msr_command (int,int,int,unsigned long long*) ;

int isst_set_tdp_level_msr(int cpu, int tdp_level)
{
 unsigned long long level = tdp_level;
 int ret;

 debug_printf("cpu: tdp_level via MSR %d\n", cpu, tdp_level);

 if (isst_get_config_tdp_lock_status(cpu)) {
  debug_printf("cpu: tdp_locked %d\n", cpu);
  return -1;
 }

 if (tdp_level > 2)
  return -1;

 ret = isst_send_msr_command(cpu, 0x64b, 1, &level);
 if (ret)
  return ret;

 debug_printf("cpu: tdp_level via MSR successful %d\n", cpu, tdp_level);

 return 0;
}
