
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ksz_hw {scalar_t__ io; } ;


 scalar_t__ KS884X_EEPROM_CTRL_OFFSET ;
 int readw (scalar_t__) ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static inline void drop_gpio(struct ksz_hw *hw, u8 gpio)
{
 u16 data;

 data = readw(hw->io + KS884X_EEPROM_CTRL_OFFSET);
 data &= ~gpio;
 writew(data, hw->io + KS884X_EEPROM_CTRL_OFFSET);
}
