
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {scalar_t__ (* read ) (struct ixgbe_hw*,int,int*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ eeprom; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int ERROR_REPORT2 (int ,char*,int) ;
 int IXGBE_ALT_SAN_MAC_ADDR_BLK_PTR ;
 int IXGBE_ALT_SAN_MAC_ADDR_CAPS_ALTWWN ;
 int IXGBE_ALT_SAN_MAC_ADDR_CAPS_OFFSET ;
 int IXGBE_ALT_SAN_MAC_ADDR_WWNN_OFFSET ;
 int IXGBE_ALT_SAN_MAC_ADDR_WWPN_OFFSET ;
 int IXGBE_ERROR_INVALID_STATE ;
 int IXGBE_SUCCESS ;
 scalar_t__ stub1 (struct ixgbe_hw*,int,int*) ;
 scalar_t__ stub2 (struct ixgbe_hw*,int,int*) ;
 scalar_t__ stub3 (struct ixgbe_hw*,int,int*) ;
 scalar_t__ stub4 (struct ixgbe_hw*,int,int*) ;

s32 ixgbe_get_wwn_prefix_generic(struct ixgbe_hw *hw, u16 *wwnn_prefix,
     u16 *wwpn_prefix)
{
 u16 offset, caps;
 u16 alt_san_mac_blk_offset;

 DEBUGFUNC("ixgbe_get_wwn_prefix_generic");


 *wwnn_prefix = 0xFFFF;
 *wwpn_prefix = 0xFFFF;


 offset = IXGBE_ALT_SAN_MAC_ADDR_BLK_PTR;
 if (hw->eeprom.ops.read(hw, offset, &alt_san_mac_blk_offset))
  goto wwn_prefix_err;

 if ((alt_san_mac_blk_offset == 0) ||
     (alt_san_mac_blk_offset == 0xFFFF))
  goto wwn_prefix_out;


 offset = alt_san_mac_blk_offset + IXGBE_ALT_SAN_MAC_ADDR_CAPS_OFFSET;
 if (hw->eeprom.ops.read(hw, offset, &caps))
  goto wwn_prefix_err;
 if (!(caps & IXGBE_ALT_SAN_MAC_ADDR_CAPS_ALTWWN))
  goto wwn_prefix_out;


 offset = alt_san_mac_blk_offset + IXGBE_ALT_SAN_MAC_ADDR_WWNN_OFFSET;
 if (hw->eeprom.ops.read(hw, offset, wwnn_prefix)) {
  ERROR_REPORT2(IXGBE_ERROR_INVALID_STATE,
         "eeprom read at offset %d failed", offset);
 }

 offset = alt_san_mac_blk_offset + IXGBE_ALT_SAN_MAC_ADDR_WWPN_OFFSET;
 if (hw->eeprom.ops.read(hw, offset, wwpn_prefix))
  goto wwn_prefix_err;

wwn_prefix_out:
 return IXGBE_SUCCESS;

wwn_prefix_err:
 ERROR_REPORT2(IXGBE_ERROR_INVALID_STATE,
        "eeprom read at offset %d failed", offset);
 return IXGBE_SUCCESS;
}
