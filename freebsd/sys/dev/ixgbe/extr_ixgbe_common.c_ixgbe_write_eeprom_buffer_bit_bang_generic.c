
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_3__ {int (* init_params ) (struct ixgbe_hw*) ;} ;
struct TYPE_4__ {scalar_t__ word_size; scalar_t__ word_page_size; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ eeprom; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 scalar_t__ IXGBE_EEPROM_PAGE_SIZE_MAX ;
 scalar_t__ IXGBE_EEPROM_RD_BUFFER_MAX_COUNT ;
 scalar_t__ IXGBE_ERR_EEPROM ;
 scalar_t__ IXGBE_ERR_INVALID_ARGUMENT ;
 scalar_t__ IXGBE_SUCCESS ;
 int ixgbe_detect_eeprom_page_size_generic (struct ixgbe_hw*,scalar_t__) ;
 scalar_t__ ixgbe_write_eeprom_buffer_bit_bang (struct ixgbe_hw*,scalar_t__,scalar_t__,scalar_t__*) ;
 int stub1 (struct ixgbe_hw*) ;

s32 ixgbe_write_eeprom_buffer_bit_bang_generic(struct ixgbe_hw *hw, u16 offset,
            u16 words, u16 *data)
{
 s32 status = IXGBE_SUCCESS;
 u16 i, count;

 DEBUGFUNC("ixgbe_write_eeprom_buffer_bit_bang_generic");

 hw->eeprom.ops.init_params(hw);

 if (words == 0) {
  status = IXGBE_ERR_INVALID_ARGUMENT;
  goto out;
 }

 if (offset + words > hw->eeprom.word_size) {
  status = IXGBE_ERR_EEPROM;
  goto out;
 }





 if ((hw->eeprom.word_page_size == 0) &&
     (words > IXGBE_EEPROM_PAGE_SIZE_MAX))
  ixgbe_detect_eeprom_page_size_generic(hw, offset);






 for (i = 0; i < words; i += IXGBE_EEPROM_RD_BUFFER_MAX_COUNT) {
  count = (words - i) / IXGBE_EEPROM_RD_BUFFER_MAX_COUNT > 0 ?
   IXGBE_EEPROM_RD_BUFFER_MAX_COUNT : (words - i);
  status = ixgbe_write_eeprom_buffer_bit_bang(hw, offset + i,
           count, &data[i]);

  if (status != IXGBE_SUCCESS)
   break;
 }

out:
 return status;
}
