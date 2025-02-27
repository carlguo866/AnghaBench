
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int i; } ;
struct switch_val {int port_vlan; TYPE_1__ value; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int dummy; } ;
struct rtl8366_smi {int dummy; } ;


 int EINVAL ;
 int RTL8366S_LED_BLINKRATE_REG ;
 int RTL8366S_LED_CTRL_REG ;
 int RTL8366S_NUM_PORTS ;
 int RTL8366S_PORT_NUM_CPU ;
 int RTL8366S_PORT_UNKNOWN ;
 int rtl8366_smi_rmwr (struct rtl8366_smi*,int,int,int) ;
 struct rtl8366_smi* sw_to_rtl8366_smi (struct switch_dev*) ;

__attribute__((used)) static int rtl8366s_sw_set_port_led(struct switch_dev *dev,
        const struct switch_attr *attr,
        struct switch_val *val)
{
 struct rtl8366_smi *smi = sw_to_rtl8366_smi(dev);
 u32 data;
 u32 mask;
 u32 reg;

 if (val->port_vlan >= RTL8366S_NUM_PORTS ||
     (1 << val->port_vlan) == RTL8366S_PORT_UNKNOWN)
  return -EINVAL;

 if (val->port_vlan == RTL8366S_PORT_NUM_CPU) {
  reg = RTL8366S_LED_BLINKRATE_REG;
  mask = 0xF << 4;
  data = val->value.i << 4;
 } else {
  reg = RTL8366S_LED_CTRL_REG;
  mask = 0xF << (val->port_vlan * 4),
  data = val->value.i << (val->port_vlan * 4);
 }

 return rtl8366_smi_rmwr(smi, reg, mask, data);
}
