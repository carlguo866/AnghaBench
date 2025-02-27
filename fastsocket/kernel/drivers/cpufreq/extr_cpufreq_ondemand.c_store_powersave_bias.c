
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct attribute {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {unsigned int powersave_bias; } ;


 size_t EINVAL ;
 int dbs_mutex ;
 TYPE_1__ dbs_tuners_ins ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ondemand_powersave_bias_init () ;
 int sscanf (char const*,char*,unsigned int*) ;

__attribute__((used)) static ssize_t store_powersave_bias(struct kobject *a, struct attribute *b,
        const char *buf, size_t count)
{
 unsigned int input;
 int ret;
 ret = sscanf(buf, "%u", &input);

 if (ret != 1)
  return -EINVAL;

 if (input > 1000)
  input = 1000;

 mutex_lock(&dbs_mutex);
 dbs_tuners_ins.powersave_bias = input;
 ondemand_powersave_bias_init();
 mutex_unlock(&dbs_mutex);

 return count;
}
