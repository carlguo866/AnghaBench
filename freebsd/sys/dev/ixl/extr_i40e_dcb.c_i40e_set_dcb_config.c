
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i40e_virt_mem {scalar_t__ va; } ;
struct i40e_dcbx_config {scalar_t__ app_mode; } ;
struct i40e_hw {struct i40e_dcbx_config local_dcbx_config; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 scalar_t__ I40E_DCBX_APPS_NON_WILLING ;
 int I40E_LLDPDU_SIZE ;
 int I40E_SUCCESS ;
 int SET_LOCAL_MIB_AC_TYPE_LOCAL_MIB ;
 int SET_LOCAL_MIB_AC_TYPE_NON_WILLING_APPS ;
 int SET_LOCAL_MIB_AC_TYPE_NON_WILLING_APPS_SHIFT ;
 int i40e_allocate_virt_mem (struct i40e_hw*,struct i40e_virt_mem*,int ) ;
 int i40e_aq_set_lldp_mib (struct i40e_hw*,int,void*,int ,int *) ;
 int i40e_dcb_config_to_lldp (int*,int *,struct i40e_dcbx_config*) ;
 int i40e_free_virt_mem (struct i40e_hw*,struct i40e_virt_mem*) ;

enum i40e_status_code i40e_set_dcb_config(struct i40e_hw *hw)
{
 enum i40e_status_code ret = I40E_SUCCESS;
 struct i40e_dcbx_config *dcbcfg;
 struct i40e_virt_mem mem;
 u8 mib_type, *lldpmib;
 u16 miblen;


 dcbcfg = &hw->local_dcbx_config;

 ret = i40e_allocate_virt_mem(hw, &mem, I40E_LLDPDU_SIZE);
 if (ret)
  return ret;

 mib_type = SET_LOCAL_MIB_AC_TYPE_LOCAL_MIB;
 if (dcbcfg->app_mode == I40E_DCBX_APPS_NON_WILLING) {
  mib_type |= SET_LOCAL_MIB_AC_TYPE_NON_WILLING_APPS <<
       SET_LOCAL_MIB_AC_TYPE_NON_WILLING_APPS_SHIFT;
 }
 lldpmib = (u8 *)mem.va;
 ret = i40e_dcb_config_to_lldp(lldpmib, &miblen, dcbcfg);
 ret = i40e_aq_set_lldp_mib(hw, mib_type, (void *)lldpmib, miblen, ((void*)0));

 i40e_free_virt_mem(hw, &mem);
 return ret;
}
