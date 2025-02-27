
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * sd_entry; scalar_t__ sd_cnt; int addr; } ;
struct TYPE_4__ {int * hmc_obj; int hmc_obj_virt_mem; TYPE_1__ sd_table; } ;
struct i40e_hw {TYPE_2__ hmc; } ;
struct i40e_hmc_lan_delete_obj_info {int count; scalar_t__ start_idx; int rsrc_type; TYPE_2__* hmc_info; } ;
typedef int i40e_status ;


 int I40E_HMC_LAN_FULL ;
 int i40e_delete_lan_hmc_object (struct i40e_hw*,struct i40e_hmc_lan_delete_obj_info*) ;
 int i40e_free_virt_mem (struct i40e_hw*,int *) ;

i40e_status i40e_shutdown_lan_hmc(struct i40e_hw *hw)
{
 struct i40e_hmc_lan_delete_obj_info info;
 i40e_status ret_code;

 info.hmc_info = &hw->hmc;
 info.rsrc_type = I40E_HMC_LAN_FULL;
 info.start_idx = 0;
 info.count = 1;


 ret_code = i40e_delete_lan_hmc_object(hw, &info);


 i40e_free_virt_mem(hw, &hw->hmc.sd_table.addr);
 hw->hmc.sd_table.sd_cnt = 0;
 hw->hmc.sd_table.sd_entry = ((void*)0);


 i40e_free_virt_mem(hw, &hw->hmc.hmc_obj_virt_mem);
 hw->hmc.hmc_obj = ((void*)0);

 return ret_code;
}
