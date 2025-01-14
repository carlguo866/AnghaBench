
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u16 ;
struct rtl8366_smi {int dummy; } ;


 int REG_RMW (struct rtl8366_smi*,int ,unsigned int,unsigned int) ;
 unsigned int RTL8367_LED_CONFIG_DATA_M ;
 unsigned int RTL8367_LED_CONFIG_DATA_S ;
 int RTL8367_LED_CONFIG_REG ;
 unsigned int RTL8367_LED_CONFIG_SEL ;

__attribute__((used)) static int rtl8367_led_group_set_mode(struct rtl8366_smi *smi,
          unsigned int mode)
{
 u16 mask;
 u16 set;
 int err;

 mode &= RTL8367_LED_CONFIG_DATA_M;

 mask = (RTL8367_LED_CONFIG_DATA_M << RTL8367_LED_CONFIG_DATA_S) |
  RTL8367_LED_CONFIG_SEL;
 set = (mode << RTL8367_LED_CONFIG_DATA_S) | RTL8367_LED_CONFIG_SEL;

 REG_RMW(smi, RTL8367_LED_CONFIG_REG, mask, set);

 return 0;
}
