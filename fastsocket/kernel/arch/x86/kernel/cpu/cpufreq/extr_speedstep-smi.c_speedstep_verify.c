
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int dummy; } ;


 int cpufreq_frequency_table_verify (struct cpufreq_policy*,int *) ;
 int * speedstep_freqs ;

__attribute__((used)) static int speedstep_verify(struct cpufreq_policy *policy)
{
 return cpufreq_frequency_table_verify(policy, &speedstep_freqs[0]);
}
