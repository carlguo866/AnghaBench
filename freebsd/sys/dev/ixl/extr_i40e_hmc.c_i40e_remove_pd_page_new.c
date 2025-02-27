
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct i40e_hw {int dummy; } ;
struct TYPE_5__ {int pd_page_addr; } ;
struct TYPE_6__ {TYPE_2__ pd_table; } ;
struct i40e_hmc_sd_entry {TYPE_3__ u; } ;
struct TYPE_4__ {struct i40e_hmc_sd_entry* sd_entry; } ;
struct i40e_hmc_info {TYPE_1__ sd_table; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int I40E_CLEAR_PF_SD_ENTRY (struct i40e_hw*,size_t,int ) ;
 int I40E_NOT_SUPPORTED ;
 int I40E_SD_TYPE_PAGED ;
 int i40e_free_dma_mem (struct i40e_hw*,int *) ;

enum i40e_status_code i40e_remove_pd_page_new(struct i40e_hw *hw,
           struct i40e_hmc_info *hmc_info,
           u32 idx, bool is_pf)
{
 struct i40e_hmc_sd_entry *sd_entry;

 if (!is_pf)
  return I40E_NOT_SUPPORTED;

 sd_entry = &hmc_info->sd_table.sd_entry[idx];
 I40E_CLEAR_PF_SD_ENTRY(hw, idx, I40E_SD_TYPE_PAGED);

 return i40e_free_dma_mem(hw, &(sd_entry->u.pd_table.pd_page_addr));
}
