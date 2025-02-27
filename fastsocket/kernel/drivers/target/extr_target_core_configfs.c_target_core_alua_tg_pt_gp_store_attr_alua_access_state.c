
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t10_alua_tg_pt_gp {int tg_pt_gp_alua_access_type; int tg_pt_gp_valid_id; struct se_device* tg_pt_gp_dev; } ;
struct se_device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int TPGS_IMPLICT_ALUA ;
 int core_alua_do_port_transition (struct t10_alua_tg_pt_gp*,struct se_device*,int *,int *,int,int ) ;
 int pr_err (char*,...) ;
 int strict_strtoul (char const*,int ,unsigned long*) ;

__attribute__((used)) static ssize_t target_core_alua_tg_pt_gp_store_attr_alua_access_state(
 struct t10_alua_tg_pt_gp *tg_pt_gp,
 const char *page,
 size_t count)
{
 struct se_device *dev = tg_pt_gp->tg_pt_gp_dev;
 unsigned long tmp;
 int new_state, ret;

 if (!tg_pt_gp->tg_pt_gp_valid_id) {
  pr_err("Unable to do implict ALUA on non valid"
   " tg_pt_gp ID: %hu\n", tg_pt_gp->tg_pt_gp_valid_id);
  return -EINVAL;
 }

 ret = strict_strtoul(page, 0, &tmp);
 if (ret < 0) {
  pr_err("Unable to extract new ALUA access state from"
    " %s\n", page);
  return -EINVAL;
 }
 new_state = (int)tmp;

 if (!(tg_pt_gp->tg_pt_gp_alua_access_type & TPGS_IMPLICT_ALUA)) {
  pr_err("Unable to process implict configfs ALUA"
   " transition while TPGS_IMPLICT_ALUA is disabled\n");
  return -EINVAL;
 }

 ret = core_alua_do_port_transition(tg_pt_gp, dev,
     ((void*)0), ((void*)0), new_state, 0);
 return (!ret) ? count : -EINVAL;
}
