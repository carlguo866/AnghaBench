
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 unsigned long CPUM_SF_MAX_SDB ;
 unsigned long CPUM_SF_MIN_SDB ;
 int CPUM_SF_SDB_DIAG_FACTOR ;
 int EINVAL ;
 int ENODEV ;
 int cpum_sf_avail () ;
 unsigned long get_num_physpages () ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int pr_info (char*,unsigned long,unsigned long,int ) ;
 int sfb_set_limits (unsigned long,unsigned long) ;
 int sscanf (char const*,char*,unsigned long*,unsigned long*) ;
 scalar_t__ strchr (char const*,char) ;
 int strlen (char const*) ;

__attribute__((used)) static int param_set_sfb_size(const char *val, const struct kernel_param *kp)
{
 int rc;
 unsigned long min, max;

 if (!cpum_sf_avail())
  return -ENODEV;
 if (!val || !strlen(val))
  return -EINVAL;


 min = CPUM_SF_MIN_SDB;
 max = CPUM_SF_MAX_SDB;
 if (strchr(val, ','))
  rc = (sscanf(val, "%lu,%lu", &min, &max) == 2) ? 0 : -EINVAL;
 else
  rc = kstrtoul(val, 10, &max);

 if (min < 2 || min >= max || max > get_num_physpages())
  rc = -EINVAL;
 if (rc)
  return rc;

 sfb_set_limits(min, max);
 pr_info("The sampling buffer limits have changed to: "
  "min=%lu max=%lu (diag=x%lu)\n",
  CPUM_SF_MIN_SDB, CPUM_SF_MAX_SDB, CPUM_SF_SDB_DIAG_FACTOR);
 return 0;
}
