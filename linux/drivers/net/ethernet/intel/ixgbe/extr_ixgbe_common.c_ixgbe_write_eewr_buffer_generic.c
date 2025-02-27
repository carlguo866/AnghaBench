
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct TYPE_3__ {int (* init_params ) (struct ixgbe_hw*) ;} ;
struct TYPE_4__ {scalar_t__ word_size; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ eeprom; } ;
typedef scalar_t__ s32 ;


 scalar_t__ IXGBE_EEPROM_RW_ADDR_SHIFT ;
 scalar_t__ IXGBE_EEPROM_RW_REG_DATA ;
 scalar_t__ IXGBE_EEPROM_RW_REG_START ;
 int IXGBE_EEWR ;
 scalar_t__ IXGBE_ERR_EEPROM ;
 scalar_t__ IXGBE_ERR_INVALID_ARGUMENT ;
 int IXGBE_NVM_POLL_WRITE ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,scalar_t__) ;
 int hw_dbg (struct ixgbe_hw*,char*) ;
 scalar_t__ ixgbe_poll_eerd_eewr_done (struct ixgbe_hw*,int ) ;
 int stub1 (struct ixgbe_hw*) ;

s32 ixgbe_write_eewr_buffer_generic(struct ixgbe_hw *hw, u16 offset,
        u16 words, u16 *data)
{
 u32 eewr;
 s32 status;
 u16 i;

 hw->eeprom.ops.init_params(hw);

 if (words == 0)
  return IXGBE_ERR_INVALID_ARGUMENT;

 if (offset >= hw->eeprom.word_size)
  return IXGBE_ERR_EEPROM;

 for (i = 0; i < words; i++) {
  eewr = ((offset + i) << IXGBE_EEPROM_RW_ADDR_SHIFT) |
         (data[i] << IXGBE_EEPROM_RW_REG_DATA) |
         IXGBE_EEPROM_RW_REG_START;

  status = ixgbe_poll_eerd_eewr_done(hw, IXGBE_NVM_POLL_WRITE);
  if (status) {
   hw_dbg(hw, "Eeprom write EEWR timed out\n");
   return status;
  }

  IXGBE_WRITE_REG(hw, IXGBE_EEWR, eewr);

  status = ixgbe_poll_eerd_eewr_done(hw, IXGBE_NVM_POLL_WRITE);
  if (status) {
   hw_dbg(hw, "Eeprom write EEWR timed out\n");
   return status;
  }
 }

 return 0;
}
