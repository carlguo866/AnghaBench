
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t10_alua_tg_pt_gp {int tg_pt_gp_nonop_delay_msecs; } ;
typedef size_t ssize_t ;


 unsigned long ALUA_MAX_NONOP_DELAY_MSECS ;
 size_t EINVAL ;
 int pr_err (char*,...) ;
 int strict_strtoul (char const*,int ,unsigned long*) ;

ssize_t core_alua_store_nonop_delay_msecs(
 struct t10_alua_tg_pt_gp *tg_pt_gp,
 const char *page,
 size_t count)
{
 unsigned long tmp;
 int ret;

 ret = strict_strtoul(page, 0, &tmp);
 if (ret < 0) {
  pr_err("Unable to extract nonop_delay_msecs\n");
  return -EINVAL;
 }
 if (tmp > ALUA_MAX_NONOP_DELAY_MSECS) {
  pr_err("Passed nonop_delay_msecs: %lu, exceeds"
   " ALUA_MAX_NONOP_DELAY_MSECS: %d\n", tmp,
   ALUA_MAX_NONOP_DELAY_MSECS);
  return -EINVAL;
 }
 tg_pt_gp->tg_pt_gp_nonop_delay_msecs = (int)tmp;

 return count;
}
