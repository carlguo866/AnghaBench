
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t10_alua_tg_pt_gp {int tg_pt_gp_implict_trans_secs; } ;
typedef size_t ssize_t ;


 unsigned long ALUA_MAX_IMPLICT_TRANS_SECS ;
 size_t EINVAL ;
 int pr_err (char*,...) ;
 int strict_strtoul (char const*,int ,unsigned long*) ;

ssize_t core_alua_store_implict_trans_secs(
 struct t10_alua_tg_pt_gp *tg_pt_gp,
 const char *page,
 size_t count)
{
 unsigned long tmp;
 int ret;

 ret = strict_strtoul(page, 0, &tmp);
 if (ret < 0) {
  pr_err("Unable to extract implict_trans_secs\n");
  return -EINVAL;
 }
 if (tmp > ALUA_MAX_IMPLICT_TRANS_SECS) {
  pr_err("Passed implict_trans_secs: %lu, exceeds"
   " ALUA_MAX_IMPLICT_TRANS_SECS: %d\n", tmp,
   ALUA_MAX_IMPLICT_TRANS_SECS);
  return -EINVAL;
 }
 tg_pt_gp->tg_pt_gp_implict_trans_secs = (int)tmp;

 return count;
}
