
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_3__ {scalar_t__ (* write ) (struct e1000_hw*,scalar_t__,int,scalar_t__*) ;scalar_t__ (* read ) (struct e1000_hw*,scalar_t__,int,scalar_t__*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ nvm; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 scalar_t__ NVM_CHECKSUM_REG ;
 scalar_t__ NVM_SUM ;
 scalar_t__ stub1 (struct e1000_hw*,scalar_t__,int,scalar_t__*) ;
 scalar_t__ stub2 (struct e1000_hw*,scalar_t__,int,scalar_t__*) ;

s32 e1000_update_nvm_checksum_with_offset(struct e1000_hw *hw, u16 offset)
{
 s32 ret_val;
 u16 checksum = 0;
 u16 i, nvm_data;

 DEBUGFUNC("e1000_update_nvm_checksum_with_offset");

 for (i = offset; i < (NVM_CHECKSUM_REG + offset); i++) {
  ret_val = hw->nvm.ops.read(hw, i, 1, &nvm_data);
  if (ret_val) {
   DEBUGOUT("NVM Read Error while updating checksum.\n");
   goto out;
  }
  checksum += nvm_data;
 }
 checksum = (u16) NVM_SUM - checksum;
 ret_val = hw->nvm.ops.write(hw, (NVM_CHECKSUM_REG + offset), 1,
        &checksum);
 if (ret_val)
  DEBUGOUT("NVM Write Error while updating checksum.\n");

out:
 return ret_val;
}
