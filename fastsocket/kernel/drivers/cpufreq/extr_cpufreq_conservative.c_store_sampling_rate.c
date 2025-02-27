
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpufreq_policy {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int sampling_rate; } ;


 size_t EINVAL ;
 int dbs_mutex ;
 TYPE_1__ dbs_tuners_ins ;
 int max (unsigned int,int ) ;
 int min_sampling_rate ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sscanf (char const*,char*,unsigned int*) ;

__attribute__((used)) static ssize_t store_sampling_rate(struct cpufreq_policy *unused,
  const char *buf, size_t count)
{
 unsigned int input;
 int ret;
 ret = sscanf(buf, "%u", &input);

 if (ret != 1)
  return -EINVAL;

 mutex_lock(&dbs_mutex);
 dbs_tuners_ins.sampling_rate = max(input, min_sampling_rate);
 mutex_unlock(&dbs_mutex);

 return count;
}
