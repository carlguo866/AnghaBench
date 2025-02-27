
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_3__ {int (* release ) (struct e1000_hw*) ;int (* acquire ) (struct e1000_hw*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ nvm; } ;
typedef int s32 ;


 int E1000_ERR_SWFW_SYNC ;
 scalar_t__ NVM_CHECKSUM_REG ;
 scalar_t__ NVM_SUM ;
 int hw_dbg (char*) ;
 int igb_read_nvm_eerd (struct e1000_hw*,scalar_t__,int,scalar_t__*) ;
 int igb_update_flash_i210 (struct e1000_hw*) ;
 int igb_write_nvm_srwr (struct e1000_hw*,scalar_t__,int,scalar_t__*) ;
 int stub1 (struct e1000_hw*) ;
 int stub2 (struct e1000_hw*) ;
 int stub3 (struct e1000_hw*) ;
 int stub4 (struct e1000_hw*) ;

__attribute__((used)) static s32 igb_update_nvm_checksum_i210(struct e1000_hw *hw)
{
 s32 ret_val = 0;
 u16 checksum = 0;
 u16 i, nvm_data;





 ret_val = igb_read_nvm_eerd(hw, 0, 1, &nvm_data);
 if (ret_val) {
  hw_dbg("EEPROM read failed\n");
  goto out;
 }

 if (!(hw->nvm.ops.acquire(hw))) {





  for (i = 0; i < NVM_CHECKSUM_REG; i++) {
   ret_val = igb_read_nvm_eerd(hw, i, 1, &nvm_data);
   if (ret_val) {
    hw->nvm.ops.release(hw);
    hw_dbg("NVM Read Error while updating checksum.\n");
    goto out;
   }
   checksum += nvm_data;
  }
  checksum = (u16) NVM_SUM - checksum;
  ret_val = igb_write_nvm_srwr(hw, NVM_CHECKSUM_REG, 1,
      &checksum);
  if (ret_val) {
   hw->nvm.ops.release(hw);
   hw_dbg("NVM Write Error while updating checksum.\n");
   goto out;
  }

  hw->nvm.ops.release(hw);

  ret_val = igb_update_flash_i210(hw);
 } else {
  ret_val = -E1000_ERR_SWFW_SYNC;
 }
out:
 return ret_val;
}
