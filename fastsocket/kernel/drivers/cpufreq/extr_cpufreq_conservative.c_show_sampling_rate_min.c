
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int dummy; } ;
typedef int ssize_t ;


 int min_sampling_rate ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_sampling_rate_min(struct cpufreq_policy *policy, char *buf)
{
 return sprintf(buf, "%u\n", min_sampling_rate);
}
