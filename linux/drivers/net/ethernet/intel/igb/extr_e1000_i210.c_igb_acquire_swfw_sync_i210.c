
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ E1000_ERR_SWFW_SYNC ;
 int E1000_SW_FW_SYNC ;
 int hw_dbg (char*) ;
 scalar_t__ igb_get_hw_semaphore_i210 (struct e1000_hw*) ;
 int igb_put_hw_semaphore (struct e1000_hw*) ;
 int mdelay (int) ;
 int rd32 (int ) ;
 int wr32 (int ,int) ;

s32 igb_acquire_swfw_sync_i210(struct e1000_hw *hw, u16 mask)
{
 u32 swfw_sync;
 u32 swmask = mask;
 u32 fwmask = mask << 16;
 s32 ret_val = 0;
 s32 i = 0, timeout = 200;

 while (i < timeout) {
  if (igb_get_hw_semaphore_i210(hw)) {
   ret_val = -E1000_ERR_SWFW_SYNC;
   goto out;
  }

  swfw_sync = rd32(E1000_SW_FW_SYNC);
  if (!(swfw_sync & (fwmask | swmask)))
   break;


  igb_put_hw_semaphore(hw);
  mdelay(5);
  i++;
 }

 if (i == timeout) {
  hw_dbg("Driver can't access resource, SW_FW_SYNC timeout.\n");
  ret_val = -E1000_ERR_SWFW_SYNC;
  goto out;
 }

 swfw_sync |= swmask;
 wr32(E1000_SW_FW_SYNC, swfw_sync);

 igb_put_hw_semaphore(hw);
out:
 return ret_val;
}
