
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct atl1_hw {scalar_t__ hw_addr; int * perm_mac_addr; } ;


 int ETH_ALEN ;
 scalar_t__ REG_MAC_STA_ADDR ;
 int atl1_check_eeprom_exist (struct atl1_hw*) ;
 scalar_t__ atl1_read_eeprom (struct atl1_hw*,int,int*) ;
 scalar_t__ atl1_spi_read (struct atl1_hw*,int,int*) ;
 int ioread16 (scalar_t__) ;
 int ioread32 (scalar_t__) ;
 scalar_t__ is_valid_ether_addr (int *) ;
 int memcpy (int *,int *,int) ;
 scalar_t__ swab16 (scalar_t__) ;
 int swab32 (int) ;

__attribute__((used)) static int atl1_get_permanent_address(struct atl1_hw *hw)
{
 u32 addr[2];
 u32 i, control;
 u16 reg;
 u8 eth_addr[ETH_ALEN];
 bool key_valid;

 if (is_valid_ether_addr(hw->perm_mac_addr))
  return 0;


 addr[0] = addr[1] = 0;

 if (!atl1_check_eeprom_exist(hw)) {
  reg = 0;
  key_valid = 0;

  i = 0;
  while (1) {
   if (atl1_read_eeprom(hw, i + 0x100, &control)) {
    if (key_valid) {
     if (reg == REG_MAC_STA_ADDR)
      addr[0] = control;
     else if (reg == (REG_MAC_STA_ADDR + 4))
      addr[1] = control;
     key_valid = 0;
    } else if ((control & 0xff) == 0x5A) {
     key_valid = 1;
     reg = (u16) (control >> 16);
    } else
     break;
   } else

    break;
   i += 4;
  }

  *(u32 *) &eth_addr[2] = swab32(addr[0]);
  *(u16 *) &eth_addr[0] = swab16(*(u16 *) &addr[1]);
  if (is_valid_ether_addr(eth_addr)) {
   memcpy(hw->perm_mac_addr, eth_addr, ETH_ALEN);
   return 0;
  }
 }


 addr[0] = addr[1] = 0;
 reg = 0;
 key_valid = 0;
 i = 0;
 while (1) {
  if (atl1_spi_read(hw, i + 0x1f000, &control)) {
   if (key_valid) {
    if (reg == REG_MAC_STA_ADDR)
     addr[0] = control;
    else if (reg == (REG_MAC_STA_ADDR + 4))
     addr[1] = control;
    key_valid = 0;
   } else if ((control & 0xff) == 0x5A) {
    key_valid = 1;
    reg = (u16) (control >> 16);
   } else

    break;
  } else

   break;
  i += 4;
 }

 *(u32 *) &eth_addr[2] = swab32(addr[0]);
 *(u16 *) &eth_addr[0] = swab16(*(u16 *) &addr[1]);
 if (is_valid_ether_addr(eth_addr)) {
  memcpy(hw->perm_mac_addr, eth_addr, ETH_ALEN);
  return 0;
 }







 addr[0] = ioread32(hw->hw_addr + REG_MAC_STA_ADDR);
 addr[1] = ioread16(hw->hw_addr + (REG_MAC_STA_ADDR + 4));
 *(u32 *) &eth_addr[2] = swab32(addr[0]);
 *(u16 *) &eth_addr[0] = swab16(*(u16 *) &addr[1]);
 if (is_valid_ether_addr(eth_addr)) {
  memcpy(hw->perm_mac_addr, eth_addr, ETH_ALEN);
  return 0;
 }

 return 1;
}
