
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct i40e_nvm_access {scalar_t__ data_size; int offset; int config; } ;
struct TYPE_2__ {int asq_last_status; } ;
struct i40e_hw {TYPE_1__ aq; int nvm_wb_desc; } ;
struct i40e_asq_cmd_details {int * wb_desc; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;
typedef int cmd_details ;


 int I40E_DEBUG_NVM ;
 int I40E_NVM_LCB ;
 int I40E_SUCCESS ;
 int i40e_aq_erase_nvm (struct i40e_hw*,int,int ,int ,int,struct i40e_asq_cmd_details*) ;
 int i40e_aq_rc_to_posix (int,int ) ;
 int i40e_debug (struct i40e_hw*,int ,char*,int,int ,...) ;
 int i40e_nvmupd_get_module (int ) ;
 int i40e_nvmupd_get_transaction (int ) ;
 int memset (struct i40e_asq_cmd_details*,int ,int) ;

__attribute__((used)) static enum i40e_status_code i40e_nvmupd_nvm_erase(struct i40e_hw *hw,
         struct i40e_nvm_access *cmd,
         int *perrno)
{
 enum i40e_status_code status = I40E_SUCCESS;
 struct i40e_asq_cmd_details cmd_details;
 u8 module, transaction;
 bool last;

 transaction = i40e_nvmupd_get_transaction(cmd->config);
 module = i40e_nvmupd_get_module(cmd->config);
 last = (transaction & I40E_NVM_LCB);

 memset(&cmd_details, 0, sizeof(cmd_details));
 cmd_details.wb_desc = &hw->nvm_wb_desc;

 status = i40e_aq_erase_nvm(hw, module, cmd->offset, (u16)cmd->data_size,
       last, &cmd_details);
 if (status) {
  i40e_debug(hw, I40E_DEBUG_NVM,
      "i40e_nvmupd_nvm_erase mod 0x%x  off 0x%x len 0x%x\n",
      module, cmd->offset, cmd->data_size);
  i40e_debug(hw, I40E_DEBUG_NVM,
      "i40e_nvmupd_nvm_erase status %d aq %d\n",
      status, hw->aq.asq_last_status);
  *perrno = i40e_aq_rc_to_posix(status, hw->aq.asq_last_status);
 }

 return status;
}
