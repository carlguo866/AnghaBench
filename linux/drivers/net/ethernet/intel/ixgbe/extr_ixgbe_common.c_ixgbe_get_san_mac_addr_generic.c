
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_9__ {scalar_t__ (* read ) (struct ixgbe_hw*,int,int*) ;} ;
struct TYPE_10__ {TYPE_4__ ops; } ;
struct TYPE_8__ {scalar_t__ func; } ;
struct TYPE_6__ {int (* set_lan_id ) (struct ixgbe_hw*) ;} ;
struct TYPE_7__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_5__ eeprom; TYPE_3__ bus; TYPE_2__ mac; } ;
typedef scalar_t__ s32 ;


 scalar_t__ IXGBE_SAN_MAC_ADDR_PORT0_OFFSET ;
 scalar_t__ IXGBE_SAN_MAC_ADDR_PORT1_OFFSET ;
 int hw_err (struct ixgbe_hw*,char*,int) ;
 scalar_t__ ixgbe_get_san_mac_addr_offset (struct ixgbe_hw*,int*) ;
 int stub1 (struct ixgbe_hw*) ;
 scalar_t__ stub2 (struct ixgbe_hw*,int,int*) ;

s32 ixgbe_get_san_mac_addr_generic(struct ixgbe_hw *hw, u8 *san_mac_addr)
{
 u16 san_mac_data, san_mac_offset;
 u8 i;
 s32 ret_val;





 ret_val = ixgbe_get_san_mac_addr_offset(hw, &san_mac_offset);
 if (ret_val || san_mac_offset == 0 || san_mac_offset == 0xFFFF)

  goto san_mac_addr_clr;


 hw->mac.ops.set_lan_id(hw);

 (hw->bus.func) ? (san_mac_offset += IXGBE_SAN_MAC_ADDR_PORT1_OFFSET) :
    (san_mac_offset += IXGBE_SAN_MAC_ADDR_PORT0_OFFSET);
 for (i = 0; i < 3; i++) {
  ret_val = hw->eeprom.ops.read(hw, san_mac_offset,
           &san_mac_data);
  if (ret_val) {
   hw_err(hw, "eeprom read at offset %d failed\n",
          san_mac_offset);
   goto san_mac_addr_clr;
  }
  san_mac_addr[i * 2] = (u8)(san_mac_data);
  san_mac_addr[i * 2 + 1] = (u8)(san_mac_data >> 8);
  san_mac_offset++;
 }
 return 0;

san_mac_addr_clr:



 for (i = 0; i < 6; i++)
  san_mac_addr[i] = 0xFF;
 return ret_val;
}
