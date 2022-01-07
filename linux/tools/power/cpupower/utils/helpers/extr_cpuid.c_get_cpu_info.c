
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpupower_cpu_info {unsigned int vendor; unsigned int family; unsigned int model; unsigned int stepping; int caps; } ;
typedef int FILE ;


 int CPUPOWER_CAP_AMD_CBP ;
 int CPUPOWER_CAP_APERF ;
 int CPUPOWER_CAP_HAS_TURBO_RATIO ;
 int CPUPOWER_CAP_INTEL_IDA ;
 int CPUPOWER_CAP_INV_TSC ;
 int CPUPOWER_CAP_IS_SNB ;
 int CPUPOWER_CAP_PERF_BIAS ;
 int EINVAL ;
 int EIO ;
 int ENODEV ;
 unsigned int X86_VENDOR_AMD ;
 unsigned int X86_VENDOR_HYGON ;
 unsigned int X86_VENDOR_INTEL ;
 unsigned int X86_VENDOR_MAX ;
 unsigned int X86_VENDOR_UNKNOWN ;
 scalar_t__ base_cpu ;
 int * cpu_vendor_table ;
 int cpuid_eax (int) ;
 int cpuid_ecx (int) ;
 int cpuid_edx (int) ;
 int fclose (int *) ;
 int feof (int *) ;
 int fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int sscanf (char*,char*,unsigned int*) ;
 int strncmp (char*,char*,int) ;
 scalar_t__ strstr (char*,int ) ;

int get_cpu_info(struct cpupower_cpu_info *cpu_info)
{
 FILE *fp;
 char value[64];
 unsigned int proc, x;
 unsigned int unknown = 0xffffff;
 unsigned int cpuid_level, ext_cpuid_level;

 int ret = -EINVAL;

 cpu_info->vendor = X86_VENDOR_UNKNOWN;
 cpu_info->family = unknown;
 cpu_info->model = unknown;
 cpu_info->stepping = unknown;
 cpu_info->caps = 0;

 fp = fopen("/proc/cpuinfo", "r");
 if (!fp)
  return -EIO;

 while (!feof(fp)) {
  if (!fgets(value, 64, fp))
   continue;
  value[63 - 1] = '\0';

  if (!strncmp(value, "processor\t: ", 12))
   sscanf(value, "processor\t: %u", &proc);

  if (proc != (unsigned int)base_cpu)
   continue;


  if (!strncmp(value, "vendor_id", 9)) {
   for (x = 1; x < X86_VENDOR_MAX; x++) {
    if (strstr(value, cpu_vendor_table[x]))
     cpu_info->vendor = x;
   }

  } else if (!strncmp(value, "cpu family\t: ", 13)) {
   sscanf(value, "cpu family\t: %u",
          &cpu_info->family);
  } else if (!strncmp(value, "model\t\t: ", 9)) {
   sscanf(value, "model\t\t: %u",
          &cpu_info->model);
  } else if (!strncmp(value, "stepping\t: ", 10)) {
   sscanf(value, "stepping\t: %u",
          &cpu_info->stepping);


   if (cpu_info->vendor == X86_VENDOR_UNKNOWN ||
       cpu_info->family == unknown ||
       cpu_info->model == unknown ||
       cpu_info->stepping == unknown) {
    ret = -EINVAL;
    goto out;
   }

   ret = 0;
   goto out;
  }
 }
 ret = -ENODEV;
out:
 fclose(fp);

 if (cpu_info->vendor != X86_VENDOR_AMD &&
     cpu_info->vendor != X86_VENDOR_HYGON &&
     cpu_info->vendor != X86_VENDOR_INTEL)
  return ret;

 cpuid_level = cpuid_eax(0);
 ext_cpuid_level = cpuid_eax(0x80000000);


 if (ext_cpuid_level >= 0x80000007 &&
     (cpuid_edx(0x80000007) & (1 << 8)))
  cpu_info->caps |= CPUPOWER_CAP_INV_TSC;


 if (cpuid_level >= 6 && (cpuid_ecx(6) & 0x1))
  cpu_info->caps |= CPUPOWER_CAP_APERF;


 if (cpu_info->vendor == X86_VENDOR_AMD ||
     cpu_info->vendor == X86_VENDOR_HYGON) {
  if (ext_cpuid_level >= 0x80000007 &&
      (cpuid_edx(0x80000007) & (1 << 9)))
   cpu_info->caps |= CPUPOWER_CAP_AMD_CBP;
 }

 if (cpu_info->vendor == X86_VENDOR_INTEL) {
  if (cpuid_level >= 6 &&
      (cpuid_eax(6) & (1 << 1)))
   cpu_info->caps |= CPUPOWER_CAP_INTEL_IDA;
 }

 if (cpu_info->vendor == X86_VENDOR_INTEL) {

  if (cpuid_level >= 6 && (cpuid_ecx(6) & (1 << 3)))
   cpu_info->caps |= CPUPOWER_CAP_PERF_BIAS;


  if (cpu_info->family == 6) {
   switch (cpu_info->model) {
   case 0x1A:


   case 0x1E:


   case 0x1F:
   case 0x25:


   case 0x2C:
    cpu_info->caps |= CPUPOWER_CAP_HAS_TURBO_RATIO;
    break;
   case 0x2A:
   case 0x2D:
   case 0x3A:
   case 0x3E:
    cpu_info->caps |= CPUPOWER_CAP_HAS_TURBO_RATIO;
    cpu_info->caps |= CPUPOWER_CAP_IS_SNB;
    break;
   case 0x2E:
   case 0x2F:
   default:
    break;
   }
  }
 }




 return ret;
}
