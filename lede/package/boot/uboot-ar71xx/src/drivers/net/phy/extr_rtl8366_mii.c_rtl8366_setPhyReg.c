
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;


 int RTL8366S_PHY_ACCESS_CTRL_REG ;
 int RTL8366S_PHY_ADDR_MAX ;
 int RTL8366S_PHY_CTRL_WRITE ;
 int RTL8366S_PHY_NO_MAX ;
 int RTL8366S_PHY_NO_OFFSET ;
 int RTL8366S_PHY_REG_MASK ;
 int printf (char*) ;
 scalar_t__ rtl8366_writeRegister (int,int) ;

__attribute__((used)) static int rtl8366_setPhyReg(uint32_t phyNum, uint32_t reg, uint16_t data)
{
    uint16_t phyAddr;

    if (phyNum > RTL8366S_PHY_NO_MAX) {
  printf("rtl8366s: invalid phy number!\n");
  return -1;
 }

    if (phyNum > RTL8366S_PHY_ADDR_MAX) {
  printf("rtl8366s: invalid phy register number!\n");
  return -1;
 }

 if (rtl8366_writeRegister(RTL8366S_PHY_ACCESS_CTRL_REG,
                           RTL8366S_PHY_CTRL_WRITE))
        return -1;

    phyAddr = 0x8000 | (1 << (phyNum + RTL8366S_PHY_NO_OFFSET))
                     | (reg & RTL8366S_PHY_REG_MASK);
    if (rtl8366_writeRegister(phyAddr, data))
        return -1;

    return 0;
}
