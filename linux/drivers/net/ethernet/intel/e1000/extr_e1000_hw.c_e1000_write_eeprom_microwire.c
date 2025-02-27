
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct e1000_eeprom_info {scalar_t__ opcode_bits; int address_bits; } ;
struct e1000_hw {struct e1000_eeprom_info eeprom; } ;
typedef int s32 ;


 int E1000_EECD_DO ;
 int E1000_ERR_EEPROM ;
 int E1000_SUCCESS ;
 int EECD ;
 scalar_t__ EEPROM_EWDS_OPCODE_MICROWIRE ;
 scalar_t__ EEPROM_EWEN_OPCODE_MICROWIRE ;
 scalar_t__ EEPROM_WRITE_OPCODE_MICROWIRE ;
 int cond_resched () ;
 int e1000_shift_out_ee_bits (struct e1000_hw*,scalar_t__,scalar_t__) ;
 int e1000_standby_eeprom (struct e1000_hw*) ;
 int e_dbg (char*) ;
 int er32 (int ) ;
 int udelay (int) ;

__attribute__((used)) static s32 e1000_write_eeprom_microwire(struct e1000_hw *hw, u16 offset,
     u16 words, u16 *data)
{
 struct e1000_eeprom_info *eeprom = &hw->eeprom;
 u32 eecd;
 u16 words_written = 0;
 u16 i = 0;







 e1000_shift_out_ee_bits(hw, EEPROM_EWEN_OPCODE_MICROWIRE,
    (u16)(eeprom->opcode_bits + 2));

 e1000_shift_out_ee_bits(hw, 0, (u16)(eeprom->address_bits - 2));


 e1000_standby_eeprom(hw);

 while (words_written < words) {

  e1000_shift_out_ee_bits(hw, EEPROM_WRITE_OPCODE_MICROWIRE,
     eeprom->opcode_bits);

  e1000_shift_out_ee_bits(hw, (u16)(offset + words_written),
     eeprom->address_bits);


  e1000_shift_out_ee_bits(hw, data[words_written], 16);




  e1000_standby_eeprom(hw);






  for (i = 0; i < 200; i++) {
   eecd = er32(EECD);
   if (eecd & E1000_EECD_DO)
    break;
   udelay(50);
  }
  if (i == 200) {
   e_dbg("EEPROM Write did not complete\n");
   return -E1000_ERR_EEPROM;
  }


  e1000_standby_eeprom(hw);
  cond_resched();

  words_written++;
 }







 e1000_shift_out_ee_bits(hw, EEPROM_EWDS_OPCODE_MICROWIRE,
    (u16)(eeprom->opcode_bits + 2));

 e1000_shift_out_ee_bits(hw, 0, (u16)(eeprom->address_bits - 2));

 return E1000_SUCCESS;
}
