
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct i40e_dcbx_config {int dummy; } ;


 scalar_t__ BIT (scalar_t__) ;
 scalar_t__ i40e_dcb_get_num_tc (struct i40e_dcbx_config*) ;

__attribute__((used)) static u8 i40e_dcb_get_enabled_tc(struct i40e_dcbx_config *dcbcfg)
{
 u8 num_tc = i40e_dcb_get_num_tc(dcbcfg);
 u8 enabled_tc = 1;
 u8 i;

 for (i = 0; i < num_tc; i++)
  enabled_tc |= BIT(i);

 return enabled_tc;
}
