
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wf_sensor {unsigned int* name; } ;


 unsigned int NR_CORES ;
 int have_all_sensors ;
 struct wf_sensor* hd_temp ;
 unsigned int nr_cores ;
 struct wf_sensor** sens_cpu_power ;
 struct wf_sensor** sens_cpu_temp ;
 struct wf_sensor* slots_power ;
 int strcmp (unsigned int*,char*) ;
 int strncmp (unsigned int*,char*,int) ;
 struct wf_sensor* u4_temp ;
 scalar_t__ wf_get_sensor (struct wf_sensor*) ;

__attribute__((used)) static void pm112_new_sensor(struct wf_sensor *sr)
{
 unsigned int i;

 if (!strncmp(sr->name, "cpu-temp-", 9)) {
  i = sr->name[9] - '0';
  if (sr->name[10] == 0 && i < NR_CORES &&
      sens_cpu_temp[i] == ((void*)0) && wf_get_sensor(sr) == 0)
   sens_cpu_temp[i] = sr;

 } else if (!strncmp(sr->name, "cpu-power-", 10)) {
  i = sr->name[10] - '0';
  if (sr->name[11] == 0 && i < NR_CORES &&
      sens_cpu_power[i] == ((void*)0) && wf_get_sensor(sr) == 0)
   sens_cpu_power[i] = sr;
 } else if (!strcmp(sr->name, "hd-temp")) {
  if (hd_temp == ((void*)0) && wf_get_sensor(sr) == 0)
   hd_temp = sr;
 } else if (!strcmp(sr->name, "slots-power")) {
  if (slots_power == ((void*)0) && wf_get_sensor(sr) == 0)
   slots_power = sr;
 } else if (!strcmp(sr->name, "backside-temp")) {
  if (u4_temp == ((void*)0) && wf_get_sensor(sr) == 0)
   u4_temp = sr;
 } else
  return;


 for (i = 0; i < nr_cores; ++i)
  if (sens_cpu_temp[i] == ((void*)0) || sens_cpu_power[i] == ((void*)0))
   return;

 have_all_sensors = 1;
}
