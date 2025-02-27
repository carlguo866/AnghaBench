
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct rt2x00_dev {int dummy; } ;


 int BBP152_RX_DEFAULT_ANT ;
 int EEPROM_NIC_CONF1 ;
 int EEPROM_NIC_CONF1_ANT_DIVERSITY ;
 int GPIO_CTRL ;
 int GPIO_CTRL_DIR3 ;
 int GPIO_CTRL_DIR6 ;
 int GPIO_CTRL_VAL3 ;
 int GPIO_CTRL_VAL6 ;
 int REV_RT5370G ;
 int REV_RT5390R ;
 int RT5390 ;
 int RT5392 ;
 int WARN_ON (int) ;
 int rt2800_bbp4_mac_if_ctrl (struct rt2x00_dev*) ;
 int rt2800_bbp_read (struct rt2x00_dev*,int) ;
 int rt2800_bbp_write (struct rt2x00_dev*,int,int) ;
 int rt2800_disable_unused_dac_adc (struct rt2x00_dev*) ;
 int rt2800_eeprom_read (struct rt2x00_dev*,int ) ;
 int rt2800_init_freq_calibration (struct rt2x00_dev*) ;
 int rt2800_register_read (struct rt2x00_dev*,int ) ;
 int rt2800_register_write (struct rt2x00_dev*,int ,int ) ;
 int rt2x00_get_field16 (int ,int ) ;
 scalar_t__ rt2x00_has_cap_bt_coexist (struct rt2x00_dev*) ;
 scalar_t__ rt2x00_rt (struct rt2x00_dev*,int ) ;
 scalar_t__ rt2x00_rt_rev_gte (struct rt2x00_dev*,int ,int ) ;
 int rt2x00_set_field32 (int *,int ,int) ;
 int rt2x00_set_field8 (int*,int ,int) ;

__attribute__((used)) static void rt2800_init_bbp_53xx(struct rt2x00_dev *rt2x00dev)
{
 int ant, div_mode;
 u16 eeprom;
 u8 value;

 rt2800_bbp4_mac_if_ctrl(rt2x00dev);

 rt2800_bbp_write(rt2x00dev, 31, 0x08);

 rt2800_bbp_write(rt2x00dev, 65, 0x2c);
 rt2800_bbp_write(rt2x00dev, 66, 0x38);

 rt2800_bbp_write(rt2x00dev, 68, 0x0b);

 rt2800_bbp_write(rt2x00dev, 69, 0x12);
 rt2800_bbp_write(rt2x00dev, 73, 0x13);
 rt2800_bbp_write(rt2x00dev, 75, 0x46);
 rt2800_bbp_write(rt2x00dev, 76, 0x28);

 rt2800_bbp_write(rt2x00dev, 77, 0x59);

 rt2800_bbp_write(rt2x00dev, 70, 0x0a);

 rt2800_bbp_write(rt2x00dev, 79, 0x13);
 rt2800_bbp_write(rt2x00dev, 80, 0x05);
 rt2800_bbp_write(rt2x00dev, 81, 0x33);

 rt2800_bbp_write(rt2x00dev, 82, 0x62);

 rt2800_bbp_write(rt2x00dev, 83, 0x7a);

 rt2800_bbp_write(rt2x00dev, 84, 0x9a);

 rt2800_bbp_write(rt2x00dev, 86, 0x38);

 if (rt2x00_rt(rt2x00dev, RT5392))
  rt2800_bbp_write(rt2x00dev, 88, 0x90);

 rt2800_bbp_write(rt2x00dev, 91, 0x04);

 rt2800_bbp_write(rt2x00dev, 92, 0x02);

 if (rt2x00_rt(rt2x00dev, RT5392)) {
  rt2800_bbp_write(rt2x00dev, 95, 0x9a);
  rt2800_bbp_write(rt2x00dev, 98, 0x12);
 }

 rt2800_bbp_write(rt2x00dev, 103, 0xc0);

 rt2800_bbp_write(rt2x00dev, 104, 0x92);

 rt2800_bbp_write(rt2x00dev, 105, 0x3c);

 if (rt2x00_rt(rt2x00dev, RT5390))
  rt2800_bbp_write(rt2x00dev, 106, 0x03);
 else if (rt2x00_rt(rt2x00dev, RT5392))
  rt2800_bbp_write(rt2x00dev, 106, 0x12);
 else
  WARN_ON(1);

 rt2800_bbp_write(rt2x00dev, 128, 0x12);

 if (rt2x00_rt(rt2x00dev, RT5392)) {
  rt2800_bbp_write(rt2x00dev, 134, 0xd0);
  rt2800_bbp_write(rt2x00dev, 135, 0xf6);
 }

 rt2800_disable_unused_dac_adc(rt2x00dev);

 eeprom = rt2800_eeprom_read(rt2x00dev, EEPROM_NIC_CONF1);
 div_mode = rt2x00_get_field16(eeprom,
          EEPROM_NIC_CONF1_ANT_DIVERSITY);
 ant = (div_mode == 3) ? 1 : 0;


 if (rt2x00_has_cap_bt_coexist(rt2x00dev)) {
  u32 reg;

  reg = rt2800_register_read(rt2x00dev, GPIO_CTRL);
  rt2x00_set_field32(&reg, GPIO_CTRL_DIR3, 0);
  rt2x00_set_field32(&reg, GPIO_CTRL_DIR6, 0);
  rt2x00_set_field32(&reg, GPIO_CTRL_VAL3, 0);
  rt2x00_set_field32(&reg, GPIO_CTRL_VAL6, 0);
  if (ant == 0)
   rt2x00_set_field32(&reg, GPIO_CTRL_VAL3, 1);
  else if (ant == 1)
   rt2x00_set_field32(&reg, GPIO_CTRL_VAL6, 1);
  rt2800_register_write(rt2x00dev, GPIO_CTRL, reg);
 }


 if (rt2x00_rt_rev_gte(rt2x00dev, RT5390, REV_RT5390R) ||
     rt2x00_rt_rev_gte(rt2x00dev, RT5390, REV_RT5370G)) {
  rt2800_bbp_write(rt2x00dev, 150, 0);
  rt2800_bbp_write(rt2x00dev, 151, 0);
  rt2800_bbp_write(rt2x00dev, 154, 0);
 }

 value = rt2800_bbp_read(rt2x00dev, 152);
 if (ant == 0)
  rt2x00_set_field8(&value, BBP152_RX_DEFAULT_ANT, 1);
 else
  rt2x00_set_field8(&value, BBP152_RX_DEFAULT_ANT, 0);
 rt2800_bbp_write(rt2x00dev, 152, value);

 rt2800_init_freq_calibration(rt2x00dev);
}
