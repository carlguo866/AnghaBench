
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ rar_entry_count; } ;
struct e1000_hw {TYPE_1__ mac; } ;
typedef scalar_t__ s32 ;


 int E1000_ERR_CONFIG ;
 int E1000_RAH_AV ;
 int FWSM ;
 int RAH (int) ;
 int RAL (int) ;
 int SHRAH (int) ;
 int SHRAL (int) ;
 scalar_t__ e1000_acquire_swflag_ich8lan (struct e1000_hw*) ;
 int e1000_release_swflag_ich8lan (struct e1000_hw*) ;
 int e1e_flush () ;
 int e_dbg (char*,int,...) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;

__attribute__((used)) static int e1000_rar_set_pch2lan(struct e1000_hw *hw, u8 *addr, u32 index)
{
 u32 rar_low, rar_high;




 rar_low = ((u32)addr[0] |
     ((u32)addr[1] << 8) |
     ((u32)addr[2] << 16) | ((u32)addr[3] << 24));

 rar_high = ((u32)addr[4] | ((u32)addr[5] << 8));


 if (rar_low || rar_high)
  rar_high |= E1000_RAH_AV;

 if (index == 0) {
  ew32(RAL(index), rar_low);
  e1e_flush();
  ew32(RAH(index), rar_high);
  e1e_flush();
  return 0;
 }




 if (index < (u32)(hw->mac.rar_entry_count)) {
  s32 ret_val;

  ret_val = e1000_acquire_swflag_ich8lan(hw);
  if (ret_val)
   goto out;

  ew32(SHRAL(index - 1), rar_low);
  e1e_flush();
  ew32(SHRAH(index - 1), rar_high);
  e1e_flush();

  e1000_release_swflag_ich8lan(hw);


  if ((er32(SHRAL(index - 1)) == rar_low) &&
      (er32(SHRAH(index - 1)) == rar_high))
   return 0;

  e_dbg("SHRA[%d] might be locked by ME - FWSM=0x%8.8x\n",
        (index - 1), er32(FWSM));
 }

out:
 e_dbg("Failed to write receive address at index %d\n", index);
 return -E1000_ERR_CONFIG;
}
