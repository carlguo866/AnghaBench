
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {int bypass_rd_eep; } ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
typedef int s32 ;


 int IXGBE_NOT_IMPLEMENTED ;
 int ixgbe_call_func (struct ixgbe_hw*,int ,struct ixgbe_hw*,int ) ;

s32 ixgbe_bypass_rd_eep(struct ixgbe_hw *hw, u32 addr, u8 *value)
{
 return ixgbe_call_func(hw, hw->mac.ops.bypass_rd_eep,
          (hw, addr, value), IXGBE_NOT_IMPLEMENTED);
}
