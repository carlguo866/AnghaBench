
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gov_attr_set {int dummy; } ;
struct dbs_data {struct cs_dbs_tuners* tuners; } ;
struct cs_dbs_tuners {unsigned int freq_step; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int sscanf (char const*,char*,unsigned int*) ;
 struct dbs_data* to_dbs_data (struct gov_attr_set*) ;

__attribute__((used)) static ssize_t store_freq_step(struct gov_attr_set *attr_set, const char *buf,
          size_t count)
{
 struct dbs_data *dbs_data = to_dbs_data(attr_set);
 struct cs_dbs_tuners *cs_tuners = dbs_data->tuners;
 unsigned int input;
 int ret;
 ret = sscanf(buf, "%u", &input);

 if (ret != 1)
  return -EINVAL;

 if (input > 100)
  input = 100;





 cs_tuners->freq_step = input;
 return count;
}
