
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct ecore_llh_info {struct ecore_llh_filter_info** pp_filters; } ;
struct ecore_llh_filter_info {int dummy; } ;
struct ecore_dev {struct ecore_llh_info* p_llh_info; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int ECORE_SUCCESS ;
 int NIG_REG_LLH_FUNC_FILTER_EN_SIZE ;
 int OSAL_MEM_ZERO (struct ecore_llh_filter_info*,int) ;
 int ecore_llh_shadow_sanity (struct ecore_dev*,size_t,int ,char*) ;

__attribute__((used)) static enum _ecore_status_t
ecore_llh_shadow_remove_all_filters(struct ecore_dev *p_dev, u8 ppfid)
{
 struct ecore_llh_info *p_llh_info = p_dev->p_llh_info;
 struct ecore_llh_filter_info *p_filters;
 enum _ecore_status_t rc;

 rc = ecore_llh_shadow_sanity(p_dev, ppfid, 0, "remove_all");
 if (rc != ECORE_SUCCESS)
  return rc;

 p_filters = p_llh_info->pp_filters[ppfid];
 OSAL_MEM_ZERO(p_filters,
        NIG_REG_LLH_FUNC_FILTER_EN_SIZE * sizeof(*p_filters));

 return ECORE_SUCCESS;
}
