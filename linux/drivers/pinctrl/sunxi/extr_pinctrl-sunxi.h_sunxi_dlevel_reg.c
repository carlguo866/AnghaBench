
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;


 int BANK_MEM_SIZE ;
 int DLEVEL_PINS_PER_REG ;
 scalar_t__ DLEVEL_REGS_OFFSET ;
 int PINS_PER_BANK ;
 int round_down (int,int) ;

__attribute__((used)) static inline u32 sunxi_dlevel_reg(u16 pin)
{
 u8 bank = pin / PINS_PER_BANK;
 u32 offset = bank * BANK_MEM_SIZE;
 offset += DLEVEL_REGS_OFFSET;
 offset += pin % PINS_PER_BANK / DLEVEL_PINS_PER_REG * 0x04;
 return round_down(offset, 4);
}
