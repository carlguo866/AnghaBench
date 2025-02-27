
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;


 int RTL8366S_LED_0_1_FORCE_REG ;
 int RTL8366S_LED_2_3_FORCE_REG ;
 int printf (char*) ;
 scalar_t__ rtl8366_writeRegister (int ,int) ;

int rtl8366s_setLedForceValue(uint32_t group0, uint32_t group1,
                              uint32_t group2, uint32_t group3)
{
    uint16_t regData;

    regData = (group0 & 0x3F) | ((group1 & 0x3F) << 6);
 if (rtl8366_writeRegister(RTL8366S_LED_0_1_FORCE_REG, regData)) {
        printf("rtl8366s_setLedForceValue: failed to set led register!\n");
        return -1;
 }

    regData = (group2 & 0x3F) | ((group3 & 0x3F) << 6);
 if (rtl8366_writeRegister(RTL8366S_LED_2_3_FORCE_REG, regData)) {
        printf("rtl8366s_setLedForceValue: failed to set led register!\n");
        return -1;
 }

 return 0;
}
