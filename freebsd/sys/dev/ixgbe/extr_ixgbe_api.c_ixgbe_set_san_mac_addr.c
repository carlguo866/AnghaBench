
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int set_san_mac_addr; } ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
typedef int s32 ;


 int IXGBE_NOT_IMPLEMENTED ;
 int ixgbe_call_func (struct ixgbe_hw*,int ,struct ixgbe_hw*,int ) ;

s32 ixgbe_set_san_mac_addr(struct ixgbe_hw *hw, u8 *san_mac_addr)
{
 return ixgbe_call_func(hw, hw->mac.ops.set_san_mac_addr,
          (hw, san_mac_addr), IXGBE_NOT_IMPLEMENTED);
}
