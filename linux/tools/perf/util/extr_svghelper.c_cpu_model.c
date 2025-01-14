
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 unsigned int max_freq ;
 int strlcpy (char*,char*,int) ;
 scalar_t__ strstr (char*,char*) ;
 unsigned int strtoull (char*,int *,int) ;

__attribute__((used)) static char *cpu_model(void)
{
 static char cpu_m[255];
 char buf[256];
 FILE *file;

 cpu_m[0] = 0;

 file = fopen("/proc/cpuinfo", "r");
 if (file) {
  while (fgets(buf, 255, file)) {
   if (strstr(buf, "model name")) {
    strlcpy(cpu_m, &buf[13], 255);
    break;
   }
  }
  fclose(file);
 }


 file = fopen("/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies", "r");
 if (file) {
  while (fgets(buf, 255, file)) {
   unsigned int freq;
   freq = strtoull(buf, ((void*)0), 10);
   if (freq > max_freq)
    max_freq = freq;
  }
  fclose(file);
 }
 return cpu_m;
}
